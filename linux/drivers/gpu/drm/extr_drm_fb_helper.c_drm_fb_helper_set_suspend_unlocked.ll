; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_set_suspend_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_set_suspend_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_fb_helper_set_suspend_unlocked(%struct.drm_fb_helper* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_fb_helper*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %6 = icmp ne %struct.drm_fb_helper* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %9 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %2
  br label %54

13:                                               ; preds = %7
  %14 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %15 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %14, i32 0, i32 1
  %16 = call i32 @flush_work(i32* %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %21 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %54

28:                                               ; preds = %19
  %29 = call i32 (...) @console_lock()
  br label %47

30:                                               ; preds = %13
  %31 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %32 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %54

39:                                               ; preds = %30
  %40 = call i32 (...) @console_trylock()
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %44 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %43, i32 0, i32 1
  %45 = call i32 @schedule_work(i32* %44)
  br label %54

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %28
  %48 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %49 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @fb_set_suspend(%struct.TYPE_2__* %50, i32 %51)
  %53 = call i32 (...) @console_unlock()
  br label %54

54:                                               ; preds = %47, %42, %38, %27, %12
  ret void
}

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @console_lock(...) #1

declare dso_local i32 @console_trylock(...) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @fb_set_suspend(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @console_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
