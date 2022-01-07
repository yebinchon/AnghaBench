; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_mdss.c_dpu_mdss_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_mdss.c_dpu_mdss_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.drm_device* }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.dpu_mdss = type { i32*, %struct.TYPE_2__, %struct.dss_module_power, i32 }
%struct.dss_module_power = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mdss\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"mapped mdss address space @%pK\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to get memory resource for mdss\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to parse clocks, ret=%d\0A\00", align 1
@mdss_funcs = common dso_local global i32 0, align 4
@dpu_mdss_irq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpu_mdss_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.msm_drm_private*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.dpu_mdss*, align 8
  %8 = alloca %struct.dss_module_power*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.platform_device* @to_platform_device(i32 %13)
  store %struct.platform_device* %14, %struct.platform_device** %4, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 1
  %17 = load %struct.msm_drm_private*, %struct.msm_drm_private** %16, align 8
  store %struct.msm_drm_private* %17, %struct.msm_drm_private** %5, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.dpu_mdss* @devm_kzalloc(i32 %20, i32 40, i32 %21)
  store %struct.dpu_mdss* %22, %struct.dpu_mdss** %7, align 8
  %23 = load %struct.dpu_mdss*, %struct.dpu_mdss** %7, align 8
  %24 = icmp ne %struct.dpu_mdss* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %150

28:                                               ; preds = %1
  %29 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %30 = call i32* @msm_ioremap(%struct.platform_device* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.dpu_mdss*, %struct.dpu_mdss** %7, align 8
  %32 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.dpu_mdss*, %struct.dpu_mdss** %7, align 8
  %34 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @IS_ERR(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.dpu_mdss*, %struct.dpu_mdss** %7, align 8
  %40 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @PTR_ERR(i32* %41)
  store i32 %42, i32* %2, align 4
  br label %150

43:                                               ; preds = %28
  %44 = load %struct.dpu_mdss*, %struct.dpu_mdss** %7, align 8
  %45 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32* %46)
  %48 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %49 = load i32, i32* @IORESOURCE_MEM, align 4
  %50 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %48, i32 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %50, %struct.resource** %6, align 8
  %51 = load %struct.resource*, %struct.resource** %6, align 8
  %52 = icmp ne %struct.resource* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %43
  %54 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %150

57:                                               ; preds = %43
  %58 = load %struct.resource*, %struct.resource** %6, align 8
  %59 = call i32 @resource_size(%struct.resource* %58)
  %60 = load %struct.dpu_mdss*, %struct.dpu_mdss** %7, align 8
  %61 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %63 = load %struct.dpu_mdss*, %struct.dpu_mdss** %7, align 8
  %64 = call i32 @dpu_mdss_parse_data_bus_icc_path(%struct.drm_device* %62, %struct.dpu_mdss* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %2, align 4
  br label %150

69:                                               ; preds = %57
  %70 = load %struct.dpu_mdss*, %struct.dpu_mdss** %7, align 8
  %71 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %70, i32 0, i32 2
  store %struct.dss_module_power* %71, %struct.dss_module_power** %8, align 8
  %72 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %73 = load %struct.dss_module_power*, %struct.dss_module_power** %8, align 8
  %74 = call i32 @msm_dss_parse_clock(%struct.platform_device* %72, %struct.dss_module_power* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %128

80:                                               ; preds = %69
  %81 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %82 = load %struct.dpu_mdss*, %struct.dpu_mdss** %7, align 8
  %83 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store %struct.drm_device* %81, %struct.drm_device** %84, align 8
  %85 = load %struct.dpu_mdss*, %struct.dpu_mdss** %7, align 8
  %86 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32* @mdss_funcs, i32** %87, align 8
  %88 = load %struct.dpu_mdss*, %struct.dpu_mdss** %7, align 8
  %89 = call i32 @_dpu_mdss_irq_domain_add(%struct.dpu_mdss* %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %80
  br label %120

93:                                               ; preds = %80
  %94 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %95 = call i32 @platform_get_irq(%struct.platform_device* %94, i32 0)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %117

99:                                               ; preds = %93
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @dpu_mdss_irq, align 4
  %102 = load %struct.dpu_mdss*, %struct.dpu_mdss** %7, align 8
  %103 = call i32 @irq_set_chained_handler_and_data(i32 %100, i32 %101, %struct.dpu_mdss* %102)
  %104 = load %struct.dpu_mdss*, %struct.dpu_mdss** %7, align 8
  %105 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %104, i32 0, i32 1
  %106 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %107 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %106, i32 0, i32 0
  store %struct.TYPE_2__* %105, %struct.TYPE_2__** %107, align 8
  %108 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %109 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @pm_runtime_enable(i32 %110)
  %112 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %113 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = call i32 @dpu_mdss_icc_request_bw(%struct.TYPE_2__* %114)
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %2, align 4
  br label %150

117:                                              ; preds = %98
  %118 = load %struct.dpu_mdss*, %struct.dpu_mdss** %7, align 8
  %119 = call i32 @_dpu_mdss_irq_domain_fini(%struct.dpu_mdss* %118)
  br label %120

120:                                              ; preds = %117, %92
  %121 = load %struct.dss_module_power*, %struct.dss_module_power** %8, align 8
  %122 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.dss_module_power*, %struct.dss_module_power** %8, align 8
  %125 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @msm_dss_put_clk(i32 %123, i32 %126)
  br label %128

128:                                              ; preds = %120, %77
  %129 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = load %struct.dss_module_power*, %struct.dss_module_power** %8, align 8
  %132 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @devm_kfree(i32* %130, i32 %133)
  %135 = load %struct.dpu_mdss*, %struct.dpu_mdss** %7, align 8
  %136 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %146

139:                                              ; preds = %128
  %140 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = load %struct.dpu_mdss*, %struct.dpu_mdss** %7, align 8
  %143 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @devm_iounmap(i32* %141, i32* %144)
  br label %146

146:                                              ; preds = %139, %128
  %147 = load %struct.dpu_mdss*, %struct.dpu_mdss** %7, align 8
  %148 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %147, i32 0, i32 0
  store i32* null, i32** %148, align 8
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %146, %99, %67, %53, %38, %25
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.dpu_mdss* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32* @msm_ioremap(%struct.platform_device*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dpu_mdss_parse_data_bus_icc_path(%struct.drm_device*, %struct.dpu_mdss*) #1

declare dso_local i32 @msm_dss_parse_clock(%struct.platform_device*, %struct.dss_module_power*) #1

declare dso_local i32 @DPU_ERROR(i8*, i32) #1

declare dso_local i32 @_dpu_mdss_irq_domain_add(%struct.dpu_mdss*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.dpu_mdss*) #1

declare dso_local i32 @pm_runtime_enable(i32) #1

declare dso_local i32 @dpu_mdss_icc_request_bw(%struct.TYPE_2__*) #1

declare dso_local i32 @_dpu_mdss_irq_domain_fini(%struct.dpu_mdss*) #1

declare dso_local i32 @msm_dss_put_clk(i32, i32) #1

declare dso_local i32 @devm_kfree(i32*, i32) #1

declare dso_local i32 @devm_iounmap(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
