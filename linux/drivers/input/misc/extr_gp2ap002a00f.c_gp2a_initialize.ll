; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_gp2ap002a00f.c_gp2a_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_gp2ap002a00f.c_gp2a_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gp2a_data = type { i32 }

@GP2A_ADDR_GAIN = common dso_local global i32 0, align 4
@GP2A_ADDR_HYS = common dso_local global i32 0, align 4
@GP2A_ADDR_CYCLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gp2a_data*)* @gp2a_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp2a_initialize(%struct.gp2a_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gp2a_data*, align 8
  %4 = alloca i32, align 4
  store %struct.gp2a_data* %0, %struct.gp2a_data** %3, align 8
  %5 = load %struct.gp2a_data*, %struct.gp2a_data** %3, align 8
  %6 = getelementptr inbounds %struct.gp2a_data, %struct.gp2a_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @GP2A_ADDR_GAIN, align 4
  %9 = call i32 @i2c_smbus_write_byte_data(i32 %7, i32 %8, i32 8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.gp2a_data*, %struct.gp2a_data** %3, align 8
  %16 = getelementptr inbounds %struct.gp2a_data, %struct.gp2a_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GP2A_ADDR_HYS, align 4
  %19 = call i32 @i2c_smbus_write_byte_data(i32 %17, i32 %18, i32 194)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %38

24:                                               ; preds = %14
  %25 = load %struct.gp2a_data*, %struct.gp2a_data** %3, align 8
  %26 = getelementptr inbounds %struct.gp2a_data, %struct.gp2a_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GP2A_ADDR_CYCLE, align 4
  %29 = call i32 @i2c_smbus_write_byte_data(i32 %27, i32 %28, i32 4)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %38

34:                                               ; preds = %24
  %35 = load %struct.gp2a_data*, %struct.gp2a_data** %3, align 8
  %36 = call i32 @gp2a_disable(%struct.gp2a_data* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %32, %22, %12
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @gp2a_disable(%struct.gp2a_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
