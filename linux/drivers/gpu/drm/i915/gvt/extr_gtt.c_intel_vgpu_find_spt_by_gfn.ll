; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_vgpu_find_spt_by_gfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_vgpu_find_spt_by_gfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_ppgtt_spt = type { i32 }
%struct.intel_vgpu = type { i32 }
%struct.intel_vgpu_page_track = type { i64, %struct.intel_vgpu_ppgtt_spt* }

@ppgtt_write_protection_handler = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_vgpu_ppgtt_spt* (%struct.intel_vgpu*, i64)* @intel_vgpu_find_spt_by_gfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_vgpu_ppgtt_spt* @intel_vgpu_find_spt_by_gfn(%struct.intel_vgpu* %0, i64 %1) #0 {
  %3 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.intel_vgpu_page_track*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call %struct.intel_vgpu_page_track* @intel_vgpu_find_page_track(%struct.intel_vgpu* %7, i64 %8)
  store %struct.intel_vgpu_page_track* %9, %struct.intel_vgpu_page_track** %6, align 8
  %10 = load %struct.intel_vgpu_page_track*, %struct.intel_vgpu_page_track** %6, align 8
  %11 = icmp ne %struct.intel_vgpu_page_track* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.intel_vgpu_page_track*, %struct.intel_vgpu_page_track** %6, align 8
  %14 = getelementptr inbounds %struct.intel_vgpu_page_track, %struct.intel_vgpu_page_track* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ppgtt_write_protection_handler, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.intel_vgpu_page_track*, %struct.intel_vgpu_page_track** %6, align 8
  %20 = getelementptr inbounds %struct.intel_vgpu_page_track, %struct.intel_vgpu_page_track* %19, i32 0, i32 1
  %21 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %20, align 8
  store %struct.intel_vgpu_ppgtt_spt* %21, %struct.intel_vgpu_ppgtt_spt** %3, align 8
  br label %23

22:                                               ; preds = %12, %2
  store %struct.intel_vgpu_ppgtt_spt* null, %struct.intel_vgpu_ppgtt_spt** %3, align 8
  br label %23

23:                                               ; preds = %22, %18
  %24 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %3, align 8
  ret %struct.intel_vgpu_ppgtt_spt* %24
}

declare dso_local %struct.intel_vgpu_page_track* @intel_vgpu_find_page_track(%struct.intel_vgpu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
