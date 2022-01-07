; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_kms.c_modeset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_kms.c_modeset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp4_kms = type { %struct.drm_device* }
%struct.drm_device = type { i32, %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32, %struct.drm_plane**, i32, %struct.drm_plane** }
%struct.drm_plane = type { i32 }
%struct.drm_crtc = type opaque

@modeset_init.rgb_planes = internal constant [2 x i32] [i32 131, i32 130], align 4
@modeset_init.vg_planes = internal constant [2 x i32] [i32 129, i32 128], align 4
@modeset_init.mdp4_crtcs = internal constant [2 x i32] [i32 135, i32 136], align 4
@modeset_init.mdp4_crtc_names = internal constant [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"DMA_P\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"DMA_E\00", align 1
@modeset_init.mdp4_intfs = internal constant [3 x i32] [i32 133, i32 134, i32 132], align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to construct plane for VG%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to construct plane for RGB%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to construct crtc for %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"failed to initialize intf: %d, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdp4_kms*)* @modeset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modeset_init(%struct.mdp4_kms* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdp4_kms*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.msm_drm_private*, align 8
  %6 = alloca %struct.drm_plane*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mdp4_kms* %0, %struct.mdp4_kms** %3, align 8
  %10 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %11 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %4, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 1
  %15 = load %struct.msm_drm_private*, %struct.msm_drm_private** %14, align 8
  store %struct.msm_drm_private* %15, %struct.msm_drm_private** %5, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %50, %1
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @modeset_init.vg_planes, i64 0, i64 0))
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* @modeset_init.vg_planes, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.drm_plane* @mdp4_plane_init(%struct.drm_device* %21, i32 %25, i32 0)
  store %struct.drm_plane* %26, %struct.drm_plane** %6, align 8
  %27 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %28 = call i64 @IS_ERR(%struct.drm_plane* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %20
  %31 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %38 = call i32 @PTR_ERR(%struct.drm_plane* %37)
  store i32 %38, i32* %9, align 4
  br label %147

39:                                               ; preds = %20
  %40 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %41 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %42 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %41, i32 0, i32 3
  %43 = load %struct.drm_plane**, %struct.drm_plane*** %42, align 8
  %44 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %45 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds %struct.drm_plane*, %struct.drm_plane** %43, i64 %48
  store %struct.drm_plane* %40, %struct.drm_plane** %49, align 8
  br label %50

50:                                               ; preds = %39
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %16

53:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %118, %53
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @modeset_init.mdp4_crtcs, i64 0, i64 0))
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %121

58:                                               ; preds = %54
  %59 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* @modeset_init.rgb_planes, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.drm_plane* @mdp4_plane_init(%struct.drm_device* %59, i32 %63, i32 1)
  store %struct.drm_plane* %64, %struct.drm_plane** %6, align 8
  %65 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %66 = call i64 @IS_ERR(%struct.drm_plane* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %58
  %69 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %70 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  %74 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %76 = call i32 @PTR_ERR(%struct.drm_plane* %75)
  store i32 %76, i32* %9, align 4
  br label %147

77:                                               ; preds = %58
  %78 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %79 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %80 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %81 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* @modeset_init.mdp4_crtcs, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.drm_plane* @mdp4_crtc_init(%struct.drm_device* %78, %struct.drm_plane* %79, i32 %82, i32 %83, i32 %87)
  %89 = bitcast %struct.drm_plane* %88 to %struct.drm_crtc*
  store %struct.drm_crtc* %89, %struct.drm_crtc** %7, align 8
  %90 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %91 = bitcast %struct.drm_crtc* %90 to %struct.drm_plane*
  %92 = call i64 @IS_ERR(%struct.drm_plane* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %77
  %95 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %96 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [2 x i8*], [2 x i8*]* @modeset_init.mdp4_crtc_names, i64 0, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %101)
  %103 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %104 = bitcast %struct.drm_crtc* %103 to %struct.drm_plane*
  %105 = call i32 @PTR_ERR(%struct.drm_plane* %104)
  store i32 %105, i32* %9, align 4
  br label %147

106:                                              ; preds = %77
  %107 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %108 = bitcast %struct.drm_crtc* %107 to %struct.drm_plane*
  %109 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %110 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %109, i32 0, i32 1
  %111 = load %struct.drm_plane**, %struct.drm_plane*** %110, align 8
  %112 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %113 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds %struct.drm_plane*, %struct.drm_plane** %111, i64 %116
  store %struct.drm_plane* %108, %struct.drm_plane** %117, align 8
  br label %118

118:                                              ; preds = %106
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %54

121:                                              ; preds = %54
  store i32 0, i32* %8, align 4
  br label %122

122:                                              ; preds = %143, %121
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @modeset_init.mdp4_intfs, i64 0, i64 0))
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %146

126:                                              ; preds = %122
  %127 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [3 x i32], [3 x i32]* @modeset_init.mdp4_intfs, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @mdp4_modeset_init_intf(%struct.mdp4_kms* %127, i32 %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %126
  %136 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %137 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %9, align 4
  %141 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %138, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %139, i32 %140)
  br label %147

142:                                              ; preds = %126
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %122

146:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  br label %149

147:                                              ; preds = %135, %94, %68, %30
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %147, %146
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.drm_plane* @mdp4_plane_init(%struct.drm_device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_plane*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.drm_plane*) #1

declare dso_local %struct.drm_plane* @mdp4_crtc_init(%struct.drm_device*, %struct.drm_plane*, i32, i32, i32) #1

declare dso_local i32 @mdp4_modeset_init_intf(%struct.mdp4_kms*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
