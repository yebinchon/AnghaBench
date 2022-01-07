; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x.c_adxl34x_autosleep_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x.c_adxl34x_autosleep_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adxl34x = type { i32, %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@PCTL_AUTO_SLEEP = common dso_local global i32 0, align 4
@PCTL_LINK = common dso_local global i32 0, align 4
@POWER_CTL = common dso_local global i32 0, align 4
@PCTL_MEASURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @adxl34x_autosleep_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxl34x_autosleep_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adxl34x*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.adxl34x* @dev_get_drvdata(%struct.device* %13)
  store %struct.adxl34x* %14, %struct.adxl34x** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtouint(i8* %15, i32 10, i32* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %77

21:                                               ; preds = %4
  %22 = load %struct.adxl34x*, %struct.adxl34x** %10, align 8
  %23 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load i32, i32* @PCTL_AUTO_SLEEP, align 4
  %29 = load i32, i32* @PCTL_LINK, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.adxl34x*, %struct.adxl34x** %10, align 8
  %32 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %30
  store i32 %35, i32* %33, align 4
  br label %46

36:                                               ; preds = %21
  %37 = load i32, i32* @PCTL_AUTO_SLEEP, align 4
  %38 = load i32, i32* @PCTL_LINK, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load %struct.adxl34x*, %struct.adxl34x** %10, align 8
  %42 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %40
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %36, %27
  %47 = load %struct.adxl34x*, %struct.adxl34x** %10, align 8
  %48 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %71, label %51

51:                                               ; preds = %46
  %52 = load %struct.adxl34x*, %struct.adxl34x** %10, align 8
  %53 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %51
  %57 = load %struct.adxl34x*, %struct.adxl34x** %10, align 8
  %58 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.adxl34x*, %struct.adxl34x** %10, align 8
  %63 = load i32, i32* @POWER_CTL, align 4
  %64 = load %struct.adxl34x*, %struct.adxl34x** %10, align 8
  %65 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PCTL_MEASURE, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @AC_WRITE(%struct.adxl34x* %62, i32 %63, i32 %69)
  br label %71

71:                                               ; preds = %61, %56, %51, %46
  %72 = load %struct.adxl34x*, %struct.adxl34x** %10, align 8
  %73 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i64, i64* %9, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %71, %19
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.adxl34x* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @AC_WRITE(%struct.adxl34x*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
