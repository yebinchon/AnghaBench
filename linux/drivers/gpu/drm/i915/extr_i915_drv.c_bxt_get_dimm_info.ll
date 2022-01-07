; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_bxt_get_dimm_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_bxt_get_dimm_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dram_dimm_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dram_dimm_info*, i32)* @bxt_get_dimm_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxt_get_dimm_info(%struct.dram_dimm_info* %0, i32 %1) #0 {
  %3 = alloca %struct.dram_dimm_info*, align 8
  %4 = alloca i32, align 4
  store %struct.dram_dimm_info* %0, %struct.dram_dimm_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @bxt_get_dimm_width(i32 %5)
  %7 = load %struct.dram_dimm_info*, %struct.dram_dimm_info** %3, align 8
  %8 = getelementptr inbounds %struct.dram_dimm_info, %struct.dram_dimm_info* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @bxt_get_dimm_ranks(i32 %9)
  %11 = load %struct.dram_dimm_info*, %struct.dram_dimm_info** %3, align 8
  %12 = getelementptr inbounds %struct.dram_dimm_info, %struct.dram_dimm_info* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @bxt_get_dimm_size(i32 %13)
  %15 = load %struct.dram_dimm_info*, %struct.dram_dimm_info** %3, align 8
  %16 = call i32 @intel_dimm_num_devices(%struct.dram_dimm_info* %15)
  %17 = mul nsw i32 %14, %16
  %18 = sdiv i32 %17, 8
  %19 = load %struct.dram_dimm_info*, %struct.dram_dimm_info** %3, align 8
  %20 = getelementptr inbounds %struct.dram_dimm_info, %struct.dram_dimm_info* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  ret void
}

declare dso_local i32 @bxt_get_dimm_width(i32) #1

declare dso_local i32 @bxt_get_dimm_ranks(i32) #1

declare dso_local i32 @bxt_get_dimm_size(i32) #1

declare dso_local i32 @intel_dimm_num_devices(%struct.dram_dimm_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
