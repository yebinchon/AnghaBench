; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head.c_nv50_head_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head.c_nv50_head_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.nv50_disp = type { %struct.TYPE_12__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.nv50_head = type { i32, %struct.TYPE_13__*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.drm_crtc }
%struct.drm_crtc = type { i32 }
%struct.nv50_wndw = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GV100_DISP = common dso_local global i64 0, align 8
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@nv50_head_func = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"head-%d\00", align 1
@nv50_head_help = common dso_local global i32 0, align 4
@GF110_DISP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_head_create(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.nv50_disp*, align 8
  %8 = alloca %struct.nv50_head*, align 8
  %9 = alloca %struct.nv50_wndw*, align 8
  %10 = alloca %struct.nv50_wndw*, align 8
  %11 = alloca %struct.nv50_wndw*, align 8
  %12 = alloca %struct.drm_crtc*, align 8
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %14)
  store %struct.nouveau_drm* %15, %struct.nouveau_drm** %6, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = call %struct.nv50_disp* @nv50_disp(%struct.drm_device* %16)
  store %struct.nv50_disp* %17, %struct.nv50_disp** %7, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.nv50_head* @kzalloc(i32 24, i32 %18)
  store %struct.nv50_head* %19, %struct.nv50_head** %8, align 8
  %20 = load %struct.nv50_head*, %struct.nv50_head** %8, align 8
  %21 = icmp ne %struct.nv50_head* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %157

25:                                               ; preds = %2
  %26 = load %struct.nv50_disp*, %struct.nv50_disp** %7, align 8
  %27 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %26, i32 0, i32 1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = load %struct.nv50_head*, %struct.nv50_head** %8, align 8
  %34 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %33, i32 0, i32 1
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.nv50_head*, %struct.nv50_head** %8, align 8
  %37 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.nv50_disp*, %struct.nv50_disp** %7, align 8
  %40 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %39, i32 0, i32 0
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @GV100_DISP, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %25
  %48 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %49 = load %struct.nv50_head*, %struct.nv50_head** %8, align 8
  %50 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @nv50_base_new(%struct.nouveau_drm* %48, i32 %52, %struct.nv50_wndw** %9)
  store i32 %53, i32* %13, align 4
  %54 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %55 = load %struct.nv50_head*, %struct.nv50_head** %8, align 8
  %56 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @nv50_ovly_new(%struct.nouveau_drm* %54, i32 %58, %struct.nv50_wndw** %10)
  store i32 %59, i32* %13, align 4
  br label %79

60:                                               ; preds = %25
  %61 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %62 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %63 = load %struct.nv50_head*, %struct.nv50_head** %8, align 8
  %64 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %66, 2
  %68 = add nsw i32 %67, 0
  %69 = call i32 @nv50_wndw_new(%struct.nouveau_drm* %61, i32 %62, i32 %68, %struct.nv50_wndw** %9)
  store i32 %69, i32* %13, align 4
  %70 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %71 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  %72 = load %struct.nv50_head*, %struct.nv50_head** %8, align 8
  %73 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %75, 2
  %77 = add nsw i32 %76, 1
  %78 = call i32 @nv50_wndw_new(%struct.nouveau_drm* %70, i32 %71, i32 %77, %struct.nv50_wndw** %10)
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %60, %47
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %84 = load %struct.nv50_head*, %struct.nv50_head** %8, align 8
  %85 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @nv50_curs_new(%struct.nouveau_drm* %83, i32 %87, %struct.nv50_wndw** %11)
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %82, %79
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.nv50_head*, %struct.nv50_head** %8, align 8
  %94 = call i32 @kfree(%struct.nv50_head* %93)
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %3, align 4
  br label %157

96:                                               ; preds = %89
  %97 = load %struct.nv50_head*, %struct.nv50_head** %8, align 8
  %98 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  store %struct.drm_crtc* %99, %struct.drm_crtc** %12, align 8
  %100 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %101 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %102 = load %struct.nv50_wndw*, %struct.nv50_wndw** %9, align 8
  %103 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %102, i32 0, i32 0
  %104 = load %struct.nv50_wndw*, %struct.nv50_wndw** %11, align 8
  %105 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %104, i32 0, i32 0
  %106 = load %struct.nv50_head*, %struct.nv50_head** %8, align 8
  %107 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %100, %struct.drm_crtc* %101, i32* %103, i32* %105, i32* @nv50_head_func, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %112 = call i32 @drm_crtc_helper_add(%struct.drm_crtc* %111, i32* @nv50_head_help)
  %113 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %114 = call i32 @drm_mode_crtc_set_gamma_size(%struct.drm_crtc* %113, i32 256)
  %115 = load %struct.nv50_disp*, %struct.nv50_disp** %7, align 8
  %116 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %115, i32 0, i32 0
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @GF110_DISP, align 8
  %122 = icmp sge i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %96
  %124 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %125 = call i32 @drm_crtc_enable_color_mgmt(%struct.drm_crtc* %124, i32 256, i32 1, i32 256)
  br label %129

126:                                              ; preds = %96
  %127 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %128 = call i32 @drm_crtc_enable_color_mgmt(%struct.drm_crtc* %127, i32 0, i32 0, i32 256)
  br label %129

129:                                              ; preds = %126, %123
  %130 = load %struct.nv50_head*, %struct.nv50_head** %8, align 8
  %131 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %130, i32 0, i32 1
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %129
  %137 = load %struct.nv50_disp*, %struct.nv50_disp** %7, align 8
  %138 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %139 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load %struct.nv50_head*, %struct.nv50_head** %8, align 8
  %142 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %141, i32 0, i32 0
  %143 = call i32 @nv50_lut_init(%struct.nv50_disp* %137, i32* %140, i32* %142)
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %136
  br label %149

147:                                              ; preds = %136
  br label %148

148:                                              ; preds = %147, %129
  br label %149

149:                                              ; preds = %148, %146
  %150 = load i32, i32* %13, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %154 = call i32 @nv50_head_destroy(%struct.drm_crtc* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32, i32* %13, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %155, %92, %22
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nv50_disp* @nv50_disp(%struct.drm_device*) #1

declare dso_local %struct.nv50_head* @kzalloc(i32, i32) #1

declare dso_local i32 @nv50_base_new(%struct.nouveau_drm*, i32, %struct.nv50_wndw**) #1

declare dso_local i32 @nv50_ovly_new(%struct.nouveau_drm*, i32, %struct.nv50_wndw**) #1

declare dso_local i32 @nv50_wndw_new(%struct.nouveau_drm*, i32, i32, %struct.nv50_wndw**) #1

declare dso_local i32 @nv50_curs_new(%struct.nouveau_drm*, i32, %struct.nv50_wndw**) #1

declare dso_local i32 @kfree(%struct.nv50_head*) #1

declare dso_local i32 @drm_crtc_init_with_planes(%struct.drm_device*, %struct.drm_crtc*, i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @drm_crtc_helper_add(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @drm_mode_crtc_set_gamma_size(%struct.drm_crtc*, i32) #1

declare dso_local i32 @drm_crtc_enable_color_mgmt(%struct.drm_crtc*, i32, i32, i32) #1

declare dso_local i32 @nv50_lut_init(%struct.nv50_disp*, i32*, i32*) #1

declare dso_local i32 @nv50_head_destroy(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
