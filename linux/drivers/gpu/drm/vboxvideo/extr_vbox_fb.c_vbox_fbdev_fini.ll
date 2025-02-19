; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_fb.c_vbox_fbdev_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_fb.c_vbox_fbdev_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbox_private = type { %struct.TYPE_5__, %struct.vbox_framebuffer }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.vbox_framebuffer = type { i32, i32* }
%struct.drm_gem_vram_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vbox_fbdev_fini(%struct.vbox_private* %0) #0 {
  %2 = alloca %struct.vbox_private*, align 8
  %3 = alloca %struct.vbox_framebuffer*, align 8
  %4 = alloca %struct.drm_gem_vram_object*, align 8
  store %struct.vbox_private* %0, %struct.vbox_private** %2, align 8
  %5 = load %struct.vbox_private*, %struct.vbox_private** %2, align 8
  %6 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %5, i32 0, i32 1
  store %struct.vbox_framebuffer* %6, %struct.vbox_framebuffer** %3, align 8
  %7 = load %struct.vbox_private*, %struct.vbox_private** %2, align 8
  %8 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %7, i32 0, i32 0
  %9 = call i32 @drm_fb_helper_unregister_fbi(%struct.TYPE_5__* %8)
  %10 = load %struct.vbox_framebuffer*, %struct.vbox_framebuffer** %3, align 8
  %11 = getelementptr inbounds %struct.vbox_framebuffer, %struct.vbox_framebuffer* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.vbox_framebuffer*, %struct.vbox_framebuffer** %3, align 8
  %16 = getelementptr inbounds %struct.vbox_framebuffer, %struct.vbox_framebuffer* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call %struct.drm_gem_vram_object* @drm_gem_vram_of_gem(i32* %17)
  store %struct.drm_gem_vram_object* %18, %struct.drm_gem_vram_object** %4, align 8
  %19 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %4, align 8
  %20 = call i32 @drm_gem_vram_kunmap(%struct.drm_gem_vram_object* %19)
  %21 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %4, align 8
  %22 = call i32 @drm_gem_vram_unpin(%struct.drm_gem_vram_object* %21)
  %23 = load %struct.vbox_framebuffer*, %struct.vbox_framebuffer** %3, align 8
  %24 = getelementptr inbounds %struct.vbox_framebuffer, %struct.vbox_framebuffer* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @drm_gem_object_put_unlocked(i32* %25)
  %27 = load %struct.vbox_framebuffer*, %struct.vbox_framebuffer** %3, align 8
  %28 = getelementptr inbounds %struct.vbox_framebuffer, %struct.vbox_framebuffer* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %14, %1
  %30 = load %struct.vbox_private*, %struct.vbox_private** %2, align 8
  %31 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %30, i32 0, i32 0
  %32 = call i32 @drm_fb_helper_fini(%struct.TYPE_5__* %31)
  %33 = load %struct.vbox_framebuffer*, %struct.vbox_framebuffer** %3, align 8
  %34 = getelementptr inbounds %struct.vbox_framebuffer, %struct.vbox_framebuffer* %33, i32 0, i32 0
  %35 = call i32 @drm_framebuffer_unregister_private(i32* %34)
  %36 = load %struct.vbox_framebuffer*, %struct.vbox_framebuffer** %3, align 8
  %37 = getelementptr inbounds %struct.vbox_framebuffer, %struct.vbox_framebuffer* %36, i32 0, i32 0
  %38 = call i32 @drm_framebuffer_cleanup(i32* %37)
  ret void
}

declare dso_local i32 @drm_fb_helper_unregister_fbi(%struct.TYPE_5__*) #1

declare dso_local %struct.drm_gem_vram_object* @drm_gem_vram_of_gem(i32*) #1

declare dso_local i32 @drm_gem_vram_kunmap(%struct.drm_gem_vram_object*) #1

declare dso_local i32 @drm_gem_vram_unpin(%struct.drm_gem_vram_object*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

declare dso_local i32 @drm_fb_helper_fini(%struct.TYPE_5__*) #1

declare dso_local i32 @drm_framebuffer_unregister_private(i32*) #1

declare dso_local i32 @drm_framebuffer_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
