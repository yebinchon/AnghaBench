; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_fb.c_udl_fbdev_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_fb.c_udl_fbdev_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.udl_fbdev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.udl_fbdev*)* @udl_fbdev_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udl_fbdev_destroy(%struct.drm_device* %0, %struct.udl_fbdev* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.udl_fbdev*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.udl_fbdev* %1, %struct.udl_fbdev** %4, align 8
  %5 = load %struct.udl_fbdev*, %struct.udl_fbdev** %4, align 8
  %6 = getelementptr inbounds %struct.udl_fbdev, %struct.udl_fbdev* %5, i32 0, i32 1
  %7 = call i32 @drm_fb_helper_unregister_fbi(i32* %6)
  %8 = load %struct.udl_fbdev*, %struct.udl_fbdev** %4, align 8
  %9 = getelementptr inbounds %struct.udl_fbdev, %struct.udl_fbdev* %8, i32 0, i32 1
  %10 = call i32 @drm_fb_helper_fini(i32* %9)
  %11 = load %struct.udl_fbdev*, %struct.udl_fbdev** %4, align 8
  %12 = getelementptr inbounds %struct.udl_fbdev, %struct.udl_fbdev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load %struct.udl_fbdev*, %struct.udl_fbdev** %4, align 8
  %18 = getelementptr inbounds %struct.udl_fbdev, %struct.udl_fbdev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = call i32 @drm_framebuffer_unregister_private(i32* %19)
  %21 = load %struct.udl_fbdev*, %struct.udl_fbdev** %4, align 8
  %22 = getelementptr inbounds %struct.udl_fbdev, %struct.udl_fbdev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = call i32 @drm_framebuffer_cleanup(i32* %23)
  %25 = load %struct.udl_fbdev*, %struct.udl_fbdev** %4, align 8
  %26 = getelementptr inbounds %struct.udl_fbdev, %struct.udl_fbdev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @drm_gem_object_put_unlocked(i32* %29)
  br label %31

31:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @drm_fb_helper_unregister_fbi(i32*) #1

declare dso_local i32 @drm_fb_helper_fini(i32*) #1

declare dso_local i32 @drm_framebuffer_unregister_private(i32*) #1

declare dso_local i32 @drm_framebuffer_cleanup(i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
