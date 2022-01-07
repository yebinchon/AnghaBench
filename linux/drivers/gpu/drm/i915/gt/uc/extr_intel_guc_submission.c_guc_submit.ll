; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_guc_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_guc_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.intel_guc }
%struct.intel_guc = type { %struct.intel_guc_client* }
%struct.intel_guc_client = type { i32 }
%struct.i915_request = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*, %struct.i915_request**, %struct.i915_request**)* @guc_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guc_submit(%struct.intel_engine_cs* %0, %struct.i915_request** %1, %struct.i915_request** %2) #0 {
  %4 = alloca %struct.intel_engine_cs*, align 8
  %5 = alloca %struct.i915_request**, align 8
  %6 = alloca %struct.i915_request**, align 8
  %7 = alloca %struct.intel_guc*, align 8
  %8 = alloca %struct.intel_guc_client*, align 8
  %9 = alloca %struct.i915_request*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %4, align 8
  store %struct.i915_request** %1, %struct.i915_request*** %5, align 8
  store %struct.i915_request** %2, %struct.i915_request*** %6, align 8
  %10 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %11 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.intel_guc* %14, %struct.intel_guc** %7, align 8
  %15 = load %struct.intel_guc*, %struct.intel_guc** %7, align 8
  %16 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %15, i32 0, i32 0
  %17 = load %struct.intel_guc_client*, %struct.intel_guc_client** %16, align 8
  store %struct.intel_guc_client* %17, %struct.intel_guc_client** %8, align 8
  %18 = load %struct.intel_guc_client*, %struct.intel_guc_client** %8, align 8
  %19 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  br label %21

21:                                               ; preds = %34, %3
  %22 = load %struct.i915_request**, %struct.i915_request*** %5, align 8
  %23 = getelementptr inbounds %struct.i915_request*, %struct.i915_request** %22, i32 1
  store %struct.i915_request** %23, %struct.i915_request*** %5, align 8
  %24 = load %struct.i915_request*, %struct.i915_request** %22, align 8
  store %struct.i915_request* %24, %struct.i915_request** %9, align 8
  %25 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %26 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @flush_ggtt_writes(i32 %29)
  %31 = load %struct.intel_guc*, %struct.intel_guc** %7, align 8
  %32 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %33 = call i32 @guc_add_request(%struct.intel_guc* %31, %struct.i915_request* %32)
  br label %34

34:                                               ; preds = %21
  %35 = load %struct.i915_request**, %struct.i915_request*** %5, align 8
  %36 = load %struct.i915_request**, %struct.i915_request*** %6, align 8
  %37 = icmp ne %struct.i915_request** %35, %36
  br i1 %37, label %21, label %38

38:                                               ; preds = %34
  %39 = load %struct.intel_guc_client*, %struct.intel_guc_client** %8, align 8
  %40 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock(i32* %40)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @flush_ggtt_writes(i32) #1

declare dso_local i32 @guc_add_request(%struct.intel_guc*, %struct.i915_request*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
