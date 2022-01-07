; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c_lspcon_write_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c_lspcon_write_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.intel_dp = type { i32 }
%struct.intel_lspcon = type { i64 }

@HDMI_INFOFRAME_TYPE_AVI = common dso_local global i32 0, align 4
@LSPCON_VENDOR_MCA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Failed to write AVI infoframes\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"AVI infoframes updated successfully\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lspcon_write_infoframe(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.intel_encoder*, align 8
  %7 = alloca %struct.intel_crtc_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_dp*, align 8
  %13 = alloca %struct.intel_lspcon*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %6, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %15 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %14, i32 0, i32 0
  %16 = call %struct.intel_dp* @enc_to_intel_dp(i32* %15)
  store %struct.intel_dp* %16, %struct.intel_dp** %12, align 8
  %17 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %18 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %17, i32 0, i32 0
  %19 = call %struct.intel_lspcon* @enc_to_intel_lspcon(i32* %18)
  store %struct.intel_lspcon* %19, %struct.intel_lspcon** %13, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @HDMI_INFOFRAME_TYPE_AVI, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %49

24:                                               ; preds = %5
  %25 = load %struct.intel_lspcon*, %struct.intel_lspcon** %13, align 8
  %26 = getelementptr inbounds %struct.intel_lspcon, %struct.intel_lspcon* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LSPCON_VENDOR_MCA, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.intel_dp*, %struct.intel_dp** %12, align 8
  %32 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %31, i32 0, i32 0
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @_lspcon_write_avi_infoframe_mca(i32* %32, i8* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  br label %42

36:                                               ; preds = %24
  %37 = load %struct.intel_dp*, %struct.intel_dp** %12, align 8
  %38 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %37, i32 0, i32 0
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @_lspcon_write_avi_infoframe_parade(i32* %38, i8* %39, i32 %40)
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %36, %30
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %49

47:                                               ; preds = %42
  %48 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %45, %23
  ret void
}

declare dso_local %struct.intel_dp* @enc_to_intel_dp(i32*) #1

declare dso_local %struct.intel_lspcon* @enc_to_intel_lspcon(i32*) #1

declare dso_local i32 @_lspcon_write_avi_infoframe_mca(i32*, i8*, i32) #1

declare dso_local i32 @_lspcon_write_avi_infoframe_parade(i32*, i8*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
