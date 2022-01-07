; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_dp_create_fake_mst_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_dp_create_fake_mst_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp_mst_encoder = type { i32, %struct.intel_digital_port*, %struct.intel_encoder }
%struct.intel_encoder = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.intel_digital_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@intel_dp_mst_enc_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DPMST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"DP-MST %c\00", align 1
@INTEL_OUTPUT_DP_MST = common dso_local global i32 0, align 4
@intel_dp_mst_compute_config = common dso_local global i32 0, align 4
@intel_mst_disable_dp = common dso_local global i32 0, align 4
@intel_mst_post_disable_dp = common dso_local global i32 0, align 4
@intel_mst_pre_pll_enable_dp = common dso_local global i32 0, align 4
@intel_mst_post_pll_disable_dp = common dso_local global i32 0, align 4
@intel_mst_pre_enable_dp = common dso_local global i32 0, align 4
@intel_mst_enable_dp = common dso_local global i32 0, align 4
@intel_dp_mst_enc_get_hw_state = common dso_local global i32 0, align 4
@intel_dp_mst_enc_get_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_dp_mst_encoder* (%struct.intel_digital_port*, i32)* @intel_dp_create_fake_mst_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_dp_mst_encoder* @intel_dp_create_fake_mst_encoder(%struct.intel_digital_port* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_dp_mst_encoder*, align 8
  %4 = alloca %struct.intel_digital_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_dp_mst_encoder*, align 8
  %7 = alloca %struct.intel_encoder*, align 8
  %8 = alloca %struct.drm_device*, align 8
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %10 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %8, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.intel_dp_mst_encoder* @kzalloc(i32 80, i32 %14)
  store %struct.intel_dp_mst_encoder* %15, %struct.intel_dp_mst_encoder** %6, align 8
  %16 = load %struct.intel_dp_mst_encoder*, %struct.intel_dp_mst_encoder** %6, align 8
  %17 = icmp ne %struct.intel_dp_mst_encoder* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store %struct.intel_dp_mst_encoder* null, %struct.intel_dp_mst_encoder** %3, align 8
  br label %82

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.intel_dp_mst_encoder*, %struct.intel_dp_mst_encoder** %6, align 8
  %22 = getelementptr inbounds %struct.intel_dp_mst_encoder, %struct.intel_dp_mst_encoder* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.intel_dp_mst_encoder*, %struct.intel_dp_mst_encoder** %6, align 8
  %24 = getelementptr inbounds %struct.intel_dp_mst_encoder, %struct.intel_dp_mst_encoder* %23, i32 0, i32 2
  store %struct.intel_encoder* %24, %struct.intel_encoder** %7, align 8
  %25 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %26 = load %struct.intel_dp_mst_encoder*, %struct.intel_dp_mst_encoder** %6, align 8
  %27 = getelementptr inbounds %struct.intel_dp_mst_encoder, %struct.intel_dp_mst_encoder* %26, i32 0, i32 1
  store %struct.intel_digital_port* %25, %struct.intel_digital_port** %27, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %29 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %30 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %29, i32 0, i32 14
  %31 = load i32, i32* @DRM_MODE_ENCODER_DPMST, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @pipe_name(i32 %32)
  %34 = call i32 @drm_encoder_init(%struct.drm_device* %28, i32* %30, i32* @intel_dp_mst_enc_funcs, i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @INTEL_OUTPUT_DP_MST, align 4
  %36 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %37 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %36, i32 0, i32 13
  store i32 %35, i32* %37, align 8
  %38 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %39 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %43 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %42, i32 0, i32 12
  store i32 %41, i32* %43, align 4
  %44 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %45 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %49 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %48, i32 0, i32 11
  store i32 %47, i32* %49, align 8
  %50 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %51 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %50, i32 0, i32 0
  store i32 7, i32* %51, align 8
  %52 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %53 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %52, i32 0, i32 10
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* @intel_dp_mst_compute_config, align 4
  %55 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %56 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %55, i32 0, i32 9
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @intel_mst_disable_dp, align 4
  %58 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %59 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %58, i32 0, i32 8
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @intel_mst_post_disable_dp, align 4
  %61 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %62 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @intel_mst_pre_pll_enable_dp, align 4
  %64 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %65 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @intel_mst_post_pll_disable_dp, align 4
  %67 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %68 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @intel_mst_pre_enable_dp, align 4
  %70 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %71 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @intel_mst_enable_dp, align 4
  %73 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %74 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @intel_dp_mst_enc_get_hw_state, align 4
  %76 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %77 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @intel_dp_mst_enc_get_config, align 4
  %79 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %80 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.intel_dp_mst_encoder*, %struct.intel_dp_mst_encoder** %6, align 8
  store %struct.intel_dp_mst_encoder* %81, %struct.intel_dp_mst_encoder** %3, align 8
  br label %82

82:                                               ; preds = %19, %18
  %83 = load %struct.intel_dp_mst_encoder*, %struct.intel_dp_mst_encoder** %3, align 8
  ret %struct.intel_dp_mst_encoder* %83
}

declare dso_local %struct.intel_dp_mst_encoder* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @pipe_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
