; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_lcdc_encoder.c_mdp4_lcdc_encoder_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_lcdc_encoder.c_mdp4_lcdc_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_device = type { i32 }
%struct.device_node = type { i32 }
%struct.mdp4_lcdc_encoder = type { %struct.regulator**, %struct.regulator*, %struct.drm_encoder, %struct.device_node* }
%struct.regulator = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mdp4_lcdc_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_LVDS = common dso_local global i32 0, align 4
@mdp4_lcdc_encoder_helper_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to get lvds_clk\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"lvds-vccs-3p3v\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to get lvds-vccs-3p3v: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"lvds-pll-vdda\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to get lvds-pll-vdda: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"lvds-vdda\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to get lvds-vdda: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_encoder* @mdp4_lcdc_encoder_init(%struct.drm_device* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.mdp4_lcdc_encoder*, align 8
  %8 = alloca %struct.regulator*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store %struct.drm_encoder* null, %struct.drm_encoder** %6, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mdp4_lcdc_encoder* @kzalloc(i32 32, i32 %10)
  store %struct.mdp4_lcdc_encoder* %11, %struct.mdp4_lcdc_encoder** %7, align 8
  %12 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %7, align 8
  %13 = icmp ne %struct.mdp4_lcdc_encoder* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  br label %114

17:                                               ; preds = %2
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %7, align 8
  %20 = getelementptr inbounds %struct.mdp4_lcdc_encoder, %struct.mdp4_lcdc_encoder* %19, i32 0, i32 3
  store %struct.device_node* %18, %struct.device_node** %20, align 8
  %21 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %7, align 8
  %22 = getelementptr inbounds %struct.mdp4_lcdc_encoder, %struct.mdp4_lcdc_encoder* %21, i32 0, i32 2
  store %struct.drm_encoder* %22, %struct.drm_encoder** %6, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %25 = load i32, i32* @DRM_MODE_ENCODER_LVDS, align 4
  %26 = call i32 @drm_encoder_init(%struct.drm_device* %23, %struct.drm_encoder* %24, i32* @mdp4_lcdc_encoder_funcs, i32 %25, i32* null)
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %28 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %27, i32* @mdp4_lcdc_encoder_helper_funcs)
  %29 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %30 = call %struct.regulator* @mpd4_lvds_pll_init(%struct.drm_device* %29)
  %31 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %7, align 8
  %32 = getelementptr inbounds %struct.mdp4_lcdc_encoder, %struct.mdp4_lcdc_encoder* %31, i32 0, i32 1
  store %struct.regulator* %30, %struct.regulator** %32, align 8
  %33 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %7, align 8
  %34 = getelementptr inbounds %struct.mdp4_lcdc_encoder, %struct.mdp4_lcdc_encoder* %33, i32 0, i32 1
  %35 = load %struct.regulator*, %struct.regulator** %34, align 8
  %36 = call i64 @IS_ERR(%struct.regulator* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %17
  %39 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %7, align 8
  %44 = getelementptr inbounds %struct.mdp4_lcdc_encoder, %struct.mdp4_lcdc_encoder* %43, i32 0, i32 1
  %45 = load %struct.regulator*, %struct.regulator** %44, align 8
  %46 = call i32 @PTR_ERR(%struct.regulator* %45)
  store i32 %46, i32* %9, align 4
  br label %114

47:                                               ; preds = %17
  %48 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %49 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.regulator* @devm_regulator_get(i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store %struct.regulator* %51, %struct.regulator** %8, align 8
  %52 = load %struct.regulator*, %struct.regulator** %8, align 8
  %53 = call i64 @IS_ERR(%struct.regulator* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load %struct.regulator*, %struct.regulator** %8, align 8
  %57 = call i32 @PTR_ERR(%struct.regulator* %56)
  store i32 %57, i32* %9, align 4
  %58 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %59 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %114

63:                                               ; preds = %47
  %64 = load %struct.regulator*, %struct.regulator** %8, align 8
  %65 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %7, align 8
  %66 = getelementptr inbounds %struct.mdp4_lcdc_encoder, %struct.mdp4_lcdc_encoder* %65, i32 0, i32 0
  %67 = load %struct.regulator**, %struct.regulator*** %66, align 8
  %68 = getelementptr inbounds %struct.regulator*, %struct.regulator** %67, i64 0
  store %struct.regulator* %64, %struct.regulator** %68, align 8
  %69 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %70 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.regulator* @devm_regulator_get(i32 %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store %struct.regulator* %72, %struct.regulator** %8, align 8
  %73 = load %struct.regulator*, %struct.regulator** %8, align 8
  %74 = call i64 @IS_ERR(%struct.regulator* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %63
  %77 = load %struct.regulator*, %struct.regulator** %8, align 8
  %78 = call i32 @PTR_ERR(%struct.regulator* %77)
  store i32 %78, i32* %9, align 4
  %79 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %80 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  br label %114

84:                                               ; preds = %63
  %85 = load %struct.regulator*, %struct.regulator** %8, align 8
  %86 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %7, align 8
  %87 = getelementptr inbounds %struct.mdp4_lcdc_encoder, %struct.mdp4_lcdc_encoder* %86, i32 0, i32 0
  %88 = load %struct.regulator**, %struct.regulator*** %87, align 8
  %89 = getelementptr inbounds %struct.regulator*, %struct.regulator** %88, i64 1
  store %struct.regulator* %85, %struct.regulator** %89, align 8
  %90 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %91 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.regulator* @devm_regulator_get(i32 %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store %struct.regulator* %93, %struct.regulator** %8, align 8
  %94 = load %struct.regulator*, %struct.regulator** %8, align 8
  %95 = call i64 @IS_ERR(%struct.regulator* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %84
  %98 = load %struct.regulator*, %struct.regulator** %8, align 8
  %99 = call i32 @PTR_ERR(%struct.regulator* %98)
  store i32 %99, i32* %9, align 4
  %100 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %101 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %103)
  br label %114

105:                                              ; preds = %84
  %106 = load %struct.regulator*, %struct.regulator** %8, align 8
  %107 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %7, align 8
  %108 = getelementptr inbounds %struct.mdp4_lcdc_encoder, %struct.mdp4_lcdc_encoder* %107, i32 0, i32 0
  %109 = load %struct.regulator**, %struct.regulator*** %108, align 8
  %110 = getelementptr inbounds %struct.regulator*, %struct.regulator** %109, i64 2
  store %struct.regulator* %106, %struct.regulator** %110, align 8
  %111 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %7, align 8
  %112 = call i32 @bs_init(%struct.mdp4_lcdc_encoder* %111)
  %113 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  store %struct.drm_encoder* %113, %struct.drm_encoder** %3, align 8
  br label %123

114:                                              ; preds = %97, %76, %55, %38, %14
  %115 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %116 = icmp ne %struct.drm_encoder* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %119 = call i32 @mdp4_lcdc_encoder_destroy(%struct.drm_encoder* %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32, i32* %9, align 4
  %122 = call %struct.drm_encoder* @ERR_PTR(i32 %121)
  store %struct.drm_encoder* %122, %struct.drm_encoder** %3, align 8
  br label %123

123:                                              ; preds = %120, %105
  %124 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  ret %struct.drm_encoder* %124
}

declare dso_local %struct.mdp4_lcdc_encoder* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local %struct.regulator* @mpd4_lvds_pll_init(%struct.drm_device*) #1

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.regulator*) #1

declare dso_local %struct.regulator* @devm_regulator_get(i32, i8*) #1

declare dso_local i32 @bs_init(%struct.mdp4_lcdc_encoder*) #1

declare dso_local i32 @mdp4_lcdc_encoder_destroy(%struct.drm_encoder*) #1

declare dso_local %struct.drm_encoder* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
