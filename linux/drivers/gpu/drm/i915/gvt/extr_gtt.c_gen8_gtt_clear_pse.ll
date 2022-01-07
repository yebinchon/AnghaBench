; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_gen8_gtt_clear_pse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_gen8_gtt_clear_pse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gvt_gtt_entry = type { i32, i32 }

@_PAGE_PSE = common dso_local global i32 0, align 4
@GTT_TYPE_PPGTT_PDE_ENTRY = common dso_local global i32 0, align 4
@GTT_TYPE_PPGTT_PDP_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gvt_gtt_entry*)* @gen8_gtt_clear_pse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen8_gtt_clear_pse(%struct.intel_gvt_gtt_entry* %0) #0 {
  %2 = alloca %struct.intel_gvt_gtt_entry*, align 8
  store %struct.intel_gvt_gtt_entry* %0, %struct.intel_gvt_gtt_entry** %2, align 8
  %3 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %2, align 8
  %4 = call i64 @gen8_gtt_test_pse(%struct.intel_gvt_gtt_entry* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %33

6:                                                ; preds = %1
  %7 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %2, align 8
  %8 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %30 [
    i32 128, label %10
    i32 129, label %20
  ]

10:                                               ; preds = %6
  %11 = load i32, i32* @_PAGE_PSE, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %2, align 8
  %14 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @GTT_TYPE_PPGTT_PDE_ENTRY, align 4
  %18 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %2, align 8
  %19 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %32

20:                                               ; preds = %6
  %21 = load i32, i32* @GTT_TYPE_PPGTT_PDP_ENTRY, align 4
  %22 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %2, align 8
  %23 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @_PAGE_PSE, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %2, align 8
  %27 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %32

30:                                               ; preds = %6
  %31 = call i32 @WARN_ON(i32 1)
  br label %32

32:                                               ; preds = %30, %20, %10
  br label %33

33:                                               ; preds = %32, %1
  ret void
}

declare dso_local i64 @gen8_gtt_test_pse(%struct.intel_gvt_gtt_entry*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
