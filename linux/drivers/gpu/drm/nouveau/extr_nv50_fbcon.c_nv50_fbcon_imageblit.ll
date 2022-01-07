; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv50_fbcon.c_nv50_fbcon_imageblit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv50_fbcon.c_nv50_fbcon_imageblit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.nouveau_fbdev* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.nouveau_fbdev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fb_image = type { i32, i64, i64, i32, i32, i32, i32, i64 }
%struct.nouveau_drm = type { %struct.nouveau_channel* }
%struct.nouveau_channel = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@NvSub2D = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_DIRECTCOLOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_fbcon_imageblit(%struct.fb_info* %0, %struct.fb_image* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_image*, align 8
  %6 = alloca %struct.nouveau_fbdev*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nouveau_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_image* %1, %struct.fb_image** %5, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 3
  %17 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %16, align 8
  store %struct.nouveau_fbdev* %17, %struct.nouveau_fbdev** %6, align 8
  %18 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %6, align 8
  %19 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
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
  store i32* %29, i32** %10, align 8
  %30 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 32, %33
  %35 = ashr i32 -1, %34
  %36 = xor i32 %35, -1
  store i32 %36, i32* %11, align 4
  %37 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %12, align 8
  %40 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %41 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %2
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %184

47:                                               ; preds = %2
  %48 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %49 = call i32 @RING_SPACE(%struct.nouveau_channel* %48, i32 11)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %3, align 4
  br label %184

54:                                               ; preds = %47
  %55 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %56 = load i32, i32* @NvSub2D, align 4
  %57 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %55, i32 %56, i32 2068, i32 2)
  %58 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %59 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %71, label %64

64:                                               ; preds = %54
  %65 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %66 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @FB_VISUAL_DIRECTCOLOR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %64, %54
  %72 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %75 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %11, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @OUT_RING(%struct.nouveau_channel* %72, i32 %80)
  %82 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %85 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %11, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @OUT_RING(%struct.nouveau_channel* %82, i32 %90)
  br label %105

92:                                               ; preds = %64
  %93 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %94 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %95 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @OUT_RING(%struct.nouveau_channel* %93, i32 %97)
  %99 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %100 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %101 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @OUT_RING(%struct.nouveau_channel* %99, i32 %103)
  br label %105

105:                                              ; preds = %92, %71
  %106 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %107 = load i32, i32* @NvSub2D, align 4
  %108 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %106, i32 %107, i32 2104, i32 2)
  %109 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %110 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %111 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @OUT_RING(%struct.nouveau_channel* %109, i32 %112)
  %114 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %115 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %116 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @OUT_RING(%struct.nouveau_channel* %114, i32 %117)
  %119 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %120 = load i32, i32* @NvSub2D, align 4
  %121 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %119, i32 %120, i32 2128, i32 4)
  %122 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %123 = call i32 @OUT_RING(%struct.nouveau_channel* %122, i32 0)
  %124 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %125 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %126 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @OUT_RING(%struct.nouveau_channel* %124, i32 %127)
  %129 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %130 = call i32 @OUT_RING(%struct.nouveau_channel* %129, i32 0)
  %131 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %132 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %133 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @OUT_RING(%struct.nouveau_channel* %131, i32 %134)
  %136 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %137 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @ALIGN(i32 %138, i32 8)
  %140 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %141 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %139, %142
  %144 = call i32 @ALIGN(i32 %143, i32 32)
  %145 = ashr i32 %144, 5
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %165, %105
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %181

149:                                              ; preds = %146
  %150 = load i32, i32* %9, align 4
  %151 = icmp sgt i32 %150, 2047
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %155

153:                                              ; preds = %149
  %154 = load i32, i32* %9, align 4
  br label %155

155:                                              ; preds = %153, %152
  %156 = phi i32 [ 2047, %152 ], [ %154, %153 ]
  store i32 %156, i32* %14, align 4
  %157 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  %160 = call i32 @RING_SPACE(%struct.nouveau_channel* %157, i32 %159)
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %13, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %155
  %164 = load i32, i32* %13, align 4
  store i32 %164, i32* %3, align 4
  br label %184

165:                                              ; preds = %155
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* %9, align 4
  %168 = sub nsw i32 %167, %166
  store i32 %168, i32* %9, align 4
  %169 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %170 = load i32, i32* @NvSub2D, align 4
  %171 = load i32, i32* %14, align 4
  %172 = call i32 @BEGIN_NI04(%struct.nouveau_channel* %169, i32 %170, i32 2144, i32 %171)
  %173 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %174 = load i32*, i32** %10, align 8
  %175 = load i32, i32* %14, align 4
  %176 = call i32 @OUT_RINGp(%struct.nouveau_channel* %173, i32* %174, i32 %175)
  %177 = load i32, i32* %14, align 4
  %178 = load i32*, i32** %10, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  store i32* %180, i32** %10, align 8
  br label %146

181:                                              ; preds = %146
  %182 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %183 = call i32 @FIRE_RING(%struct.nouveau_channel* %182)
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %181, %163, %52, %44
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @BEGIN_NI04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RINGp(%struct.nouveau_channel*, i32*, i32) #1

declare dso_local i32 @FIRE_RING(%struct.nouveau_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
