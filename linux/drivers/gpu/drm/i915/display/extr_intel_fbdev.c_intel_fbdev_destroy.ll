; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbdev.c_intel_fbdev_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbdev.c_intel_fbdev_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_fbdev = type { %struct.TYPE_4__*, %struct.TYPE_6__, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_fbdev*)* @intel_fbdev_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_fbdev_destroy(%struct.intel_fbdev* %0) #0 {
  %2 = alloca %struct.intel_fbdev*, align 8
  store %struct.intel_fbdev* %0, %struct.intel_fbdev** %2, align 8
  %3 = load %struct.intel_fbdev*, %struct.intel_fbdev** %2, align 8
  %4 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %3, i32 0, i32 1
  %5 = call i32 @drm_fb_helper_fini(%struct.TYPE_6__* %4)
  %6 = load %struct.intel_fbdev*, %struct.intel_fbdev** %2, align 8
  %7 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load %struct.intel_fbdev*, %struct.intel_fbdev** %2, align 8
  %12 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.intel_fbdev*, %struct.intel_fbdev** %2, align 8
  %18 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.intel_fbdev*, %struct.intel_fbdev** %2, align 8
  %21 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @intel_unpin_fb_vma(i64 %19, i32 %22)
  %24 = load %struct.intel_fbdev*, %struct.intel_fbdev** %2, align 8
  %25 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  br label %30

30:                                               ; preds = %10, %1
  %31 = load %struct.intel_fbdev*, %struct.intel_fbdev** %2, align 8
  %32 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.intel_fbdev*, %struct.intel_fbdev** %2, align 8
  %37 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @drm_framebuffer_remove(i32* %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.intel_fbdev*, %struct.intel_fbdev** %2, align 8
  %43 = call i32 @kfree(%struct.intel_fbdev* %42)
  ret void
}

declare dso_local i32 @drm_fb_helper_fini(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_unpin_fb_vma(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_framebuffer_remove(i32*) #1

declare dso_local i32 @kfree(%struct.intel_fbdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
