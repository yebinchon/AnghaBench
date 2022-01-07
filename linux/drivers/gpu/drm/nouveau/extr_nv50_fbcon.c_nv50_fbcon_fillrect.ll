; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv50_fbcon.c_nv50_fbcon_fillrect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv50_fbcon.c_nv50_fbcon_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_4__, %struct.nouveau_fbdev* }
%struct.TYPE_4__ = type { i64 }
%struct.nouveau_fbdev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fb_fillrect = type { i64, i64, i32, i32, i32, i32 }
%struct.nouveau_drm = type { %struct.nouveau_channel* }
%struct.nouveau_channel = type { i32 }

@ROP_COPY = common dso_local global i64 0, align 8
@NvSub2D = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_DIRECTCOLOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_fbcon_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
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
  %22 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %23 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ROP_COPY, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 7, i32 11
  %29 = call i32 @RING_SPACE(%struct.nouveau_channel* %21, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %128

34:                                               ; preds = %2
  %35 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %36 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ROP_COPY, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %42 = load i32, i32* @NvSub2D, align 4
  %43 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %41, i32 %42, i32 684, i32 1)
  %44 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %45 = call i32 @OUT_RING(%struct.nouveau_channel* %44, i32 1)
  br label %46

46:                                               ; preds = %40, %34
  %47 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %48 = load i32, i32* @NvSub2D, align 4
  %49 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %47, i32 %48, i32 1416, i32 1)
  %50 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %51 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %63, label %56

56:                                               ; preds = %46
  %57 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @FB_VISUAL_DIRECTCOLOR, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %56, %46
  %64 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %65 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %66 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  %69 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %70 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @OUT_RING(%struct.nouveau_channel* %64, i32 %73)
  br label %82

75:                                               ; preds = %56
  %76 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %77 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %78 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @OUT_RING(%struct.nouveau_channel* %76, i32 %80)
  br label %82

82:                                               ; preds = %75, %63
  %83 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %84 = load i32, i32* @NvSub2D, align 4
  %85 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %83, i32 %84, i32 1536, i32 4)
  %86 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %87 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %88 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @OUT_RING(%struct.nouveau_channel* %86, i32 %89)
  %91 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %92 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %93 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @OUT_RING(%struct.nouveau_channel* %91, i32 %94)
  %96 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %97 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %98 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %101 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %99, %102
  %104 = call i32 @OUT_RING(%struct.nouveau_channel* %96, i32 %103)
  %105 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %106 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %107 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %110 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %108, %111
  %113 = call i32 @OUT_RING(%struct.nouveau_channel* %105, i32 %112)
  %114 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %115 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @ROP_COPY, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %82
  %120 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %121 = load i32, i32* @NvSub2D, align 4
  %122 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %120, i32 %121, i32 684, i32 1)
  %123 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %124 = call i32 @OUT_RING(%struct.nouveau_channel* %123, i32 3)
  br label %125

125:                                              ; preds = %119, %82
  %126 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %127 = call i32 @FIRE_RING(%struct.nouveau_channel* %126)
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %125, %32
  %129 = load i32, i32* %3, align 4
  ret i32 %129
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
