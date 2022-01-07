; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mcde_dsi = type { %struct.mipi_dsi_host, i64, i64, %struct.device* }
%struct.mipi_dsi_host = type { i32*, %struct.device* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"stericsson,db8500-prcmu\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"no PRCMU regmap\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"no DSI regs\0A\00", align 1
@DSI_ID_REG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"HW revision 0x%08x\0A\00", align 1
@mcde_dsi_host_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to register DSI host: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"registered DSI host\0A\00", align 1
@mcde_dsi_component_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mcde_dsi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcde_dsi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mcde_dsi*, align 8
  %6 = alloca %struct.mipi_dsi_host*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mcde_dsi* @devm_kzalloc(%struct.device* %12, i32 40, i32 %13)
  store %struct.mcde_dsi* %14, %struct.mcde_dsi** %5, align 8
  %15 = load %struct.mcde_dsi*, %struct.mcde_dsi** %5, align 8
  %16 = icmp ne %struct.mcde_dsi* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %97

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.mcde_dsi*, %struct.mcde_dsi** %5, align 8
  %23 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %22, i32 0, i32 3
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.mcde_dsi*, %struct.mcde_dsi** %5, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.mcde_dsi* %25)
  %27 = call i64 @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.mcde_dsi*, %struct.mcde_dsi** %5, align 8
  %29 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  %30 = load %struct.mcde_dsi*, %struct.mcde_dsi** %5, align 8
  %31 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @IS_ERR(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %20
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.mcde_dsi*, %struct.mcde_dsi** %5, align 8
  %39 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @PTR_ERR(i64 %40)
  store i32 %41, i32* %2, align 4
  br label %97

42:                                               ; preds = %20
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load i32, i32* @IORESOURCE_MEM, align 4
  %45 = call %struct.resource* @platform_get_resource(%struct.platform_device* %43, i32 %44, i32 0)
  store %struct.resource* %45, %struct.resource** %7, align 8
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load %struct.resource*, %struct.resource** %7, align 8
  %48 = call i64 @devm_ioremap_resource(%struct.device* %46, %struct.resource* %47)
  %49 = load %struct.mcde_dsi*, %struct.mcde_dsi** %5, align 8
  %50 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.mcde_dsi*, %struct.mcde_dsi** %5, align 8
  %52 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @IS_ERR(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %42
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.mcde_dsi*, %struct.mcde_dsi** %5, align 8
  %60 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @PTR_ERR(i64 %61)
  store i32 %62, i32* %2, align 4
  br label %97

63:                                               ; preds = %42
  %64 = load %struct.mcde_dsi*, %struct.mcde_dsi** %5, align 8
  %65 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DSI_ID_REG, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @readl(i64 %68)
  store i32 %69, i32* %8, align 4
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load %struct.mcde_dsi*, %struct.mcde_dsi** %5, align 8
  %74 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %73, i32 0, i32 0
  store %struct.mipi_dsi_host* %74, %struct.mipi_dsi_host** %6, align 8
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %6, align 8
  %77 = getelementptr inbounds %struct.mipi_dsi_host, %struct.mipi_dsi_host* %76, i32 0, i32 1
  store %struct.device* %75, %struct.device** %77, align 8
  %78 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %6, align 8
  %79 = getelementptr inbounds %struct.mipi_dsi_host, %struct.mipi_dsi_host* %78, i32 0, i32 0
  store i32* @mcde_dsi_host_ops, i32** %79, align 8
  %80 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %6, align 8
  %81 = call i32 @mipi_dsi_host_register(%struct.mipi_dsi_host* %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %63
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %2, align 4
  br label %97

89:                                               ; preds = %63
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = load %struct.mcde_dsi*, %struct.mcde_dsi** %5, align 8
  %94 = call i32 @platform_set_drvdata(%struct.platform_device* %92, %struct.mcde_dsi* %93)
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = call i32 @component_add(%struct.device* %95, i32* @mcde_dsi_component_ops)
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %89, %84, %56, %35, %17
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.mcde_dsi* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mcde_dsi*) #1

declare dso_local i64 @syscon_regmap_lookup_by_compatible(i8*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @mipi_dsi_host_register(%struct.mipi_dsi_host*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
