; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_venc.c_venc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_venc.c_venc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.venc_device = type { i32, i32, i32, %struct.platform_device*, i32*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@venc_soc_devices = common dso_local global i32 0, align 4
@venc_config_pal_trm = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vdda\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"can't get VDDA_DAC regulator\0A\00", align 1
@venc_component_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @venc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.venc_device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.venc_device* @kzalloc(i32 40, i32 %7)
  store %struct.venc_device* %8, %struct.venc_device** %4, align 8
  %9 = load %struct.venc_device*, %struct.venc_device** %4, align 8
  %10 = icmp ne %struct.venc_device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %117

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = load %struct.venc_device*, %struct.venc_device** %4, align 8
  %17 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %16, i32 0, i32 3
  store %struct.platform_device* %15, %struct.platform_device** %17, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.venc_device*, %struct.venc_device** %4, align 8
  %20 = call i32 @platform_set_drvdata(%struct.platform_device* %18, %struct.venc_device* %19)
  %21 = load i32, i32* @venc_soc_devices, align 4
  %22 = call i64 @soc_device_match(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load %struct.venc_device*, %struct.venc_device** %4, align 8
  %26 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  br label %27

27:                                               ; preds = %24, %14
  %28 = load %struct.venc_device*, %struct.venc_device** %4, align 8
  %29 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %28, i32 0, i32 5
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.venc_device*, %struct.venc_device** %4, align 8
  %32 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %31, i32 0, i32 4
  store i32* @venc_config_pal_trm, i32** %32, align 8
  %33 = load %struct.venc_device*, %struct.venc_device** %4, align 8
  %34 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %33, i32 0, i32 3
  %35 = load %struct.platform_device*, %struct.platform_device** %34, align 8
  %36 = load i32, i32* @IORESOURCE_MEM, align 4
  %37 = call %struct.resource* @platform_get_resource(%struct.platform_device* %35, i32 %36, i32 0)
  store %struct.resource* %37, %struct.resource** %5, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load %struct.resource*, %struct.resource** %5, align 8
  %41 = call i32 @devm_ioremap_resource(i32* %39, %struct.resource* %40)
  %42 = load %struct.venc_device*, %struct.venc_device** %4, align 8
  %43 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.venc_device*, %struct.venc_device** %4, align 8
  %45 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @IS_ERR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %27
  %50 = load %struct.venc_device*, %struct.venc_device** %4, align 8
  %51 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %6, align 4
  br label %113

54:                                               ; preds = %27
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @devm_regulator_get(i32* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.venc_device*, %struct.venc_device** %4, align 8
  %59 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.venc_device*, %struct.venc_device** %4, align 8
  %61 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @IS_ERR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %54
  %66 = load %struct.venc_device*, %struct.venc_device** %4, align 8
  %67 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @PTR_ERR(i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @EPROBE_DEFER, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = call i32 @DSSERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %65
  br label %113

77:                                               ; preds = %54
  %78 = load %struct.venc_device*, %struct.venc_device** %4, align 8
  %79 = call i32 @venc_get_clocks(%struct.venc_device* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %113

83:                                               ; preds = %77
  %84 = load %struct.venc_device*, %struct.venc_device** %4, align 8
  %85 = call i32 @venc_probe_of(%struct.venc_device* %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %113

89:                                               ; preds = %83
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 @pm_runtime_enable(i32* %91)
  %93 = load %struct.venc_device*, %struct.venc_device** %4, align 8
  %94 = call i32 @venc_init_output(%struct.venc_device* %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %109

98:                                               ; preds = %89
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 @component_add(i32* %100, i32* @venc_component_ops)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %106

105:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %117

106:                                              ; preds = %104
  %107 = load %struct.venc_device*, %struct.venc_device** %4, align 8
  %108 = call i32 @venc_uninit_output(%struct.venc_device* %107)
  br label %109

109:                                              ; preds = %106, %97
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = call i32 @pm_runtime_disable(i32* %111)
  br label %113

113:                                              ; preds = %109, %88, %82, %76, %49
  %114 = load %struct.venc_device*, %struct.venc_device** %4, align 8
  %115 = call i32 @kfree(%struct.venc_device* %114)
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %113, %105, %11
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.venc_device* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.venc_device*) #1

declare dso_local i64 @soc_device_match(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @venc_get_clocks(%struct.venc_device*) #1

declare dso_local i32 @venc_probe_of(%struct.venc_device*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @venc_init_output(%struct.venc_device*) #1

declare dso_local i32 @component_add(i32*, i32*) #1

declare dso_local i32 @venc_uninit_output(%struct.venc_device*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @kfree(%struct.venc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
