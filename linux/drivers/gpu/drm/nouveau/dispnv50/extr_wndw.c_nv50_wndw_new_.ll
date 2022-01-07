; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndw.c_nv50_wndw_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndw.c_nv50_wndw_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw_func = type { i64, i64 }
%struct.drm_device = type { i32 }
%struct.nv50_wndw = type { i32, i32, %struct.nv50_wndw_func*, %struct.TYPE_12__, i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.nouveau_drm = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.nvif_mmu }
%struct.nvif_mmu = type { i32 }
%struct.nv50_disp = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv50_wndw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@nv50_wndw_helper = common dso_local global i32 0, align 4
@nv50_wndw_notify = common dso_local global i32 0, align 4
@DRM_MODE_BLEND_PIXEL_NONE = common dso_local global i32 0, align 4
@DRM_MODE_BLEND_PREMULTI = common dso_local global i32 0, align 4
@DRM_MODE_BLEND_COVERAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_wndw_new_(%struct.nv50_wndw_func* %0, %struct.drm_device* %1, i32 %2, i8* %3, i32 %4, i64* %5, i64 %6, i32 %7, i64 %8, %struct.nv50_wndw** %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.nv50_wndw_func*, align 8
  %13 = alloca %struct.drm_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.nv50_wndw**, align 8
  %22 = alloca %struct.nouveau_drm*, align 8
  %23 = alloca %struct.nvif_mmu*, align 8
  %24 = alloca %struct.nv50_disp*, align 8
  %25 = alloca %struct.nv50_wndw*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.nv50_wndw_func* %0, %struct.nv50_wndw_func** %12, align 8
  store %struct.drm_device* %1, %struct.drm_device** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i64* %5, i64** %17, align 8
  store i64 %6, i64* %18, align 8
  store i32 %7, i32* %19, align 4
  store i64 %8, i64* %20, align 8
  store %struct.nv50_wndw** %9, %struct.nv50_wndw*** %21, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %29 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %28)
  store %struct.nouveau_drm* %29, %struct.nouveau_drm** %22, align 8
  %30 = load %struct.nouveau_drm*, %struct.nouveau_drm** %22, align 8
  %31 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store %struct.nvif_mmu* %32, %struct.nvif_mmu** %23, align 8
  %33 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %34 = call %struct.nv50_disp* @nv50_disp(%struct.drm_device* %33)
  store %struct.nv50_disp* %34, %struct.nv50_disp** %24, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.nv50_wndw* @kzalloc(i32 64, i32 %35)
  %37 = load %struct.nv50_wndw**, %struct.nv50_wndw*** %21, align 8
  store %struct.nv50_wndw* %36, %struct.nv50_wndw** %37, align 8
  store %struct.nv50_wndw* %36, %struct.nv50_wndw** %25, align 8
  %38 = icmp ne %struct.nv50_wndw* %36, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %10
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %11, align 4
  br label %179

42:                                               ; preds = %10
  %43 = load %struct.nv50_wndw_func*, %struct.nv50_wndw_func** %12, align 8
  %44 = load %struct.nv50_wndw*, %struct.nv50_wndw** %25, align 8
  %45 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %44, i32 0, i32 2
  store %struct.nv50_wndw_func* %43, %struct.nv50_wndw_func** %45, align 8
  %46 = load i32, i32* %16, align 4
  %47 = load %struct.nv50_wndw*, %struct.nv50_wndw** %25, align 8
  %48 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %19, align 4
  %50 = load %struct.nv50_wndw*, %struct.nv50_wndw** %25, align 8
  %51 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %50, i32 0, i32 7
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load i64, i64* %20, align 8
  %54 = load %struct.nv50_wndw*, %struct.nv50_wndw** %25, align 8
  %55 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  store i64 %53, i64* %56, align 8
  %57 = load %struct.nv50_wndw*, %struct.nv50_wndw** %25, align 8
  %58 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.nv50_wndw*, %struct.nv50_wndw** %25, align 8
  %62 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  store i32* %60, i32** %63, align 8
  %64 = load %struct.nv50_wndw*, %struct.nv50_wndw** %25, align 8
  %65 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  store i32 0, i32* %26, align 4
  br label %68

68:                                               ; preds = %76, %42
  %69 = load i64*, i64** %17, align 8
  %70 = load i32, i32* %26, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %26, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %26, align 4
  br label %68

79:                                               ; preds = %68
  %80 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %81 = load %struct.nv50_wndw*, %struct.nv50_wndw** %25, align 8
  %82 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %81, i32 0, i32 1
  %83 = load i64, i64* %18, align 8
  %84 = load i64*, i64** %17, align 8
  %85 = load i32, i32* %26, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i8*, i8** %15, align 8
  %88 = load i32, i32* %16, align 4
  %89 = call i32 @drm_universal_plane_init(%struct.drm_device* %80, i32* %82, i64 %83, i32* @nv50_wndw, i64* %84, i32 %85, i32* null, i32 %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %87, i32 %88)
  store i32 %89, i32* %27, align 4
  %90 = load i32, i32* %27, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %79
  %93 = load %struct.nv50_wndw**, %struct.nv50_wndw*** %21, align 8
  %94 = load %struct.nv50_wndw*, %struct.nv50_wndw** %93, align 8
  %95 = call i32 @kfree(%struct.nv50_wndw* %94)
  %96 = load %struct.nv50_wndw**, %struct.nv50_wndw*** %21, align 8
  store %struct.nv50_wndw* null, %struct.nv50_wndw** %96, align 8
  %97 = load i32, i32* %27, align 4
  store i32 %97, i32* %11, align 4
  br label %179

98:                                               ; preds = %79
  %99 = load %struct.nv50_wndw*, %struct.nv50_wndw** %25, align 8
  %100 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %99, i32 0, i32 1
  %101 = call i32 @drm_plane_helper_add(i32* %100, i32* @nv50_wndw_helper)
  %102 = load %struct.nv50_wndw*, %struct.nv50_wndw** %25, align 8
  %103 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %102, i32 0, i32 2
  %104 = load %struct.nv50_wndw_func*, %struct.nv50_wndw_func** %103, align 8
  %105 = getelementptr inbounds %struct.nv50_wndw_func, %struct.nv50_wndw_func* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %98
  %109 = load %struct.nv50_disp*, %struct.nv50_disp** %24, align 8
  %110 = load %struct.nvif_mmu*, %struct.nvif_mmu** %23, align 8
  %111 = load %struct.nv50_wndw*, %struct.nv50_wndw** %25, align 8
  %112 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %111, i32 0, i32 4
  %113 = call i32 @nv50_lut_init(%struct.nv50_disp* %109, %struct.nvif_mmu* %110, i32* %112)
  store i32 %113, i32* %27, align 4
  %114 = load i32, i32* %27, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load i32, i32* %27, align 4
  store i32 %117, i32* %11, align 4
  br label %179

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %118, %98
  %120 = load i32, i32* @nv50_wndw_notify, align 4
  %121 = load %struct.nv50_wndw*, %struct.nv50_wndw** %25, align 8
  %122 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  %124 = load %struct.nv50_wndw*, %struct.nv50_wndw** %25, align 8
  %125 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %124, i32 0, i32 2
  %126 = load %struct.nv50_wndw_func*, %struct.nv50_wndw_func** %125, align 8
  %127 = getelementptr inbounds %struct.nv50_wndw_func, %struct.nv50_wndw_func* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %166

130:                                              ; preds = %119
  %131 = load %struct.nv50_wndw*, %struct.nv50_wndw** %25, align 8
  %132 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %131, i32 0, i32 1
  %133 = load %struct.nv50_wndw*, %struct.nv50_wndw** %25, align 8
  %134 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %133, i32 0, i32 1
  %135 = call i32 @nv50_wndw_zpos_default(i32* %134)
  %136 = call i32 @drm_plane_create_zpos_property(i32* %132, i32 %135, i32 0, i32 254)
  store i32 %136, i32* %27, align 4
  %137 = load i32, i32* %27, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %130
  %140 = load i32, i32* %27, align 4
  store i32 %140, i32* %11, align 4
  br label %179

141:                                              ; preds = %130
  %142 = load %struct.nv50_wndw*, %struct.nv50_wndw** %25, align 8
  %143 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %142, i32 0, i32 1
  %144 = call i32 @drm_plane_create_alpha_property(i32* %143)
  store i32 %144, i32* %27, align 4
  %145 = load i32, i32* %27, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = load i32, i32* %27, align 4
  store i32 %148, i32* %11, align 4
  br label %179

149:                                              ; preds = %141
  %150 = load %struct.nv50_wndw*, %struct.nv50_wndw** %25, align 8
  %151 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %150, i32 0, i32 1
  %152 = load i32, i32* @DRM_MODE_BLEND_PIXEL_NONE, align 4
  %153 = call i32 @BIT(i32 %152)
  %154 = load i32, i32* @DRM_MODE_BLEND_PREMULTI, align 4
  %155 = call i32 @BIT(i32 %154)
  %156 = or i32 %153, %155
  %157 = load i32, i32* @DRM_MODE_BLEND_COVERAGE, align 4
  %158 = call i32 @BIT(i32 %157)
  %159 = or i32 %156, %158
  %160 = call i32 @drm_plane_create_blend_mode_property(i32* %151, i32 %159)
  store i32 %160, i32* %27, align 4
  %161 = load i32, i32* %27, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %149
  %164 = load i32, i32* %27, align 4
  store i32 %164, i32* %11, align 4
  br label %179

165:                                              ; preds = %149
  br label %178

166:                                              ; preds = %119
  %167 = load %struct.nv50_wndw*, %struct.nv50_wndw** %25, align 8
  %168 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %167, i32 0, i32 1
  %169 = load %struct.nv50_wndw*, %struct.nv50_wndw** %25, align 8
  %170 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %169, i32 0, i32 1
  %171 = call i32 @nv50_wndw_zpos_default(i32* %170)
  %172 = call i32 @drm_plane_create_zpos_immutable_property(i32* %168, i32 %171)
  store i32 %172, i32* %27, align 4
  %173 = load i32, i32* %27, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %166
  %176 = load i32, i32* %27, align 4
  store i32 %176, i32* %11, align 4
  br label %179

177:                                              ; preds = %166
  br label %178

178:                                              ; preds = %177, %165
  store i32 0, i32* %11, align 4
  br label %179

179:                                              ; preds = %178, %175, %163, %147, %139, %116, %92, %39
  %180 = load i32, i32* %11, align 4
  ret i32 %180
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nv50_disp* @nv50_disp(%struct.drm_device*) #1

declare dso_local %struct.nv50_wndw* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, i32*, i64, i32*, i64*, i32, i32*, i32, i8*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.nv50_wndw*) #1

declare dso_local i32 @drm_plane_helper_add(i32*, i32*) #1

declare dso_local i32 @nv50_lut_init(%struct.nv50_disp*, %struct.nvif_mmu*, i32*) #1

declare dso_local i32 @drm_plane_create_zpos_property(i32*, i32, i32, i32) #1

declare dso_local i32 @nv50_wndw_zpos_default(i32*) #1

declare dso_local i32 @drm_plane_create_alpha_property(i32*) #1

declare dso_local i32 @drm_plane_create_blend_mode_property(i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @drm_plane_create_zpos_immutable_property(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
