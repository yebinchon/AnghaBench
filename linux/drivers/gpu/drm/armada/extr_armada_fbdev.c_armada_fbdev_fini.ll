; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_fbdev.c_armada_fbdev_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_fbdev.c_armada_fbdev_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.armada_private* }
%struct.armada_private = type { %struct.drm_fb_helper* }
%struct.drm_fb_helper = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @armada_fbdev_fini(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.armada_private*, align 8
  %4 = alloca %struct.drm_fb_helper*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.armada_private*, %struct.armada_private** %6, align 8
  store %struct.armada_private* %7, %struct.armada_private** %3, align 8
  %8 = load %struct.armada_private*, %struct.armada_private** %3, align 8
  %9 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %8, i32 0, i32 0
  %10 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %9, align 8
  store %struct.drm_fb_helper* %10, %struct.drm_fb_helper** %4, align 8
  %11 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %12 = icmp ne %struct.drm_fb_helper* %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %1
  %14 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %15 = call i32 @drm_fb_helper_unregister_fbi(%struct.drm_fb_helper* %14)
  %16 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %17 = call i32 @drm_fb_helper_fini(%struct.drm_fb_helper* %16)
  %18 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %19 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %13
  %23 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %24 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %28, align 8
  %30 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %31 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 %29(%struct.TYPE_4__* %32)
  br label %34

34:                                               ; preds = %22, %13
  %35 = load %struct.armada_private*, %struct.armada_private** %3, align 8
  %36 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %35, i32 0, i32 0
  store %struct.drm_fb_helper* null, %struct.drm_fb_helper** %36, align 8
  br label %37

37:                                               ; preds = %34, %1
  ret void
}

declare dso_local i32 @drm_fb_helper_unregister_fbi(%struct.drm_fb_helper*) #1

declare dso_local i32 @drm_fb_helper_fini(%struct.drm_fb_helper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
