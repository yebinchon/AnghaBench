; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-digicolor.c_dc_i2c_start_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-digicolor.c_dc_i2c_start_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_i2c = type { i32, %struct.i2c_msg* }
%struct.i2c_msg = type { i32 }

@I2C_M_NOSTART = common dso_local global i32 0, align 4
@STATE_START = common dso_local global i32 0, align 4
@II_CMD_START = common dso_local global i32 0, align 4
@II_CMD_RESTART = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@STATE_READ = common dso_local global i32 0, align 4
@STATE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_i2c*, i32)* @dc_i2c_start_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_i2c_start_msg(%struct.dc_i2c* %0, i32 %1) #0 {
  %3 = alloca %struct.dc_i2c*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_msg*, align 8
  store %struct.dc_i2c* %0, %struct.dc_i2c** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dc_i2c*, %struct.dc_i2c** %3, align 8
  %7 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %6, i32 0, i32 1
  %8 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  store %struct.i2c_msg* %8, %struct.i2c_msg** %5, align 8
  %9 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C_M_NOSTART, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @STATE_START, align 4
  %17 = load %struct.dc_i2c*, %struct.dc_i2c** %3, align 8
  %18 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.dc_i2c*, %struct.dc_i2c** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @II_CMD_START, align 4
  br label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @II_CMD_RESTART, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = call i32 @dc_i2c_cmd(%struct.dc_i2c* %19, i32 %27)
  br label %49

29:                                               ; preds = %2
  %30 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @I2C_M_RD, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32, i32* @STATE_READ, align 4
  %38 = load %struct.dc_i2c*, %struct.dc_i2c** %3, align 8
  %39 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.dc_i2c*, %struct.dc_i2c** %3, align 8
  %41 = call i32 @dc_i2c_next_read(%struct.dc_i2c* %40)
  br label %48

42:                                               ; preds = %29
  %43 = load i32, i32* @STATE_WRITE, align 4
  %44 = load %struct.dc_i2c*, %struct.dc_i2c** %3, align 8
  %45 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.dc_i2c*, %struct.dc_i2c** %3, align 8
  %47 = call i32 @dc_i2c_write_buf(%struct.dc_i2c* %46)
  br label %48

48:                                               ; preds = %42, %36
  br label %49

49:                                               ; preds = %48, %26
  ret void
}

declare dso_local i32 @dc_i2c_cmd(%struct.dc_i2c*, i32) #1

declare dso_local i32 @dc_i2c_next_read(%struct.dc_i2c*) #1

declare dso_local i32 @dc_i2c_write_buf(%struct.dc_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
