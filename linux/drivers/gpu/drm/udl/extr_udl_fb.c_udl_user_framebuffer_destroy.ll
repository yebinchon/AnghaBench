; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_fb.c_udl_user_framebuffer_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_fb.c_udl_user_framebuffer_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.udl_framebuffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_framebuffer*)* @udl_user_framebuffer_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udl_user_framebuffer_destroy(%struct.drm_framebuffer* %0) #0 {
  %2 = alloca %struct.drm_framebuffer*, align 8
  %3 = alloca %struct.udl_framebuffer*, align 8
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %2, align 8
  %4 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %5 = call %struct.udl_framebuffer* @to_udl_fb(%struct.drm_framebuffer* %4)
  store %struct.udl_framebuffer* %5, %struct.udl_framebuffer** %3, align 8
  %6 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %3, align 8
  %7 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %3, align 8
  %12 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @drm_gem_object_put_unlocked(i32* %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %18 = call i32 @drm_framebuffer_cleanup(%struct.drm_framebuffer* %17)
  %19 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %3, align 8
  %20 = call i32 @kfree(%struct.udl_framebuffer* %19)
  ret void
}

declare dso_local %struct.udl_framebuffer* @to_udl_fb(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

declare dso_local i32 @drm_framebuffer_cleanup(%struct.drm_framebuffer*) #1

declare dso_local i32 @kfree(%struct.udl_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
