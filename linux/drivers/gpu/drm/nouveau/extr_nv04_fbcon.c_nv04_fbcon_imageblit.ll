; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv04_fbcon.c_nv04_fbcon_imageblit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv04_fbcon.c_nv04_fbcon_imageblit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_4__, %struct.nouveau_fbdev* }
%struct.TYPE_4__ = type { i64 }
%struct.nouveau_fbdev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fb_image = type { i32, i64, i64, i32, i32, i32, i32, i64 }
%struct.nouveau_drm = type { %struct.nouveau_channel* }
%struct.nouveau_channel = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_DIRECTCOLOR = common dso_local global i64 0, align 8
@NvSubGdiRect = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_fbcon_imageblit(%struct.fb_info* %0, %struct.fb_image* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_image*, align 8
  %6 = alloca %struct.nouveau_fbdev*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nouveau_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_image* %1, %struct.fb_image** %5, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 2
  %17 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %16, align 8
  store %struct.nouveau_fbdev* %17, %struct.nouveau_fbdev** %6, align 8
  %18 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %6, align 8
  %19 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.nouveau_drm* @nouveau_drm(i32 %21)
  store %struct.nouveau_drm* %22, %struct.nouveau_drm** %7, align 8
  %23 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %24 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %23, i32 0, i32 0
  %25 = load %struct.nouveau_channel*, %struct.nouveau_channel** %24, align 8
  store %struct.nouveau_channel* %25, %struct.nouveau_channel** %8, align 8
  %26 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %27 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %12, align 8
  %30 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %31 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %206

37:                                               ; preds = %2
  %38 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %39 = call i32 @RING_SPACE(%struct.nouveau_channel* %38, i32 8)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %3, align 4
  br label %206

44:                                               ; preds = %37
  %45 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %46 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %44
  %52 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FB_VISUAL_DIRECTCOLOR, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %51, %44
  %59 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %60 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %64 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %9, align 4
  %68 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %69 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i32*
  %72 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %73 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %10, align 4
  br label %86

77:                                               ; preds = %51
  %78 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %79 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %9, align 4
  %82 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %83 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %77, %58
  %87 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %88 = load i32, i32* @NvSubGdiRect, align 4
  %89 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %87, i32 %88, i32 3044, i32 7)
  %90 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %91 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %92 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = shl i32 %93, 16
  %95 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %96 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 65535
  %99 = or i32 %94, %98
  %100 = call i32 @OUT_RING(%struct.nouveau_channel* %90, i32 %99)
  %101 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %102 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %103 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %106 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %104, %107
  %109 = shl i32 %108, 16
  %110 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %111 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %114 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %112, %115
  %117 = and i32 %116, 65535
  %118 = or i32 %109, %117
  %119 = call i32 @OUT_RING(%struct.nouveau_channel* %101, i32 %118)
  %120 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @OUT_RING(%struct.nouveau_channel* %120, i32 %121)
  %123 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @OUT_RING(%struct.nouveau_channel* %123, i32 %124)
  %126 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %127 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %128 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = shl i32 %129, 16
  %131 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %132 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ALIGN(i32 %133, i32 8)
  %135 = or i32 %130, %134
  %136 = call i32 @OUT_RING(%struct.nouveau_channel* %126, i32 %135)
  %137 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %138 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %139 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = shl i32 %140, 16
  %142 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %143 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %141, %144
  %146 = call i32 @OUT_RING(%struct.nouveau_channel* %137, i32 %145)
  %147 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %148 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %149 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = shl i32 %150, 16
  %152 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %153 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, 65535
  %156 = or i32 %151, %155
  %157 = call i32 @OUT_RING(%struct.nouveau_channel* %147, i32 %156)
  %158 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %159 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @ALIGN(i32 %160, i32 8)
  %162 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %163 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = mul nsw i32 %161, %164
  %166 = call i32 @ALIGN(i32 %165, i32 32)
  %167 = ashr i32 %166, 5
  store i32 %167, i32* %11, align 4
  br label %168

168:                                              ; preds = %187, %86
  %169 = load i32, i32* %11, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %203

171:                                              ; preds = %168
  %172 = load i32, i32* %11, align 4
  %173 = icmp sgt i32 %172, 128
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %177

175:                                              ; preds = %171
  %176 = load i32, i32* %11, align 4
  br label %177

177:                                              ; preds = %175, %174
  %178 = phi i32 [ 128, %174 ], [ %176, %175 ]
  store i32 %178, i32* %14, align 4
  %179 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, 1
  %182 = call i32 @RING_SPACE(%struct.nouveau_channel* %179, i32 %181)
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %13, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %177
  %186 = load i32, i32* %13, align 4
  store i32 %186, i32* %3, align 4
  br label %206

187:                                              ; preds = %177
  %188 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %189 = load i32, i32* @NvSubGdiRect, align 4
  %190 = load i32, i32* %14, align 4
  %191 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %188, i32 %189, i32 3072, i32 %190)
  %192 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %193 = load i32*, i32** %12, align 8
  %194 = load i32, i32* %14, align 4
  %195 = call i32 @OUT_RINGp(%struct.nouveau_channel* %192, i32* %193, i32 %194)
  %196 = load i32, i32* %14, align 4
  %197 = load i32*, i32** %12, align 8
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  store i32* %199, i32** %12, align 8
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %11, align 4
  %202 = sub nsw i32 %201, %200
  store i32 %202, i32* %11, align 4
  br label %168

203:                                              ; preds = %168
  %204 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %205 = call i32 @FIRE_RING(%struct.nouveau_channel* %204)
  store i32 0, i32* %3, align 4
  br label %206

206:                                              ; preds = %203, %185, %42, %34
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @OUT_RINGp(%struct.nouveau_channel*, i32*, i32) #1

declare dso_local i32 @FIRE_RING(%struct.nouveau_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
