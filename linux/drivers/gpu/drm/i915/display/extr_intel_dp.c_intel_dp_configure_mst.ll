; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_configure_mst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_configure_mst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.intel_dp = type { i32, i32, i32 }
%struct.intel_encoder = type { i32 }
%struct.TYPE_4__ = type { %struct.intel_encoder }

@.str = private unnamed_addr constant [50 x i8] c"MST support? port %c: %s, sink: %s, modparam: %s\0A\00", align 1
@i915_modparams = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @intel_dp_configure_mst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_configure_mst(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %5 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %6 = call %struct.TYPE_4__* @dp_to_dig_port(%struct.intel_dp* %5)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store %struct.intel_encoder* %7, %struct.intel_encoder** %3, align 8
  %8 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %9 = call i32 @intel_dp_sink_can_mst(%struct.intel_dp* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @port_name(i32 %12)
  %14 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %15 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @yesno(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @yesno(i32 %18)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @i915_modparams, i32 0, i32 0), align 4
  %21 = call i32 @yesno(i32 %20)
  %22 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17, i32 %19, i32 %21)
  %23 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %24 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %45

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @i915_modparams, i32 0, i32 0), align 4
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i1 [ false, %28 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %38 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %40 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %39, i32 0, i32 2
  %41 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %42 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @drm_dp_mst_topology_mgr_set_mst(i32* %40, i32 %43)
  br label %45

45:                                               ; preds = %34, %27
  ret void
}

declare dso_local %struct.TYPE_4__* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_sink_can_mst(%struct.intel_dp*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i32 @yesno(i32) #1

declare dso_local i32 @drm_dp_mst_topology_mgr_set_mst(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
