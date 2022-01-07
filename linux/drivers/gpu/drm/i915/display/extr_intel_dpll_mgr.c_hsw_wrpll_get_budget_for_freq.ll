; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_hsw_wrpll_get_budget_for_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_hsw_wrpll_get_budget_for_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hsw_wrpll_get_budget_for_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_wrpll_get_budget_for_freq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %10 [
    i32 25175000, label %5
    i32 25200000, label %5
    i32 27000000, label %5
    i32 27027000, label %5
    i32 37762500, label %5
    i32 37800000, label %5
    i32 40500000, label %5
    i32 40541000, label %5
    i32 54000000, label %5
    i32 54054000, label %5
    i32 59341000, label %5
    i32 59400000, label %5
    i32 72000000, label %5
    i32 74176000, label %5
    i32 74250000, label %5
    i32 81000000, label %5
    i32 81081000, label %5
    i32 89012000, label %5
    i32 89100000, label %5
    i32 108000000, label %5
    i32 108108000, label %5
    i32 111264000, label %5
    i32 111375000, label %5
    i32 148352000, label %5
    i32 148500000, label %5
    i32 162000000, label %5
    i32 162162000, label %5
    i32 222525000, label %5
    i32 222750000, label %5
    i32 296703000, label %5
    i32 297000000, label %5
    i32 233500000, label %6
    i32 245250000, label %6
    i32 247750000, label %6
    i32 253250000, label %6
    i32 298000000, label %6
    i32 169128000, label %7
    i32 169500000, label %7
    i32 179500000, label %7
    i32 202000000, label %7
    i32 256250000, label %8
    i32 262500000, label %8
    i32 270000000, label %8
    i32 272500000, label %8
    i32 273750000, label %8
    i32 280750000, label %8
    i32 281250000, label %8
    i32 286000000, label %8
    i32 291750000, label %8
    i32 267250000, label %9
    i32 268500000, label %9
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 0, i32* %3, align 4
  br label %11

6:                                                ; preds = %1, %1, %1, %1, %1
  store i32 1500, i32* %3, align 4
  br label %11

7:                                                ; preds = %1, %1, %1, %1
  store i32 2000, i32* %3, align 4
  br label %11

8:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 4000, i32* %3, align 4
  br label %11

9:                                                ; preds = %1, %1
  store i32 5000, i32* %3, align 4
  br label %11

10:                                               ; preds = %1
  store i32 1000, i32* %3, align 4
  br label %11

11:                                               ; preds = %10, %9, %8, %7, %6, %5
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
