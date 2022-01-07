; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_crtc_helper.c_drm_helper_connector_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_crtc_helper.c_drm_helper_connector_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i32, %struct.drm_encoder* }
%struct.drm_encoder = type { %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.drm_crtc_helper_funcs* }
%struct.drm_crtc_helper_funcs = type { i32 (%struct.drm_crtc*, i32)* }

@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_helper_connector_dpms(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_crtc_helper_funcs*, align 8
  %11 = alloca %struct.drm_crtc_helper_funcs*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 2
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %13, align 8
  store %struct.drm_encoder* %14, %struct.drm_encoder** %6, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %16 = icmp ne %struct.drm_encoder* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %19 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %18, i32 0, i32 0
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %19, align 8
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi %struct.drm_crtc* [ %20, %17 ], [ null, %21 ]
  store %struct.drm_crtc* %23, %struct.drm_crtc** %7, align 8
  %24 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %26 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @drm_drv_uses_atomic_modeset(i32 %27)
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %32 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %113

36:                                               ; preds = %22
  %37 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %38 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %42 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %44 = icmp ne %struct.drm_encoder* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %47 = call i32 @drm_helper_choose_encoder_dpms(%struct.drm_encoder* %46)
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %45, %36
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %80

52:                                               ; preds = %48
  %53 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %54 = icmp ne %struct.drm_crtc* %53, null
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %57 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %56, i32 0, i32 0
  %58 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %57, align 8
  store %struct.drm_crtc_helper_funcs* %58, %struct.drm_crtc_helper_funcs** %10, align 8
  %59 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %10, align 8
  %60 = getelementptr inbounds %struct.drm_crtc_helper_funcs, %struct.drm_crtc_helper_funcs* %59, i32 0, i32 0
  %61 = load i32 (%struct.drm_crtc*, i32)*, i32 (%struct.drm_crtc*, i32)** %60, align 8
  %62 = icmp ne i32 (%struct.drm_crtc*, i32)* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %55
  %64 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %10, align 8
  %65 = getelementptr inbounds %struct.drm_crtc_helper_funcs, %struct.drm_crtc_helper_funcs* %64, i32 0, i32 0
  %66 = load i32 (%struct.drm_crtc*, i32)*, i32 (%struct.drm_crtc*, i32)** %65, align 8
  %67 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %68 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %69 = call i32 @drm_helper_choose_crtc_dpms(%struct.drm_crtc* %68)
  %70 = call i32 %66(%struct.drm_crtc* %67, i32 %69)
  br label %71

71:                                               ; preds = %63, %55
  br label %72

72:                                               ; preds = %71, %52
  %73 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %74 = icmp ne %struct.drm_encoder* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @drm_helper_encoder_dpms(%struct.drm_encoder* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %72
  br label %80

80:                                               ; preds = %79, %48
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %112

84:                                               ; preds = %80
  %85 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %86 = icmp ne %struct.drm_encoder* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @drm_helper_encoder_dpms(%struct.drm_encoder* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %84
  %92 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %93 = icmp ne %struct.drm_crtc* %92, null
  br i1 %93, label %94, label %111

94:                                               ; preds = %91
  %95 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %96 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %95, i32 0, i32 0
  %97 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %96, align 8
  store %struct.drm_crtc_helper_funcs* %97, %struct.drm_crtc_helper_funcs** %11, align 8
  %98 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %11, align 8
  %99 = getelementptr inbounds %struct.drm_crtc_helper_funcs, %struct.drm_crtc_helper_funcs* %98, i32 0, i32 0
  %100 = load i32 (%struct.drm_crtc*, i32)*, i32 (%struct.drm_crtc*, i32)** %99, align 8
  %101 = icmp ne i32 (%struct.drm_crtc*, i32)* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %94
  %103 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %11, align 8
  %104 = getelementptr inbounds %struct.drm_crtc_helper_funcs, %struct.drm_crtc_helper_funcs* %103, i32 0, i32 0
  %105 = load i32 (%struct.drm_crtc*, i32)*, i32 (%struct.drm_crtc*, i32)** %104, align 8
  %106 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %107 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %108 = call i32 @drm_helper_choose_crtc_dpms(%struct.drm_crtc* %107)
  %109 = call i32 %105(%struct.drm_crtc* %106, i32 %108)
  br label %110

110:                                              ; preds = %102, %94
  br label %111

111:                                              ; preds = %110, %91
  br label %112

112:                                              ; preds = %111, %80
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %35
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @drm_drv_uses_atomic_modeset(i32) #1

declare dso_local i32 @drm_helper_choose_encoder_dpms(%struct.drm_encoder*) #1

declare dso_local i32 @drm_helper_choose_crtc_dpms(%struct.drm_crtc*) #1

declare dso_local i32 @drm_helper_encoder_dpms(%struct.drm_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
