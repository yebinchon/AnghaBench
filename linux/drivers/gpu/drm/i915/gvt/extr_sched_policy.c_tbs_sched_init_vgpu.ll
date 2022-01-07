; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_sched_policy.c_tbs_sched_init_vgpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_sched_policy.c_tbs_sched_init_vgpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.vgpu_sched_data*, %struct.TYPE_4__ }
%struct.vgpu_sched_data = type { i32, %struct.intel_vgpu*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*)* @tbs_sched_init_vgpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tbs_sched_init_vgpu(%struct.intel_vgpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_vgpu*, align 8
  %4 = alloca %struct.vgpu_sched_data*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.vgpu_sched_data* @kzalloc(i32 24, i32 %5)
  store %struct.vgpu_sched_data* %6, %struct.vgpu_sched_data** %4, align 8
  %7 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %4, align 8
  %8 = icmp ne %struct.vgpu_sched_data* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %14 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %4, align 8
  %18 = getelementptr inbounds %struct.vgpu_sched_data, %struct.vgpu_sched_data* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %21 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %4, align 8
  %22 = getelementptr inbounds %struct.vgpu_sched_data, %struct.vgpu_sched_data* %21, i32 0, i32 1
  store %struct.intel_vgpu* %20, %struct.intel_vgpu** %22, align 8
  %23 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %4, align 8
  %24 = getelementptr inbounds %struct.vgpu_sched_data, %struct.vgpu_sched_data* %23, i32 0, i32 0
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %4, align 8
  %27 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %28 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %27, i32 0, i32 0
  store %struct.vgpu_sched_data* %26, %struct.vgpu_sched_data** %28, align 8
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %12, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.vgpu_sched_data* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
