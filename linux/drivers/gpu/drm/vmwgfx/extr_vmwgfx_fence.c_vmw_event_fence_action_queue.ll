; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fence.c_vmw_event_fence_action_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fence.c_vmw_event_fence_action_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.vmw_fence_obj = type { i32 }
%struct.drm_pending_event = type { i32 }
%struct.vmw_event_fence_action = type { %struct.TYPE_4__, i32*, i32*, i32, i32, %struct.drm_pending_event* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.vmw_fence_manager = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vmw_event_fence_action_seq_passed = common dso_local global i32 0, align 4
@vmw_event_fence_action_cleanup = common dso_local global i32 0, align 4
@VMW_ACTION_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_event_fence_action_queue(%struct.drm_file* %0, %struct.vmw_fence_obj* %1, %struct.drm_pending_event* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca %struct.vmw_fence_obj*, align 8
  %10 = alloca %struct.drm_pending_event*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.vmw_event_fence_action*, align 8
  %15 = alloca %struct.vmw_fence_manager*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %8, align 8
  store %struct.vmw_fence_obj* %1, %struct.vmw_fence_obj** %9, align 8
  store %struct.drm_pending_event* %2, %struct.drm_pending_event** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %9, align 8
  %17 = call %struct.vmw_fence_manager* @fman_from_fence(%struct.vmw_fence_obj* %16)
  store %struct.vmw_fence_manager* %17, %struct.vmw_fence_manager** %15, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.vmw_event_fence_action* @kzalloc(i32 48, i32 %18)
  store %struct.vmw_event_fence_action* %19, %struct.vmw_event_fence_action** %14, align 8
  %20 = load %struct.vmw_event_fence_action*, %struct.vmw_event_fence_action** %14, align 8
  %21 = icmp ne %struct.vmw_event_fence_action* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %66

29:                                               ; preds = %6
  %30 = load %struct.drm_pending_event*, %struct.drm_pending_event** %10, align 8
  %31 = load %struct.vmw_event_fence_action*, %struct.vmw_event_fence_action** %14, align 8
  %32 = getelementptr inbounds %struct.vmw_event_fence_action, %struct.vmw_event_fence_action* %31, i32 0, i32 5
  store %struct.drm_pending_event* %30, %struct.drm_pending_event** %32, align 8
  %33 = load i32, i32* @vmw_event_fence_action_seq_passed, align 4
  %34 = load %struct.vmw_event_fence_action*, %struct.vmw_event_fence_action** %14, align 8
  %35 = getelementptr inbounds %struct.vmw_event_fence_action, %struct.vmw_event_fence_action* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* @vmw_event_fence_action_cleanup, align 4
  %38 = load %struct.vmw_event_fence_action*, %struct.vmw_event_fence_action** %14, align 8
  %39 = getelementptr inbounds %struct.vmw_event_fence_action, %struct.vmw_event_fence_action* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @VMW_ACTION_EVENT, align 4
  %42 = load %struct.vmw_event_fence_action*, %struct.vmw_event_fence_action** %14, align 8
  %43 = getelementptr inbounds %struct.vmw_event_fence_action, %struct.vmw_event_fence_action* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %9, align 8
  %46 = call i32 @vmw_fence_obj_reference(%struct.vmw_fence_obj* %45)
  %47 = load %struct.vmw_event_fence_action*, %struct.vmw_event_fence_action** %14, align 8
  %48 = getelementptr inbounds %struct.vmw_event_fence_action, %struct.vmw_event_fence_action* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %15, align 8
  %50 = getelementptr inbounds %struct.vmw_fence_manager, %struct.vmw_fence_manager* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vmw_event_fence_action*, %struct.vmw_event_fence_action** %14, align 8
  %55 = getelementptr inbounds %struct.vmw_event_fence_action, %struct.vmw_event_fence_action* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load %struct.vmw_event_fence_action*, %struct.vmw_event_fence_action** %14, align 8
  %58 = getelementptr inbounds %struct.vmw_event_fence_action, %struct.vmw_event_fence_action* %57, i32 0, i32 2
  store i32* %56, i32** %58, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load %struct.vmw_event_fence_action*, %struct.vmw_event_fence_action** %14, align 8
  %61 = getelementptr inbounds %struct.vmw_event_fence_action, %struct.vmw_event_fence_action* %60, i32 0, i32 1
  store i32* %59, i32** %61, align 8
  %62 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %9, align 8
  %63 = load %struct.vmw_event_fence_action*, %struct.vmw_event_fence_action** %14, align 8
  %64 = getelementptr inbounds %struct.vmw_event_fence_action, %struct.vmw_event_fence_action* %63, i32 0, i32 0
  %65 = call i32 @vmw_fence_obj_add_action(%struct.vmw_fence_obj* %62, %struct.TYPE_4__* %64)
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %29, %26
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local %struct.vmw_fence_manager* @fman_from_fence(%struct.vmw_fence_obj*) #1

declare dso_local %struct.vmw_event_fence_action* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmw_fence_obj_reference(%struct.vmw_fence_obj*) #1

declare dso_local i32 @vmw_fence_obj_add_action(%struct.vmw_fence_obj*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
