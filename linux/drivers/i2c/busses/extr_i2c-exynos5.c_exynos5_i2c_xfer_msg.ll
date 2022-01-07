; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-exynos5.c_exynos5_i2c_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-exynos5.c_exynos5_i2c_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos5_i2c = type { i32, i32, i32, i64, i64, %struct.i2c_msg* }
%struct.i2c_msg = type { i32 }

@EXYNOS5_I2C_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s timeout\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos5_i2c*, %struct.i2c_msg*, i32)* @exynos5_i2c_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos5_i2c_xfer_msg(%struct.exynos5_i2c* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.exynos5_i2c*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.exynos5_i2c* %0, %struct.exynos5_i2c** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %10 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %11 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %10, i32 0, i32 5
  store %struct.i2c_msg* %9, %struct.i2c_msg** %11, align 8
  %12 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %13 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %15 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %17 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %16, i32 0, i32 2
  %18 = call i32 @reinit_completion(i32* %17)
  %19 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @exynos5_i2c_message_start(%struct.exynos5_i2c* %19, i32 %20)
  %22 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %23 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %22, i32 0, i32 2
  %24 = load i32, i32* @EXYNOS5_I2C_TIMEOUT, align 4
  %25 = call i64 @wait_for_completion_timeout(i32* %23, i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @ETIMEDOUT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %35

31:                                               ; preds = %3
  %32 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %33 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %43 = call i32 @exynos5_i2c_wait_bus_idle(%struct.exynos5_i2c* %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %41, %38, %35
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %44
  %48 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %49 = call i32 @exynos5_i2c_reset(%struct.exynos5_i2c* %48)
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @ETIMEDOUT, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %47
  %55 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %56 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @I2C_M_RD, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %66 = call i32 @dev_warn(i32 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %54, %47
  br label %68

68:                                               ; preds = %67, %44
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @exynos5_i2c_message_start(%struct.exynos5_i2c*, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @exynos5_i2c_wait_bus_idle(%struct.exynos5_i2c*) #1

declare dso_local i32 @exynos5_i2c_reset(%struct.exynos5_i2c*) #1

declare dso_local i32 @dev_warn(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
