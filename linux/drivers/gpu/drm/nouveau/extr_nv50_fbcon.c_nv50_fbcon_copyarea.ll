; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv50_fbcon.c_nv50_fbcon_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv50_fbcon.c_nv50_fbcon_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.nouveau_fbdev* }
%struct.nouveau_fbdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.nouveau_drm = type { %struct.nouveau_channel* }
%struct.nouveau_channel = type { i32 }

@NvSub2D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_fbcon_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_copyarea*, align 8
  %6 = alloca %struct.nouveau_fbdev*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nouveau_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 0
  %12 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %11, align 8
  store %struct.nouveau_fbdev* %12, %struct.nouveau_fbdev** %6, align 8
  %13 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %6, align 8
  %14 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.nouveau_drm* @nouveau_drm(i32 %16)
  store %struct.nouveau_drm* %17, %struct.nouveau_drm** %7, align 8
  %18 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %19 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %18, i32 0, i32 0
  %20 = load %struct.nouveau_channel*, %struct.nouveau_channel** %19, align 8
  store %struct.nouveau_channel* %20, %struct.nouveau_channel** %8, align 8
  %21 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %22 = call i32 @RING_SPACE(%struct.nouveau_channel* %21, i32 12)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %75

27:                                               ; preds = %2
  %28 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %29 = load i32, i32* @NvSub2D, align 4
  %30 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %28, i32 %29, i32 272, i32 1)
  %31 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %32 = call i32 @OUT_RING(%struct.nouveau_channel* %31, i32 0)
  %33 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %34 = load i32, i32* @NvSub2D, align 4
  %35 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %33, i32 %34, i32 2224, i32 4)
  %36 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %37 = load %struct.fb_copyarea*, %struct.fb_copyarea** %5, align 8
  %38 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @OUT_RING(%struct.nouveau_channel* %36, i32 %39)
  %41 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %42 = load %struct.fb_copyarea*, %struct.fb_copyarea** %5, align 8
  %43 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @OUT_RING(%struct.nouveau_channel* %41, i32 %44)
  %46 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %47 = load %struct.fb_copyarea*, %struct.fb_copyarea** %5, align 8
  %48 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @OUT_RING(%struct.nouveau_channel* %46, i32 %49)
  %51 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %52 = load %struct.fb_copyarea*, %struct.fb_copyarea** %5, align 8
  %53 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @OUT_RING(%struct.nouveau_channel* %51, i32 %54)
  %56 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %57 = load i32, i32* @NvSub2D, align 4
  %58 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %56, i32 %57, i32 2256, i32 4)
  %59 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %60 = call i32 @OUT_RING(%struct.nouveau_channel* %59, i32 0)
  %61 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %62 = load %struct.fb_copyarea*, %struct.fb_copyarea** %5, align 8
  %63 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @OUT_RING(%struct.nouveau_channel* %61, i32 %64)
  %66 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %67 = call i32 @OUT_RING(%struct.nouveau_channel* %66, i32 0)
  %68 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %69 = load %struct.fb_copyarea*, %struct.fb_copyarea** %5, align 8
  %70 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @OUT_RING(%struct.nouveau_channel* %68, i32 %71)
  %73 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %74 = call i32 @FIRE_RING(%struct.nouveau_channel* %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %27, %25
  %76 = load i32, i32* %3, align 4
  ret i32 %76
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
