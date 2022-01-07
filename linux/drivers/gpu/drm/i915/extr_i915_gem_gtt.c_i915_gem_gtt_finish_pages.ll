; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_gem_gtt_finish_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_gem_gtt_finish_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sg_table = type { i32, i32 }
%struct.drm_i915_private = type { %struct.i915_ggtt, %struct.TYPE_6__ }
%struct.i915_ggtt = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }

@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to wait for idle; VT'd may hang.\0A\00", align 1
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_gem_gtt_finish_pages(%struct.drm_i915_gem_object* %0, %struct.sg_table* %1) #0 {
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.sg_table*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.i915_ggtt*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %3, align 8
  store %struct.sg_table* %1, %struct.sg_table** %4, align 8
  %8 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %9 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %5, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %6, align 8
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  store %struct.i915_ggtt* %19, %struct.i915_ggtt** %7, align 8
  %20 = load %struct.i915_ggtt*, %struct.i915_ggtt** %7, align 8
  %21 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %27 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %28 = call i64 @i915_gem_wait_for_idle(%struct.drm_i915_private* %26, i32 0, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @udelay(i32 10)
  br label %33

33:                                               ; preds = %30, %25
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %37 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %40 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %43 = call i32 @dma_unmap_sg(%struct.device* %35, i32 %38, i32 %41, i32 %42)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @i915_gem_wait_for_idle(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
