; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_wal_get_fw_for_rmw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_wal_get_fw_for_rmw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { i32 }
%struct.i915_wa_list = type { i32, %struct.i915_wa* }
%struct.i915_wa = type { i32 }

@FW_REG_READ = common dso_local global i32 0, align 4
@FW_REG_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore*, %struct.i915_wa_list*)* @wal_get_fw_for_rmw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wal_get_fw_for_rmw(%struct.intel_uncore* %0, %struct.i915_wa_list* %1) #0 {
  %3 = alloca %struct.intel_uncore*, align 8
  %4 = alloca %struct.i915_wa_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i915_wa*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_uncore* %0, %struct.intel_uncore** %3, align 8
  store %struct.i915_wa_list* %1, %struct.i915_wa_list** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %9 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %8, i32 0, i32 1
  %10 = load %struct.i915_wa*, %struct.i915_wa** %9, align 8
  store %struct.i915_wa* %10, %struct.i915_wa** %6, align 8
  br label %11

11:                                               ; preds = %28, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %14 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %19 = load %struct.i915_wa*, %struct.i915_wa** %6, align 8
  %20 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FW_REG_READ, align 4
  %23 = load i32, i32* @FW_REG_WRITE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @intel_uncore_forcewake_for_reg(%struct.intel_uncore* %18, i32 %21, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %17
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %7, align 4
  %31 = load %struct.i915_wa*, %struct.i915_wa** %6, align 8
  %32 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %31, i32 1
  store %struct.i915_wa* %32, %struct.i915_wa** %6, align 8
  br label %11

33:                                               ; preds = %11
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @intel_uncore_forcewake_for_reg(%struct.intel_uncore*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
