; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_get_scanoutpos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_get_scanoutpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.drm_crtc** }
%struct.drm_crtc = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32 }
%struct.drm_encoder = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Invalid crtc %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"no encoder found for crtc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32, i32*, i32*, i32*, i32*, %struct.drm_display_mode*)* @mdp5_get_scanoutpos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdp5_get_scanoutpos(%struct.drm_device* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, %struct.drm_display_mode* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.drm_display_mode*, align 8
  %18 = alloca %struct.msm_drm_private*, align 8
  %19 = alloca %struct.drm_crtc*, align 8
  %20 = alloca %struct.drm_encoder*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store %struct.drm_display_mode* %7, %struct.drm_display_mode** %17, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = load %struct.msm_drm_private*, %struct.msm_drm_private** %28, align 8
  store %struct.msm_drm_private* %29, %struct.msm_drm_private** %18, align 8
  %30 = load %struct.msm_drm_private*, %struct.msm_drm_private** %18, align 8
  %31 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %30, i32 0, i32 0
  %32 = load %struct.drm_crtc**, %struct.drm_crtc*** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.drm_crtc*, %struct.drm_crtc** %32, i64 %34
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %35, align 8
  store %struct.drm_crtc* %36, %struct.drm_crtc** %19, align 8
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %19, align 8
  %38 = icmp ne %struct.drm_crtc* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 0, i32* %9, align 4
  br label %117

42:                                               ; preds = %8
  %43 = load %struct.drm_crtc*, %struct.drm_crtc** %19, align 8
  %44 = call %struct.drm_encoder* @get_encoder_from_crtc(%struct.drm_crtc* %43)
  store %struct.drm_encoder* %44, %struct.drm_encoder** %20, align 8
  %45 = load %struct.drm_encoder*, %struct.drm_encoder** %20, align 8
  %46 = icmp ne %struct.drm_encoder* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i32 0, i32* %9, align 4
  br label %117

50:                                               ; preds = %42
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %52 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %53, %56
  store i32 %57, i32* %22, align 4
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %59 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  store i32 %64, i32* %23, align 4
  %65 = load i32, i32* %22, align 4
  %66 = load i32, i32* %23, align 4
  %67 = add nsw i32 %65, %66
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %24, align 4
  %69 = load i32, i32* %24, align 4
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %71 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %69, %72
  store i32 %73, i32* %25, align 4
  %74 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %75 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %26, align 4
  %77 = load i32*, i32** %15, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %50
  %80 = call i32 (...) @ktime_get()
  %81 = load i32*, i32** %15, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %50
  %83 = load %struct.drm_encoder*, %struct.drm_encoder** %20, align 8
  %84 = call i32 @mdp5_encoder_get_linecount(%struct.drm_encoder* %83)
  store i32 %84, i32* %21, align 4
  %85 = load i32, i32* %21, align 4
  %86 = load i32, i32* %24, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i32, i32* %24, align 4
  %90 = load i32, i32* %21, align 4
  %91 = sub nsw i32 %90, %89
  store i32 %91, i32* %21, align 4
  br label %107

92:                                               ; preds = %82
  %93 = load i32, i32* %21, align 4
  %94 = load i32, i32* %25, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i32, i32* %21, align 4
  %98 = load i32, i32* %26, align 4
  %99 = sub nsw i32 %97, %98
  %100 = load i32, i32* %24, align 4
  %101 = sub nsw i32 %99, %100
  store i32 %101, i32* %21, align 4
  br label %106

102:                                              ; preds = %92
  %103 = load i32, i32* %24, align 4
  %104 = load i32, i32* %21, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %21, align 4
  br label %106

106:                                              ; preds = %102, %96
  br label %107

107:                                              ; preds = %106, %88
  %108 = load i32, i32* %21, align 4
  %109 = load i32*, i32** %13, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32*, i32** %14, align 8
  store i32 0, i32* %110, align 4
  %111 = load i32*, i32** %16, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = call i32 (...) @ktime_get()
  %115 = load i32*, i32** %16, align 8
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %107
  store i32 1, i32* %9, align 4
  br label %117

117:                                              ; preds = %116, %47, %39
  %118 = load i32, i32* %9, align 4
  ret i32 %118
}

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local %struct.drm_encoder* @get_encoder_from_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @mdp5_encoder_get_linecount(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
