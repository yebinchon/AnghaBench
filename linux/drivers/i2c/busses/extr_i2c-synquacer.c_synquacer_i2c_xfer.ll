; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-synquacer.c_synquacer_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-synquacer.c_synquacer_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.synquacer_i2c = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"calculated timeout %d ms\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Retrying transmission (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @synquacer_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synquacer_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.synquacer_i2c*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %12 = call %struct.synquacer_i2c* @i2c_get_adapdata(%struct.i2c_adapter* %11)
  store %struct.synquacer_i2c* %12, %struct.synquacer_i2c** %8, align 8
  %13 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %8, align 8
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @calc_timeout_ms(%struct.synquacer_i2c* %13, %struct.i2c_msg* %14, i32 %15)
  %17 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %8, align 8
  %18 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %8, align 8
  %20 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %8, align 8
  %23 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %51, %3
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %29 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sle i32 %27, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %26
  %33 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %8, align 8
  %34 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @synquacer_i2c_doxfer(%struct.synquacer_i2c* %33, %struct.i2c_msg* %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %57

43:                                               ; preds = %32
  %44 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %8, align 8
  %45 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @dev_dbg(i32 %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %8, align 8
  %50 = call i32 @synquacer_i2c_hw_reset(%struct.synquacer_i2c* %49)
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %26

54:                                               ; preds = %26
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %41
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.synquacer_i2c* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @calc_timeout_ms(%struct.synquacer_i2c*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @synquacer_i2c_doxfer(%struct.synquacer_i2c*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @synquacer_i2c_hw_reset(%struct.synquacer_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
