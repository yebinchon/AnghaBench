; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_legacy_gamma_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_legacy_gamma_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.drm_atomic_state = type { %struct.drm_modeset_acquire_ctx* }
%struct.drm_crtc_state = type { i32, i32, i32, i32, %struct.drm_color_lut* }
%struct.drm_color_lut = type { i8*, i8*, i8* }
%struct.drm_property_blob = type { i32, i32, i32, i32, %struct.drm_color_lut* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_atomic_helper_legacy_gamma_set(%struct.drm_crtc* %0, i8** %1, i8** %2, i8** %3, i32 %4, %struct.drm_modeset_acquire_ctx* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %14 = alloca %struct.drm_device*, align 8
  %15 = alloca %struct.drm_atomic_state*, align 8
  %16 = alloca %struct.drm_crtc_state*, align 8
  %17 = alloca %struct.drm_property_blob*, align 8
  %18 = alloca %struct.drm_color_lut*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.drm_modeset_acquire_ctx* %5, %struct.drm_modeset_acquire_ctx** %13, align 8
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %23 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %22, i32 0, i32 0
  %24 = load %struct.drm_device*, %struct.drm_device** %23, align 8
  store %struct.drm_device* %24, %struct.drm_device** %14, align 8
  store %struct.drm_property_blob* null, %struct.drm_property_blob** %17, align 8
  store i32 0, i32* %20, align 4
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %26 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %25, i32 0, i32 0
  %27 = load %struct.drm_device*, %struct.drm_device** %26, align 8
  %28 = call %struct.drm_atomic_state* @drm_atomic_state_alloc(%struct.drm_device* %27)
  store %struct.drm_atomic_state* %28, %struct.drm_atomic_state** %15, align 8
  %29 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %15, align 8
  %30 = icmp ne %struct.drm_atomic_state* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %6
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %133

34:                                               ; preds = %6
  %35 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 24, %37
  %39 = trunc i64 %38 to i32
  %40 = call %struct.drm_property_blob* @drm_property_create_blob(%struct.drm_device* %35, i32 %39, i32* null)
  store %struct.drm_property_blob* %40, %struct.drm_property_blob** %17, align 8
  %41 = load %struct.drm_property_blob*, %struct.drm_property_blob** %17, align 8
  %42 = call i64 @IS_ERR(%struct.drm_property_blob* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.drm_property_blob*, %struct.drm_property_blob** %17, align 8
  %46 = call i32 @PTR_ERR(%struct.drm_property_blob* %45)
  store i32 %46, i32* %20, align 4
  store %struct.drm_property_blob* null, %struct.drm_property_blob** %17, align 8
  br label %127

47:                                               ; preds = %34
  %48 = load %struct.drm_property_blob*, %struct.drm_property_blob** %17, align 8
  %49 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %48, i32 0, i32 4
  %50 = load %struct.drm_color_lut*, %struct.drm_color_lut** %49, align 8
  store %struct.drm_color_lut* %50, %struct.drm_color_lut** %18, align 8
  store i32 0, i32* %19, align 4
  br label %51

51:                                               ; preds = %86, %47
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %89

55:                                               ; preds = %51
  %56 = load i8**, i8*** %9, align 8
  %57 = load i32, i32* %19, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.drm_color_lut*, %struct.drm_color_lut** %18, align 8
  %62 = load i32, i32* %19, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %61, i64 %63
  %65 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %64, i32 0, i32 2
  store i8* %60, i8** %65, align 8
  %66 = load i8**, i8*** %10, align 8
  %67 = load i32, i32* %19, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.drm_color_lut*, %struct.drm_color_lut** %18, align 8
  %72 = load i32, i32* %19, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %71, i64 %73
  %75 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %74, i32 0, i32 1
  store i8* %70, i8** %75, align 8
  %76 = load i8**, i8*** %11, align 8
  %77 = load i32, i32* %19, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.drm_color_lut*, %struct.drm_color_lut** %18, align 8
  %82 = load i32, i32* %19, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %81, i64 %83
  %85 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %84, i32 0, i32 0
  store i8* %80, i8** %85, align 8
  br label %86

86:                                               ; preds = %55
  %87 = load i32, i32* %19, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %19, align 4
  br label %51

89:                                               ; preds = %51
  %90 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %13, align 8
  %91 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %15, align 8
  %92 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %91, i32 0, i32 0
  store %struct.drm_modeset_acquire_ctx* %90, %struct.drm_modeset_acquire_ctx** %92, align 8
  %93 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %15, align 8
  %94 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %95 = call %struct.drm_property_blob* @drm_atomic_get_crtc_state(%struct.drm_atomic_state* %93, %struct.drm_crtc* %94)
  %96 = bitcast %struct.drm_property_blob* %95 to %struct.drm_crtc_state*
  store %struct.drm_crtc_state* %96, %struct.drm_crtc_state** %16, align 8
  %97 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %16, align 8
  %98 = bitcast %struct.drm_crtc_state* %97 to %struct.drm_property_blob*
  %99 = call i64 @IS_ERR(%struct.drm_property_blob* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %89
  %102 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %16, align 8
  %103 = bitcast %struct.drm_crtc_state* %102 to %struct.drm_property_blob*
  %104 = call i32 @PTR_ERR(%struct.drm_property_blob* %103)
  store i32 %104, i32* %20, align 4
  br label %127

105:                                              ; preds = %89
  %106 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %16, align 8
  %107 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %106, i32 0, i32 3
  %108 = call i32 @drm_property_replace_blob(i32* %107, %struct.drm_property_blob* null)
  store i32 %108, i32* %21, align 4
  %109 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %16, align 8
  %110 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %109, i32 0, i32 2
  %111 = call i32 @drm_property_replace_blob(i32* %110, %struct.drm_property_blob* null)
  %112 = load i32, i32* %21, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %21, align 4
  %114 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %16, align 8
  %115 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %114, i32 0, i32 1
  %116 = load %struct.drm_property_blob*, %struct.drm_property_blob** %17, align 8
  %117 = call i32 @drm_property_replace_blob(i32* %115, %struct.drm_property_blob* %116)
  %118 = load i32, i32* %21, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %21, align 4
  %120 = load i32, i32* %21, align 4
  %121 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %16, align 8
  %122 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %15, align 8
  %126 = call i32 @drm_atomic_commit(%struct.drm_atomic_state* %125)
  store i32 %126, i32* %20, align 4
  br label %127

127:                                              ; preds = %105, %101, %44
  %128 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %15, align 8
  %129 = call i32 @drm_atomic_state_put(%struct.drm_atomic_state* %128)
  %130 = load %struct.drm_property_blob*, %struct.drm_property_blob** %17, align 8
  %131 = call i32 @drm_property_blob_put(%struct.drm_property_blob* %130)
  %132 = load i32, i32* %20, align 4
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %127, %31
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

declare dso_local %struct.drm_atomic_state* @drm_atomic_state_alloc(%struct.drm_device*) #1

declare dso_local %struct.drm_property_blob* @drm_property_create_blob(%struct.drm_device*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.drm_property_blob*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_property_blob*) #1

declare dso_local %struct.drm_property_blob* @drm_atomic_get_crtc_state(%struct.drm_atomic_state*, %struct.drm_crtc*) #1

declare dso_local i32 @drm_property_replace_blob(i32*, %struct.drm_property_blob*) #1

declare dso_local i32 @drm_atomic_commit(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_state_put(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_property_blob_put(%struct.drm_property_blob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
