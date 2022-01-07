; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_connector_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_connector_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo_connector = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_sdvo_connector_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_sdvo_connector* ()* @intel_sdvo_connector_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_sdvo_connector* @intel_sdvo_connector_alloc() #0 {
  %1 = alloca %struct.intel_sdvo_connector*, align 8
  %2 = alloca %struct.intel_sdvo_connector*, align 8
  %3 = alloca %struct.intel_sdvo_connector_state*, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call i8* @kzalloc(i32 4, i32 %4)
  %6 = bitcast i8* %5 to %struct.intel_sdvo_connector*
  store %struct.intel_sdvo_connector* %6, %struct.intel_sdvo_connector** %2, align 8
  %7 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %2, align 8
  %8 = icmp ne %struct.intel_sdvo_connector* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store %struct.intel_sdvo_connector* null, %struct.intel_sdvo_connector** %1, align 8
  br label %28

10:                                               ; preds = %0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kzalloc(i32 4, i32 %11)
  %13 = bitcast i8* %12 to %struct.intel_sdvo_connector_state*
  store %struct.intel_sdvo_connector_state* %13, %struct.intel_sdvo_connector_state** %3, align 8
  %14 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %3, align 8
  %15 = icmp ne %struct.intel_sdvo_connector_state* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %2, align 8
  %18 = call i32 @kfree(%struct.intel_sdvo_connector* %17)
  store %struct.intel_sdvo_connector* null, %struct.intel_sdvo_connector** %1, align 8
  br label %28

19:                                               ; preds = %10
  %20 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %2, align 8
  %21 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %3, align 8
  %24 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @__drm_atomic_helper_connector_reset(i32* %22, i32* %25)
  %27 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %2, align 8
  store %struct.intel_sdvo_connector* %27, %struct.intel_sdvo_connector** %1, align 8
  br label %28

28:                                               ; preds = %19, %16, %9
  %29 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %1, align 8
  ret %struct.intel_sdvo_connector* %29
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.intel_sdvo_connector*) #1

declare dso_local i32 @__drm_atomic_helper_connector_reset(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
