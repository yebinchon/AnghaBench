; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_gen8_gtt_clear_ips.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_gen8_gtt_clear_ips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gvt_gtt_entry = type { i64, i32 }

@GTT_TYPE_PPGTT_PDE_ENTRY = common dso_local global i64 0, align 8
@GEN8_PDE_IPS_64K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gvt_gtt_entry*)* @gen8_gtt_clear_ips to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen8_gtt_clear_ips(%struct.intel_gvt_gtt_entry* %0) #0 {
  %2 = alloca %struct.intel_gvt_gtt_entry*, align 8
  store %struct.intel_gvt_gtt_entry* %0, %struct.intel_gvt_gtt_entry** %2, align 8
  %3 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %2, align 8
  %4 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @GTT_TYPE_PPGTT_PDE_ENTRY, align 8
  %7 = icmp ne i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i64 @GEM_WARN_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @GEN8_PDE_IPS_64K, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %2, align 8
  %16 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  br label %19

19:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @GEM_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
