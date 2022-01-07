; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_mipi.c_tegra_mipi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_mipi.c_tegra_mipi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.of_device_id = type { i32 }
%struct.tegra_mipi = type { i32, i32, i32, %struct.TYPE_5__*, i32 }
%struct.resource = type { i32 }

@tegra_mipi_of_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_mipi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_mipi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.tegra_mipi*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @tegra_mipi_of_match, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.of_device_id* @of_match_node(i32 %8, i32 %12)
  store %struct.of_device_id* %13, %struct.of_device_id** %4, align 8
  %14 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %15 = icmp ne %struct.of_device_id* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %93

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.tegra_mipi* @devm_kzalloc(%struct.TYPE_5__* %21, i32 32, i32 %22)
  store %struct.tegra_mipi* %23, %struct.tegra_mipi** %5, align 8
  %24 = load %struct.tegra_mipi*, %struct.tegra_mipi** %5, align 8
  %25 = icmp ne %struct.tegra_mipi* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %93

29:                                               ; preds = %19
  %30 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %31 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tegra_mipi*, %struct.tegra_mipi** %5, align 8
  %34 = getelementptr inbounds %struct.tegra_mipi, %struct.tegra_mipi* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.tegra_mipi*, %struct.tegra_mipi** %5, align 8
  %38 = getelementptr inbounds %struct.tegra_mipi, %struct.tegra_mipi* %37, i32 0, i32 3
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load i32, i32* @IORESOURCE_MEM, align 4
  %41 = call %struct.resource* @platform_get_resource(%struct.platform_device* %39, i32 %40, i32 0)
  store %struct.resource* %41, %struct.resource** %6, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.resource*, %struct.resource** %6, align 8
  %45 = call i32 @devm_ioremap_resource(%struct.TYPE_5__* %43, %struct.resource* %44)
  %46 = load %struct.tegra_mipi*, %struct.tegra_mipi** %5, align 8
  %47 = getelementptr inbounds %struct.tegra_mipi, %struct.tegra_mipi* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.tegra_mipi*, %struct.tegra_mipi** %5, align 8
  %49 = getelementptr inbounds %struct.tegra_mipi, %struct.tegra_mipi* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @IS_ERR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %29
  %54 = load %struct.tegra_mipi*, %struct.tegra_mipi** %5, align 8
  %55 = getelementptr inbounds %struct.tegra_mipi, %struct.tegra_mipi* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @PTR_ERR(i32 %56)
  store i32 %57, i32* %2, align 4
  br label %93

58:                                               ; preds = %29
  %59 = load %struct.tegra_mipi*, %struct.tegra_mipi** %5, align 8
  %60 = getelementptr inbounds %struct.tegra_mipi, %struct.tegra_mipi* %59, i32 0, i32 1
  %61 = call i32 @mutex_init(i32* %60)
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @devm_clk_get(%struct.TYPE_5__* %63, i32* null)
  %65 = load %struct.tegra_mipi*, %struct.tegra_mipi** %5, align 8
  %66 = getelementptr inbounds %struct.tegra_mipi, %struct.tegra_mipi* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.tegra_mipi*, %struct.tegra_mipi** %5, align 8
  %68 = getelementptr inbounds %struct.tegra_mipi, %struct.tegra_mipi* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @IS_ERR(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %58
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 @dev_err(%struct.TYPE_5__* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %76 = load %struct.tegra_mipi*, %struct.tegra_mipi** %5, align 8
  %77 = getelementptr inbounds %struct.tegra_mipi, %struct.tegra_mipi* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %2, align 4
  br label %93

80:                                               ; preds = %58
  %81 = load %struct.tegra_mipi*, %struct.tegra_mipi** %5, align 8
  %82 = getelementptr inbounds %struct.tegra_mipi, %struct.tegra_mipi* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @clk_prepare(i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %2, align 4
  br label %93

89:                                               ; preds = %80
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = load %struct.tegra_mipi*, %struct.tegra_mipi** %5, align 8
  %92 = call i32 @platform_set_drvdata(%struct.platform_device* %90, %struct.tegra_mipi* %91)
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %89, %87, %72, %53, %26, %16
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local %struct.tegra_mipi* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_5__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @clk_prepare(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_mipi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
