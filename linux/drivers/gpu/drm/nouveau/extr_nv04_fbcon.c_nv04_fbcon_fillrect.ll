; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv04_fbcon.c_nv04_fbcon_fillrect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv04_fbcon.c_nv04_fbcon_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_4__, %struct.nouveau_fbdev* }
%struct.TYPE_4__ = type { i64 }
%struct.nouveau_fbdev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fb_fillrect = type { i64, i64, i32, i32, i32, i32 }
%struct.nouveau_drm = type { %struct.nouveau_channel* }
%struct.nouveau_channel = type { i32 }

@NvSubGdiRect = common dso_local global i32 0, align 4
@ROP_COPY = common dso_local global i64 0, align 8
@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_DIRECTCOLOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_fbcon_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_fillrect*, align 8
  %6 = alloca %struct.nouveau_fbdev*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nouveau_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 2
  %12 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %11, align 8
  store %struct.nouveau_fbdev* %12, %struct.nouveau_fbdev** %6, align 8
  %13 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %6, align 8
  %14 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.nouveau_drm* @nouveau_drm(i32 %16)
  store %struct.nouveau_drm* %17, %struct.nouveau_drm** %7, align 8
  %18 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %19 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %18, i32 0, i32 0
  %20 = load %struct.nouveau_channel*, %struct.nouveau_channel** %19, align 8
  store %struct.nouveau_channel* %20, %struct.nouveau_channel** %8, align 8
  %21 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %22 = call i32 @RING_SPACE(%struct.nouveau_channel* %21, i32 7)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %101

27:                                               ; preds = %2
  %28 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %29 = load i32, i32* @NvSubGdiRect, align 4
  %30 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %28, i32 %29, i32 764, i32 1)
  %31 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %32 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %33 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ROP_COPY, align 8
  %36 = icmp ne i64 %34, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 3
  %39 = call i32 @OUT_RING(%struct.nouveau_channel* %31, i32 %38)
  %40 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %41 = load i32, i32* @NvSubGdiRect, align 4
  %42 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %40, i32 %41, i32 1020, i32 1)
  %43 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %27
  %50 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %51 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @FB_VISUAL_DIRECTCOLOR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %49, %27
  %57 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %58 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %59 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  %62 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %63 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @OUT_RING(%struct.nouveau_channel* %57, i32 %66)
  br label %75

68:                                               ; preds = %49
  %69 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %70 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %71 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @OUT_RING(%struct.nouveau_channel* %69, i32 %73)
  br label %75

75:                                               ; preds = %68, %56
  %76 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %77 = load i32, i32* @NvSubGdiRect, align 4
  %78 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %76, i32 %77, i32 1024, i32 2)
  %79 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %80 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %81 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = shl i32 %82, 16
  %84 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %85 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %83, %86
  %88 = call i32 @OUT_RING(%struct.nouveau_channel* %79, i32 %87)
  %89 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %90 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %91 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = shl i32 %92, 16
  %94 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %95 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %93, %96
  %98 = call i32 @OUT_RING(%struct.nouveau_channel* %89, i32 %97)
  %99 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %100 = call i32 @FIRE_RING(%struct.nouveau_channel* %99)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %75, %25
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @FIRE_RING(%struct.nouveau_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
