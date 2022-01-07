; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_guc_add_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_guc_add_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { %struct.intel_guc_client* }
%struct.intel_guc_client = type { i32 }
%struct.i915_request = type { %struct.TYPE_3__, i32, i32, %struct.TYPE_4__*, %struct.intel_engine_cs* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.intel_engine_cs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_guc*, %struct.i915_request*)* @guc_add_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guc_add_request(%struct.intel_guc* %0, %struct.i915_request* %1) #0 {
  %3 = alloca %struct.intel_guc*, align 8
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca %struct.intel_guc_client*, align 8
  %6 = alloca %struct.intel_engine_cs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_guc* %0, %struct.intel_guc** %3, align 8
  store %struct.i915_request* %1, %struct.i915_request** %4, align 8
  %9 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %10 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %9, i32 0, i32 0
  %11 = load %struct.intel_guc_client*, %struct.intel_guc_client** %10, align 8
  store %struct.intel_guc_client* %11, %struct.intel_guc_client** %5, align 8
  %12 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %13 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %12, i32 0, i32 4
  %14 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %13, align 8
  store %struct.intel_engine_cs* %14, %struct.intel_engine_cs** %6, align 8
  %15 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %16 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @lower_32_bits(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %22 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %25 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @intel_ring_set_tail(i32 %23, i32 %26)
  %28 = sext i32 %27 to i64
  %29 = udiv i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load %struct.intel_guc_client*, %struct.intel_guc_client** %5, align 8
  %32 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %33 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %38 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @guc_wq_item_append(%struct.intel_guc_client* %31, i32 %34, i32 %35, i32 %36, i32 %40)
  %42 = load %struct.intel_guc_client*, %struct.intel_guc_client** %5, align 8
  %43 = call i32 @guc_ring_doorbell(%struct.intel_guc_client* %42)
  ret void
}

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @intel_ring_set_tail(i32, i32) #1

declare dso_local i32 @guc_wq_item_append(%struct.intel_guc_client*, i32, i32, i32, i32) #1

declare dso_local i32 @guc_ring_doorbell(%struct.intel_guc_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
