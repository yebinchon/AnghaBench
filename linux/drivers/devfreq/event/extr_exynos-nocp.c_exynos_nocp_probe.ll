; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_exynos-nocp.c_exynos_nocp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_exynos-nocp.c_exynos_nocp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.exynos_nocp = type { i32, i32, %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i32, %struct.exynos_nocp*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to parse devicetree for resource\0A\00", align 1
@exynos_nocp_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to add devfreq-event device\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to prepare ppmu clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"exynos-nocp: new NoC Probe device registered: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos_nocp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_nocp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.exynos_nocp*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.exynos_nocp* @devm_kzalloc(%struct.device* %14, i32 40, i32 %15)
  store %struct.exynos_nocp* %16, %struct.exynos_nocp** %6, align 8
  %17 = load %struct.exynos_nocp*, %struct.exynos_nocp** %6, align 8
  %18 = icmp ne %struct.exynos_nocp* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %90

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.exynos_nocp*, %struct.exynos_nocp** %6, align 8
  %26 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %25, i32 0, i32 3
  store %struct.device* %24, %struct.device** %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load %struct.exynos_nocp*, %struct.exynos_nocp** %6, align 8
  %29 = call i32 @exynos_nocp_parse_dt(%struct.platform_device* %27, %struct.exynos_nocp* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %90

37:                                               ; preds = %22
  %38 = load %struct.exynos_nocp*, %struct.exynos_nocp** %6, align 8
  %39 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i32* @exynos_nocp_ops, i32** %40, align 8
  %41 = load %struct.exynos_nocp*, %struct.exynos_nocp** %6, align 8
  %42 = load %struct.exynos_nocp*, %struct.exynos_nocp** %6, align 8
  %43 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store %struct.exynos_nocp* %41, %struct.exynos_nocp** %44, align 8
  %45 = load %struct.device_node*, %struct.device_node** %5, align 8
  %46 = getelementptr inbounds %struct.device_node, %struct.device_node* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.exynos_nocp*, %struct.exynos_nocp** %6, align 8
  %49 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load %struct.exynos_nocp*, %struct.exynos_nocp** %6, align 8
  %54 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %53, i32 0, i32 2
  %55 = call i32 @devm_devfreq_event_add_edev(%struct.device* %52, %struct.TYPE_2__* %54)
  %56 = load %struct.exynos_nocp*, %struct.exynos_nocp** %6, align 8
  %57 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.exynos_nocp*, %struct.exynos_nocp** %6, align 8
  %59 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %37
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.exynos_nocp*, %struct.exynos_nocp** %6, align 8
  %68 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @PTR_ERR(i32 %69)
  store i32 %70, i32* %2, align 4
  br label %90

71:                                               ; preds = %37
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = load %struct.exynos_nocp*, %struct.exynos_nocp** %6, align 8
  %74 = call i32 @platform_set_drvdata(%struct.platform_device* %72, %struct.exynos_nocp* %73)
  %75 = load %struct.exynos_nocp*, %struct.exynos_nocp** %6, align 8
  %76 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @clk_prepare_enable(i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %71
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %90

86:                                               ; preds = %71
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = call i32 @dev_name(%struct.device* %87)
  %89 = call i32 @pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %86, %81, %63, %32, %19
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.exynos_nocp* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @exynos_nocp_parse_dt(%struct.platform_device*, %struct.exynos_nocp*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_devfreq_event_add_edev(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.exynos_nocp*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
