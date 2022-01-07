; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_sprd_hwspinlock.c_sprd_hwspinlock_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_sprd_hwspinlock.c_sprd_hwspinlock_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.sprd_hwspinlock_dev = type { i64, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { %struct.hwspinlock* }
%struct.hwspinlock = type { i64 }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@SPRD_HWLOCKS_NUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"get hwspinlock clock failed!\0A\00", align 1
@HWSPINLOCK_USER_BITS = common dso_local global i32 0, align 4
@HWSPINLOCK_RECCTRL = common dso_local global i64 0, align 8
@sprd_hwspinlock_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sprd_hwspinlock_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_hwspinlock_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sprd_hwspinlock_dev*, align 8
  %5 = alloca %struct.hwspinlock*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %131

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @SPRD_HWLOCKS_NUM, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = add i64 24, %22
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.sprd_hwspinlock_dev* @devm_kzalloc(%struct.TYPE_9__* %19, i32 %24, i32 %25)
  store %struct.sprd_hwspinlock_dev* %26, %struct.sprd_hwspinlock_dev** %4, align 8
  %27 = load %struct.sprd_hwspinlock_dev*, %struct.sprd_hwspinlock_dev** %4, align 8
  %28 = icmp ne %struct.sprd_hwspinlock_dev* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %17
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %131

32:                                               ; preds = %17
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = call %struct.resource* @platform_get_resource(%struct.platform_device* %33, i32 %34, i32 0)
  store %struct.resource* %35, %struct.resource** %6, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.resource*, %struct.resource** %6, align 8
  %39 = call i64 @devm_ioremap_resource(%struct.TYPE_9__* %37, %struct.resource* %38)
  %40 = load %struct.sprd_hwspinlock_dev*, %struct.sprd_hwspinlock_dev** %4, align 8
  %41 = getelementptr inbounds %struct.sprd_hwspinlock_dev, %struct.sprd_hwspinlock_dev* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load %struct.sprd_hwspinlock_dev*, %struct.sprd_hwspinlock_dev** %4, align 8
  %43 = getelementptr inbounds %struct.sprd_hwspinlock_dev, %struct.sprd_hwspinlock_dev* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @IS_ERR(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %32
  %48 = load %struct.sprd_hwspinlock_dev*, %struct.sprd_hwspinlock_dev** %4, align 8
  %49 = getelementptr inbounds %struct.sprd_hwspinlock_dev, %struct.sprd_hwspinlock_dev* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @PTR_ERR(i64 %50)
  store i32 %51, i32* %2, align 4
  br label %131

52:                                               ; preds = %32
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i64 @devm_clk_get(%struct.TYPE_9__* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.sprd_hwspinlock_dev*, %struct.sprd_hwspinlock_dev** %4, align 8
  %57 = getelementptr inbounds %struct.sprd_hwspinlock_dev, %struct.sprd_hwspinlock_dev* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.sprd_hwspinlock_dev*, %struct.sprd_hwspinlock_dev** %4, align 8
  %59 = getelementptr inbounds %struct.sprd_hwspinlock_dev, %struct.sprd_hwspinlock_dev* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @IS_ERR(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %52
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 @dev_err(%struct.TYPE_9__* %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.sprd_hwspinlock_dev*, %struct.sprd_hwspinlock_dev** %4, align 8
  %68 = getelementptr inbounds %struct.sprd_hwspinlock_dev, %struct.sprd_hwspinlock_dev* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @PTR_ERR(i64 %69)
  store i32 %70, i32* %2, align 4
  br label %131

71:                                               ; preds = %52
  %72 = load %struct.sprd_hwspinlock_dev*, %struct.sprd_hwspinlock_dev** %4, align 8
  %73 = getelementptr inbounds %struct.sprd_hwspinlock_dev, %struct.sprd_hwspinlock_dev* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @clk_prepare_enable(i64 %74)
  %76 = load i32, i32* @HWSPINLOCK_USER_BITS, align 4
  %77 = load %struct.sprd_hwspinlock_dev*, %struct.sprd_hwspinlock_dev** %4, align 8
  %78 = getelementptr inbounds %struct.sprd_hwspinlock_dev, %struct.sprd_hwspinlock_dev* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @HWSPINLOCK_RECCTRL, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 %76, i64 %81)
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %103, %71
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @SPRD_HWLOCKS_NUM, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %83
  %88 = load %struct.sprd_hwspinlock_dev*, %struct.sprd_hwspinlock_dev** %4, align 8
  %89 = getelementptr inbounds %struct.sprd_hwspinlock_dev, %struct.sprd_hwspinlock_dev* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load %struct.hwspinlock*, %struct.hwspinlock** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.hwspinlock, %struct.hwspinlock* %91, i64 %93
  store %struct.hwspinlock* %94, %struct.hwspinlock** %5, align 8
  %95 = load %struct.sprd_hwspinlock_dev*, %struct.sprd_hwspinlock_dev** %4, align 8
  %96 = getelementptr inbounds %struct.sprd_hwspinlock_dev, %struct.sprd_hwspinlock_dev* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i64 @HWSPINLOCK_TOKEN(i32 %98)
  %100 = add nsw i64 %97, %99
  %101 = load %struct.hwspinlock*, %struct.hwspinlock** %5, align 8
  %102 = getelementptr inbounds %struct.hwspinlock, %struct.hwspinlock* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %87
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %83

106:                                              ; preds = %83
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = load %struct.sprd_hwspinlock_dev*, %struct.sprd_hwspinlock_dev** %4, align 8
  %109 = call i32 @platform_set_drvdata(%struct.platform_device* %107, %struct.sprd_hwspinlock_dev* %108)
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = call i32 @pm_runtime_enable(%struct.TYPE_9__* %111)
  %113 = load %struct.sprd_hwspinlock_dev*, %struct.sprd_hwspinlock_dev** %4, align 8
  %114 = getelementptr inbounds %struct.sprd_hwspinlock_dev, %struct.sprd_hwspinlock_dev* %113, i32 0, i32 1
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load i32, i32* @SPRD_HWLOCKS_NUM, align 4
  %118 = call i32 @hwspin_lock_register(%struct.TYPE_10__* %114, %struct.TYPE_9__* %116, i32* @sprd_hwspinlock_ops, i32 0, i32 %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %106
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = call i32 @pm_runtime_disable(%struct.TYPE_9__* %123)
  %125 = load %struct.sprd_hwspinlock_dev*, %struct.sprd_hwspinlock_dev** %4, align 8
  %126 = getelementptr inbounds %struct.sprd_hwspinlock_dev, %struct.sprd_hwspinlock_dev* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @clk_disable_unprepare(i64 %127)
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %2, align 4
  br label %131

130:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %121, %63, %47, %29, %14
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.sprd_hwspinlock_dev* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.TYPE_9__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @devm_clk_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @HWSPINLOCK_TOKEN(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sprd_hwspinlock_dev*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_9__*) #1

declare dso_local i32 @hwspin_lock_register(%struct.TYPE_10__*, %struct.TYPE_9__*, i32*, i32, i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_9__*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
