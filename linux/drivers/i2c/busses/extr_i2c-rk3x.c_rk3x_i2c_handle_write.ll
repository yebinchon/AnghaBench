; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_handle_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_handle_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk3x_i2c = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@REG_INT_MBTF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unexpected irq in WRITE: 0x%x\0A\00", align 1
@REG_IPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk3x_i2c*, i32)* @rk3x_i2c_handle_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3x_i2c_handle_write(%struct.rk3x_i2c* %0, i32 %1) #0 {
  %3 = alloca %struct.rk3x_i2c*, align 8
  %4 = alloca i32, align 4
  store %struct.rk3x_i2c* %0, %struct.rk3x_i2c** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @REG_INT_MBTF, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  %13 = call i32 @rk3x_i2c_stop(%struct.rk3x_i2c* %10, i32 %12)
  %14 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %15 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %20 = call i32 @rk3x_i2c_clean_ipd(%struct.rk3x_i2c* %19)
  br label %44

21:                                               ; preds = %2
  %22 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %23 = load i32, i32* @REG_INT_MBTF, align 4
  %24 = load i32, i32* @REG_IPD, align 4
  %25 = call i32 @i2c_writel(%struct.rk3x_i2c* %22, i32 %23, i32 %24)
  %26 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %27 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %30 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %28, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %21
  %36 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %37 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %38 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @rk3x_i2c_stop(%struct.rk3x_i2c* %36, i32 %39)
  br label %44

41:                                               ; preds = %21
  %42 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %43 = call i32 @rk3x_i2c_fill_transmit_buf(%struct.rk3x_i2c* %42)
  br label %44

44:                                               ; preds = %9, %41, %35
  ret void
}

declare dso_local i32 @rk3x_i2c_stop(%struct.rk3x_i2c*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @rk3x_i2c_clean_ipd(%struct.rk3x_i2c*) #1

declare dso_local i32 @i2c_writel(%struct.rk3x_i2c*, i32, i32) #1

declare dso_local i32 @rk3x_i2c_fill_transmit_buf(%struct.rk3x_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
