; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_ttm.c_hibmc_user_framebuffer_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_ttm.c_hibmc_user_framebuffer_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.hibmc_framebuffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_framebuffer*)* @hibmc_user_framebuffer_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hibmc_user_framebuffer_destroy(%struct.drm_framebuffer* %0) #0 {
  %2 = alloca %struct.drm_framebuffer*, align 8
  %3 = alloca %struct.hibmc_framebuffer*, align 8
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %2, align 8
  %4 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %5 = call %struct.hibmc_framebuffer* @to_hibmc_framebuffer(%struct.drm_framebuffer* %4)
  store %struct.hibmc_framebuffer* %5, %struct.hibmc_framebuffer** %3, align 8
  %6 = load %struct.hibmc_framebuffer*, %struct.hibmc_framebuffer** %3, align 8
  %7 = getelementptr inbounds %struct.hibmc_framebuffer, %struct.hibmc_framebuffer* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @drm_gem_object_put_unlocked(i32 %8)
  %10 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %11 = call i32 @drm_framebuffer_cleanup(%struct.drm_framebuffer* %10)
  %12 = load %struct.hibmc_framebuffer*, %struct.hibmc_framebuffer** %3, align 8
  %13 = call i32 @kfree(%struct.hibmc_framebuffer* %12)
  ret void
}

declare dso_local %struct.hibmc_framebuffer* @to_hibmc_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32) #1

declare dso_local i32 @drm_framebuffer_cleanup(%struct.drm_framebuffer*) #1

declare dso_local i32 @kfree(%struct.hibmc_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
