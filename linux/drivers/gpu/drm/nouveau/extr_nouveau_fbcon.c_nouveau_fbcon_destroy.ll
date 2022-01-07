; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_fbdev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nouveau_framebuffer = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.nouveau_fbdev*)* @nouveau_fbcon_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_fbcon_destroy(%struct.drm_device* %0, %struct.nouveau_fbdev* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_fbdev*, align 8
  %5 = alloca %struct.nouveau_framebuffer*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.nouveau_fbdev* %1, %struct.nouveau_fbdev** %4, align 8
  %6 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %7 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.nouveau_framebuffer* @nouveau_framebuffer(i32 %9)
  store %struct.nouveau_framebuffer* %10, %struct.nouveau_framebuffer** %5, align 8
  %11 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %12 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %11, i32 0, i32 0
  %13 = call i32 @drm_fb_helper_unregister_fbi(%struct.TYPE_3__* %12)
  %14 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %15 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %14, i32 0, i32 0
  %16 = call i32 @drm_fb_helper_fini(%struct.TYPE_3__* %15)
  %17 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %5, align 8
  %18 = icmp ne %struct.nouveau_framebuffer* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %2
  %20 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %5, align 8
  %21 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %5, align 8
  %26 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %25, i32 0, i32 2
  %27 = call i32 @nouveau_vma_del(i32* %26)
  %28 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %5, align 8
  %29 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @nouveau_bo_unmap(i64 %30)
  %32 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %5, align 8
  %33 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @nouveau_bo_unpin(i64 %34)
  %36 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %5, align 8
  %37 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %36, i32 0, i32 0
  %38 = call i32 @drm_framebuffer_put(i32* %37)
  br label %39

39:                                               ; preds = %24, %19, %2
  ret i32 0
}

declare dso_local %struct.nouveau_framebuffer* @nouveau_framebuffer(i32) #1

declare dso_local i32 @drm_fb_helper_unregister_fbi(%struct.TYPE_3__*) #1

declare dso_local i32 @drm_fb_helper_fini(%struct.TYPE_3__*) #1

declare dso_local i32 @nouveau_vma_del(i32*) #1

declare dso_local i32 @nouveau_bo_unmap(i64) #1

declare dso_local i32 @nouveau_bo_unpin(i64) #1

declare dso_local i32 @drm_framebuffer_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
