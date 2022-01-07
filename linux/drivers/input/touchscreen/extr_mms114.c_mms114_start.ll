; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mms114.c_mms114_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mms114.c_mms114_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mms114_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Failed to enable avdd: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to enable vdd: %d\0A\00", align 1
@MMS114_POWERON_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mms114_data*)* @mms114_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mms114_start(%struct.mms114_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mms114_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.mms114_data* %0, %struct.mms114_data** %3, align 8
  %6 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %7 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %6, i32 0, i32 2
  %8 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %10 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @regulator_enable(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 1
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %60

21:                                               ; preds = %1
  %22 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %23 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regulator_enable(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %34 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @regulator_disable(i32 %35)
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %60

38:                                               ; preds = %21
  %39 = load i32, i32* @MMS114_POWERON_DELAY, align 4
  %40 = call i32 @msleep(i32 %39)
  %41 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %42 = call i32 @mms114_setup_regs(%struct.mms114_data* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %47 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @regulator_disable(i32 %48)
  %50 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %51 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @regulator_disable(i32 %52)
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %60

55:                                               ; preds = %38
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @enable_irq(i32 %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %55, %45, %28, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mms114_setup_regs(%struct.mms114_data*) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
