; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { %struct.TYPE_6__, i32, i32, %struct.fb_info*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.fb_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32* }

@drm_fbdev_emulation = common dso_local global i32 0, align 4
@kernel_fb_helper_lock = common dso_local global i32 0, align 4
@kernel_fb_helper_list = common dso_local global i32 0, align 4
@sysrq_drm_fb_helper_restore_op = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_fb_helper_fini(%struct.drm_fb_helper* %0) #0 {
  %2 = alloca %struct.drm_fb_helper*, align 8
  %3 = alloca %struct.fb_info*, align 8
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %2, align 8
  %4 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %5 = icmp ne %struct.drm_fb_helper* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %71

7:                                                ; preds = %1
  %8 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %9 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %8, i32 0, i32 6
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* @drm_fbdev_emulation, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  br label %71

15:                                               ; preds = %7
  %16 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %17 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %16, i32 0, i32 5
  %18 = call i32 @cancel_work_sync(i32* %17)
  %19 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %20 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %19, i32 0, i32 4
  %21 = call i32 @cancel_work_sync(i32* %20)
  %22 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %23 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %22, i32 0, i32 3
  %24 = load %struct.fb_info*, %struct.fb_info** %23, align 8
  store %struct.fb_info* %24, %struct.fb_info** %3, align 8
  %25 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %26 = icmp ne %struct.fb_info* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %15
  %28 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 0
  %36 = call i32 @fb_dealloc_cmap(%struct.TYPE_5__* %35)
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %39 = call i32 @framebuffer_release(%struct.fb_info* %38)
  br label %40

40:                                               ; preds = %37, %15
  %41 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %42 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %41, i32 0, i32 3
  store %struct.fb_info* null, %struct.fb_info** %42, align 8
  %43 = call i32 @mutex_lock(i32* @kernel_fb_helper_lock)
  %44 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %45 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %44, i32 0, i32 2
  %46 = call i64 @list_empty(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %40
  %49 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %50 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %49, i32 0, i32 2
  %51 = call i32 @list_del(i32* %50)
  %52 = call i64 @list_empty(i32* @kernel_fb_helper_list)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call i32 @unregister_sysrq_key(i8 signext 118, i32* @sysrq_drm_fb_helper_restore_op)
  br label %56

56:                                               ; preds = %54, %48
  br label %57

57:                                               ; preds = %56, %40
  %58 = call i32 @mutex_unlock(i32* @kernel_fb_helper_lock)
  %59 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %60 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %59, i32 0, i32 1
  %61 = call i32 @mutex_destroy(i32* %60)
  %62 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %63 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %57
  %68 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %69 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %68, i32 0, i32 0
  %70 = call i32 @drm_client_release(%struct.TYPE_6__* %69)
  br label %71

71:                                               ; preds = %6, %14, %67, %57
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @fb_dealloc_cmap(%struct.TYPE_5__*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @unregister_sysrq_key(i8 signext, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @drm_client_release(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
