; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_sirf_hwspinlock.c_sirf_hwspinlock_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_sirf_hwspinlock.c_sirf_hwspinlock_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.sirf_hwspinlock = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.hwspinlock* }
%struct.hwspinlock = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@bank = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@HW_SPINLOCK_NUMBER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sirf_hwspinlock_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sirf_hwspinlock_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirf_hwspinlock_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sirf_hwspinlock*, align 8
  %5 = alloca %struct.hwspinlock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %95

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.sirf_hwspinlock*, %struct.sirf_hwspinlock** %4, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bank, i32 0, i32 0), align 4
  %21 = load i32, i32* @HW_SPINLOCK_NUMBER, align 4
  %22 = call i32 @struct_size(%struct.sirf_hwspinlock* %19, i32 %20, i32 %21)
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.sirf_hwspinlock* @devm_kzalloc(%struct.TYPE_7__* %18, i32 %22, i32 %23)
  store %struct.sirf_hwspinlock* %24, %struct.sirf_hwspinlock** %4, align 8
  %25 = load %struct.sirf_hwspinlock*, %struct.sirf_hwspinlock** %4, align 8
  %26 = icmp ne %struct.sirf_hwspinlock* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %16
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %95

30:                                               ; preds = %16
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @of_iomap(i32 %34, i32 0)
  %36 = load %struct.sirf_hwspinlock*, %struct.sirf_hwspinlock** %4, align 8
  %37 = getelementptr inbounds %struct.sirf_hwspinlock, %struct.sirf_hwspinlock* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.sirf_hwspinlock*, %struct.sirf_hwspinlock** %4, align 8
  %39 = getelementptr inbounds %struct.sirf_hwspinlock, %struct.sirf_hwspinlock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %30
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %95

45:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %66, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @HW_SPINLOCK_NUMBER, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %46
  %51 = load %struct.sirf_hwspinlock*, %struct.sirf_hwspinlock** %4, align 8
  %52 = getelementptr inbounds %struct.sirf_hwspinlock, %struct.sirf_hwspinlock* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.hwspinlock*, %struct.hwspinlock** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.hwspinlock, %struct.hwspinlock* %54, i64 %56
  store %struct.hwspinlock* %57, %struct.hwspinlock** %5, align 8
  %58 = load %struct.sirf_hwspinlock*, %struct.sirf_hwspinlock** %4, align 8
  %59 = getelementptr inbounds %struct.sirf_hwspinlock, %struct.sirf_hwspinlock* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @HW_SPINLOCK_OFFSET(i32 %61)
  %63 = add nsw i64 %60, %62
  %64 = load %struct.hwspinlock*, %struct.hwspinlock** %5, align 8
  %65 = getelementptr inbounds %struct.hwspinlock, %struct.hwspinlock* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %50
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %46

69:                                               ; preds = %46
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = load %struct.sirf_hwspinlock*, %struct.sirf_hwspinlock** %4, align 8
  %72 = call i32 @platform_set_drvdata(%struct.platform_device* %70, %struct.sirf_hwspinlock* %71)
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 @pm_runtime_enable(%struct.TYPE_7__* %74)
  %76 = load %struct.sirf_hwspinlock*, %struct.sirf_hwspinlock** %4, align 8
  %77 = getelementptr inbounds %struct.sirf_hwspinlock, %struct.sirf_hwspinlock* %76, i32 0, i32 1
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load i32, i32* @HW_SPINLOCK_NUMBER, align 4
  %81 = call i32 @hwspin_lock_register(%struct.TYPE_8__* %77, %struct.TYPE_7__* %79, i32* @sirf_hwspinlock_ops, i32 0, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %69
  br label %86

85:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %95

86:                                               ; preds = %84
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = call i32 @pm_runtime_disable(%struct.TYPE_7__* %88)
  %90 = load %struct.sirf_hwspinlock*, %struct.sirf_hwspinlock** %4, align 8
  %91 = getelementptr inbounds %struct.sirf_hwspinlock, %struct.sirf_hwspinlock* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @iounmap(i64 %92)
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %86, %85, %42, %27, %13
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.sirf_hwspinlock* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.sirf_hwspinlock*, i32, i32) #1

declare dso_local i64 @of_iomap(i32, i32) #1

declare dso_local i64 @HW_SPINLOCK_OFFSET(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sirf_hwspinlock*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_7__*) #1

declare dso_local i32 @hwspin_lock_register(%struct.TYPE_8__*, %struct.TYPE_7__*, i32*, i32, i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_7__*) #1

declare dso_local i32 @iounmap(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
