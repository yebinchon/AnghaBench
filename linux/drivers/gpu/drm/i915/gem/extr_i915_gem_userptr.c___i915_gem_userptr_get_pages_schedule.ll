; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_userptr.c___i915_gem_userptr_get_pages_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_userptr.c___i915_gem_userptr_get_pages_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32* }
%struct.get_pages_work = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@__i915_gem_userptr_get_pages_worker = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sg_table* (%struct.drm_i915_gem_object*)* @__i915_gem_userptr_get_pages_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sg_table* @__i915_gem_userptr_get_pages_schedule(%struct.drm_i915_gem_object* %0) #0 {
  %2 = alloca %struct.sg_table*, align 8
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.get_pages_work*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.get_pages_work* @kmalloc(i32 12, i32 %5)
  store %struct.get_pages_work* %6, %struct.get_pages_work** %4, align 8
  %7 = load %struct.get_pages_work*, %struct.get_pages_work** %4, align 8
  %8 = icmp eq %struct.get_pages_work* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.sg_table* @ERR_PTR(i32 %11)
  store %struct.sg_table* %12, %struct.sg_table** %2, align 8
  br label %48

13:                                               ; preds = %1
  %14 = load %struct.get_pages_work*, %struct.get_pages_work** %4, align 8
  %15 = getelementptr inbounds %struct.get_pages_work, %struct.get_pages_work* %14, i32 0, i32 0
  %16 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %17 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i32* %15, i32** %18, align 8
  %19 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %20 = call i32 @i915_gem_object_get(%struct.drm_i915_gem_object* %19)
  %21 = load %struct.get_pages_work*, %struct.get_pages_work** %4, align 8
  %22 = getelementptr inbounds %struct.get_pages_work, %struct.get_pages_work* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @current, align 4
  %24 = load %struct.get_pages_work*, %struct.get_pages_work** %4, align 8
  %25 = getelementptr inbounds %struct.get_pages_work, %struct.get_pages_work* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.get_pages_work*, %struct.get_pages_work** %4, align 8
  %27 = getelementptr inbounds %struct.get_pages_work, %struct.get_pages_work* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @get_task_struct(i32 %28)
  %30 = load %struct.get_pages_work*, %struct.get_pages_work** %4, align 8
  %31 = getelementptr inbounds %struct.get_pages_work, %struct.get_pages_work* %30, i32 0, i32 0
  %32 = load i32, i32* @__i915_gem_userptr_get_pages_worker, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  %34 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %35 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.TYPE_8__* @to_i915(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.get_pages_work*, %struct.get_pages_work** %4, align 8
  %43 = getelementptr inbounds %struct.get_pages_work, %struct.get_pages_work* %42, i32 0, i32 0
  %44 = call i32 @queue_work(i32 %41, i32* %43)
  %45 = load i32, i32* @EAGAIN, align 4
  %46 = sub nsw i32 0, %45
  %47 = call %struct.sg_table* @ERR_PTR(i32 %46)
  store %struct.sg_table* %47, %struct.sg_table** %2, align 8
  br label %48

48:                                               ; preds = %13, %9
  %49 = load %struct.sg_table*, %struct.sg_table** %2, align 8
  ret %struct.sg_table* %49
}

declare dso_local %struct.get_pages_work* @kmalloc(i32, i32) #1

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

declare dso_local i32 @i915_gem_object_get(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @get_task_struct(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local %struct.TYPE_8__* @to_i915(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
