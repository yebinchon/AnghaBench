; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_alloc_spt_gfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_alloc_spt_gfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_ppgtt_spt = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.intel_vgpu = type { i32 }

@ppgtt_write_protection_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_vgpu_ppgtt_spt* (%struct.intel_vgpu*, i32, i64, i32)* @ppgtt_alloc_spt_gfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_vgpu_ppgtt_spt* @ppgtt_alloc_spt_gfn(%struct.intel_vgpu* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  %11 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.intel_vgpu_ppgtt_spt* @ppgtt_alloc_spt(%struct.intel_vgpu* %12, i32 %13)
  store %struct.intel_vgpu_ppgtt_spt* %14, %struct.intel_vgpu_ppgtt_spt** %10, align 8
  %15 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %10, align 8
  %16 = call i64 @IS_ERR(%struct.intel_vgpu_ppgtt_spt* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %10, align 8
  store %struct.intel_vgpu_ppgtt_spt* %19, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  br label %58

20:                                               ; preds = %4
  %21 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* @ppgtt_write_protection_handler, align 4
  %24 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %10, align 8
  %25 = call i32 @intel_vgpu_register_page_track(%struct.intel_vgpu* %21, i64 %22, i32 %23, %struct.intel_vgpu_ppgtt_spt* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %10, align 8
  %30 = call i32 @ppgtt_free_spt(%struct.intel_vgpu_ppgtt_spt* %29)
  %31 = load i32, i32* %11, align 4
  %32 = call %struct.intel_vgpu_ppgtt_spt* @ERR_PTR(i32 %31)
  store %struct.intel_vgpu_ppgtt_spt* %32, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  br label %58

33:                                               ; preds = %20
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %10, align 8
  %36 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %10, align 8
  %40 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i64 %38, i64* %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %10, align 8
  %44 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 8
  %46 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %47 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %10, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %10, align 8
  %52 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @trace_spt_alloc(i32 %48, %struct.intel_vgpu_ppgtt_spt* %49, i32 %50, i32 %54, i64 %55)
  %57 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %10, align 8
  store %struct.intel_vgpu_ppgtt_spt* %57, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  br label %58

58:                                               ; preds = %33, %28, %18
  %59 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  ret %struct.intel_vgpu_ppgtt_spt* %59
}

declare dso_local %struct.intel_vgpu_ppgtt_spt* @ppgtt_alloc_spt(%struct.intel_vgpu*, i32) #1

declare dso_local i64 @IS_ERR(%struct.intel_vgpu_ppgtt_spt*) #1

declare dso_local i32 @intel_vgpu_register_page_track(%struct.intel_vgpu*, i64, i32, %struct.intel_vgpu_ppgtt_spt*) #1

declare dso_local i32 @ppgtt_free_spt(%struct.intel_vgpu_ppgtt_spt*) #1

declare dso_local %struct.intel_vgpu_ppgtt_spt* @ERR_PTR(i32) #1

declare dso_local i32 @trace_spt_alloc(i32, %struct.intel_vgpu_ppgtt_spt*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
