; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_mdss.c_mdp5_mdss_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_mdss.c_mdp5_mdss_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_9__*, %struct.msm_drm_private* }
%struct.TYPE_9__ = type { i32 }
%struct.msm_drm_private = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, %struct.drm_device* }
%struct.platform_device = type { i32 }
%struct.mdp5_mdss = type { i8*, %struct.TYPE_8__, i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"qcom,mdss\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"mdss_phys\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"MDSS\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"vbif_phys\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"VBIF\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"failed to get clocks: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"failed to enable regulator vdd: %d\0A\00", align 1
@mdss_irq = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"mdss_isr\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"failed to init irq: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"failed to init sub-block irqs: %d\0A\00", align 1
@mdss_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdp5_mdss_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.msm_drm_private*, align 8
  %6 = alloca %struct.mdp5_mdss*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = call %struct.platform_device* @to_platform_device(%struct.TYPE_9__* %10)
  store %struct.platform_device* %11, %struct.platform_device** %4, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 1
  %14 = load %struct.msm_drm_private*, %struct.msm_drm_private** %13, align 8
  store %struct.msm_drm_private* %14, %struct.msm_drm_private** %5, align 8
  %15 = call i32 @DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @of_device_is_compatible(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %157

24:                                               ; preds = %1
  %25 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.mdp5_mdss* @devm_kzalloc(%struct.TYPE_9__* %27, i32 40, i32 %28)
  store %struct.mdp5_mdss* %29, %struct.mdp5_mdss** %6, align 8
  %30 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %6, align 8
  %31 = icmp ne %struct.mdp5_mdss* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %155

35:                                               ; preds = %24
  %36 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %37 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %6, align 8
  %38 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store %struct.drm_device* %36, %struct.drm_device** %39, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %41 = call i8* @msm_ioremap(%struct.platform_device* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %6, align 8
  %43 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %6, align 8
  %45 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @IS_ERR(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %35
  %50 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %6, align 8
  %51 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %50, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @PTR_ERR(i8* %52)
  store i32 %53, i32* %7, align 4
  br label %155

54:                                               ; preds = %35
  %55 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %56 = call i8* @msm_ioremap(%struct.platform_device* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %57 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %6, align 8
  %58 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %6, align 8
  %60 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @IS_ERR(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %6, align 8
  %66 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @PTR_ERR(i8* %67)
  store i32 %68, i32* %7, align 4
  br label %155

69:                                               ; preds = %54
  %70 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %6, align 8
  %71 = call i32 @msm_mdss_get_clocks(%struct.mdp5_mdss* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %76 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @DRM_DEV_ERROR(%struct.TYPE_9__* %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %78)
  br label %155

80:                                               ; preds = %69
  %81 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %82 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = call i8* @devm_regulator_get(%struct.TYPE_9__* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %85 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %6, align 8
  %86 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %6, align 8
  %88 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @IS_ERR(i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %80
  %93 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %6, align 8
  %94 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @PTR_ERR(i8* %95)
  store i32 %96, i32* %7, align 4
  br label %155

97:                                               ; preds = %80
  %98 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %6, align 8
  %99 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @regulator_enable(i8* %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %106 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @DRM_DEV_ERROR(%struct.TYPE_9__* %107, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %108)
  br label %155

110:                                              ; preds = %97
  %111 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %112 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %111, i32 0, i32 0
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %115 = call i32 @platform_get_irq(%struct.platform_device* %114, i32 0)
  %116 = load i32, i32* @mdss_irq, align 4
  %117 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %6, align 8
  %118 = call i32 @devm_request_irq(%struct.TYPE_9__* %113, i32 %115, i32 %116, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), %struct.mdp5_mdss* %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %110
  %122 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %123 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %122, i32 0, i32 0
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @DRM_DEV_ERROR(%struct.TYPE_9__* %124, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %125)
  br label %150

127:                                              ; preds = %110
  %128 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %6, align 8
  %129 = call i32 @mdss_irq_domain_init(%struct.mdp5_mdss* %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %134 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %133, i32 0, i32 0
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @DRM_DEV_ERROR(%struct.TYPE_9__* %135, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %136)
  br label %150

138:                                              ; preds = %127
  %139 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %6, align 8
  %140 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  store i32* @mdss_funcs, i32** %141, align 8
  %142 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %6, align 8
  %143 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %142, i32 0, i32 1
  %144 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %145 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %144, i32 0, i32 0
  store %struct.TYPE_8__* %143, %struct.TYPE_8__** %145, align 8
  %146 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %147 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %146, i32 0, i32 0
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = call i32 @pm_runtime_enable(%struct.TYPE_9__* %148)
  store i32 0, i32* %2, align 4
  br label %157

150:                                              ; preds = %132, %121
  %151 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %6, align 8
  %152 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @regulator_disable(i8* %153)
  br label %155

155:                                              ; preds = %150, %104, %92, %74, %64, %49, %32
  %156 = load i32, i32* %7, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %155, %138, %23
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.TYPE_9__*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @of_device_is_compatible(i32, i8*) #1

declare dso_local %struct.mdp5_mdss* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i8* @msm_ioremap(%struct.platform_device*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @msm_mdss_get_clocks(%struct.mdp5_mdss*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i8* @devm_regulator_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @regulator_enable(i8*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_9__*, i32, i32, i32, i8*, %struct.mdp5_mdss*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @mdss_irq_domain_init(%struct.mdp5_mdss*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_9__*) #1

declare dso_local i32 @regulator_disable(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
