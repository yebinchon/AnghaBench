; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_display.c_amdgpu_display_get_crtc_scanoutpos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_display.c_amdgpu_display_get_crtc_scanoutpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i64 }
%struct.drm_display_mode = type { i32, i32 }

@DRM_SCANOUTPOS_VALID = common dso_local global i32 0, align 4
@DRM_SCANOUTPOS_ACCURATE = common dso_local global i32 0, align 4
@GET_DISTANCE_TO_VBLANKSTART = common dso_local global i32 0, align 4
@USE_REAL_VBLANKSTART = common dso_local global i32 0, align 4
@DRM_SCANOUTPOS_IN_VBLANK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_display_get_crtc_scanoutpos(%struct.drm_device* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, %struct.drm_display_mode* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.drm_display_mode*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.amdgpu_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store %struct.drm_display_mode* %7, %struct.drm_display_mode** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %23, align 4
  store i32 1, i32* %24, align 4
  %26 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %27, align 8
  store %struct.amdgpu_device* %28, %struct.amdgpu_device** %25, align 8
  %29 = load i32*, i32** %15, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %8
  %32 = call i32 (...) @ktime_get()
  %33 = load i32*, i32** %15, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %8
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %25, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i64 @amdgpu_display_page_flip_get_scanoutpos(%struct.amdgpu_device* %35, i32 %36, i32* %18, i32* %19)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %41 = load i32, i32* %23, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %23, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32*, i32** %16, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = call i32 (...) @ktime_get()
  %48 = load i32*, i32** %16, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %19, align 4
  %51 = and i32 %50, 8191
  %52 = load i32*, i32** %13, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %19, align 4
  %54 = ashr i32 %53, 16
  %55 = and i32 %54, 8191
  %56 = load i32*, i32** %14, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %18, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %49
  %60 = load i32, i32* @DRM_SCANOUTPOS_ACCURATE, align 4
  %61 = load i32, i32* %23, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %23, align 4
  %63 = load i32, i32* %18, align 4
  %64 = and i32 %63, 8191
  store i32 %64, i32* %20, align 4
  %65 = load i32, i32* %18, align 4
  %66 = ashr i32 %65, 16
  %67 = and i32 %66, 8191
  store i32 %67, i32* %21, align 4
  br label %72

68:                                               ; preds = %49
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %70 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %72

72:                                               ; preds = %68, %59
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @GET_DISTANCE_TO_VBLANKSTART, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32*, i32** %13, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %20, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load i32*, i32** %14, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %77, %72
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @USE_REAL_VBLANKSTART, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %103, label %88

88:                                               ; preds = %83
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %25, align 8
  %90 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %92, i64 %94
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %20, align 4
  %100 = sext i32 %99 to i64
  %101 = sub nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %20, align 4
  br label %103

103:                                              ; preds = %88, %83
  %104 = load i32*, i32** %13, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %20, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load i32*, i32** %13, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %21, align 4
  %112 = icmp sge i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store i32 0, i32* %24, align 4
  br label %114

114:                                              ; preds = %113, %108, %103
  %115 = load i32, i32* %24, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* @DRM_SCANOUTPOS_IN_VBLANK, align 4
  %119 = load i32, i32* %23, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %23, align 4
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @GET_DISTANCE_TO_VBLANKSTART, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load i32, i32* %20, align 4
  %128 = load i32*, i32** %13, align 8
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 %129, %127
  store i32 %130, i32* %128, align 4
  %131 = load i32, i32* %23, align 4
  store i32 %131, i32* %9, align 4
  br label %164

132:                                              ; preds = %121
  %133 = load i32, i32* %24, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %157

135:                                              ; preds = %132
  %136 = load i32*, i32** %13, align 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %20, align 4
  %139 = icmp sge i32 %137, %138
  br i1 %139, label %140, label %157

140:                                              ; preds = %135
  %141 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %142 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %22, align 4
  %144 = load i32*, i32** %13, align 8
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %22, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %140
  %149 = load i32*, i32** %13, align 8
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %22, align 4
  %152 = sub nsw i32 %150, %151
  br label %154

153:                                              ; preds = %140
  br label %154

154:                                              ; preds = %153, %148
  %155 = phi i32 [ %152, %148 ], [ 0, %153 ]
  %156 = load i32*, i32** %13, align 8
  store i32 %155, i32* %156, align 4
  br label %157

157:                                              ; preds = %154, %135, %132
  %158 = load i32*, i32** %13, align 8
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %21, align 4
  %161 = sub nsw i32 %159, %160
  %162 = load i32*, i32** %13, align 8
  store i32 %161, i32* %162, align 4
  %163 = load i32, i32* %23, align 4
  store i32 %163, i32* %9, align 4
  br label %164

164:                                              ; preds = %157, %126
  %165 = load i32, i32* %9, align 4
  ret i32 %165
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @amdgpu_display_page_flip_get_scanoutpos(%struct.amdgpu_device*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
