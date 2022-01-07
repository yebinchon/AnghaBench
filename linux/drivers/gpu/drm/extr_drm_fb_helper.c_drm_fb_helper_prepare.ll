; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_fb_helper = type { %struct.drm_device*, %struct.drm_fb_helper_funcs*, i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_fb_helper_funcs = type { i32 }

@drm_fb_helper_resume_worker = common dso_local global i32 0, align 4
@drm_fb_helper_dirty_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_fb_helper_prepare(%struct.drm_device* %0, %struct.drm_fb_helper* %1, %struct.drm_fb_helper_funcs* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_fb_helper*, align 8
  %6 = alloca %struct.drm_fb_helper_funcs*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_fb_helper* %1, %struct.drm_fb_helper** %5, align 8
  store %struct.drm_fb_helper_funcs* %2, %struct.drm_fb_helper_funcs** %6, align 8
  %7 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %8 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %7, i32 0, i32 7
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  %10 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %11 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %10, i32 0, i32 6
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %14 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %13, i32 0, i32 5
  %15 = load i32, i32* @drm_fb_helper_resume_worker, align 4
  %16 = call i32 @INIT_WORK(i32* %14, i32 %15)
  %17 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %18 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %17, i32 0, i32 4
  %19 = load i32, i32* @drm_fb_helper_dirty_work, align 4
  %20 = call i32 @INIT_WORK(i32* %18, i32 %19)
  %21 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %22 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 4
  %24 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %25 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 -1, i32* %26, align 4
  %27 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %28 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %27, i32 0, i32 2
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.drm_fb_helper_funcs*, %struct.drm_fb_helper_funcs** %6, align 8
  %31 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %32 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %31, i32 0, i32 1
  store %struct.drm_fb_helper_funcs* %30, %struct.drm_fb_helper_funcs** %32, align 8
  %33 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %34 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %35 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %34, i32 0, i32 0
  store %struct.drm_device* %33, %struct.drm_device** %35, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
