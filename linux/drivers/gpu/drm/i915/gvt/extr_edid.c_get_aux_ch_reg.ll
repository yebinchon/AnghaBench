; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_edid.c_get_aux_ch_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_edid.c_get_aux_ch_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUX_CH_CTL = common dso_local global i32 0, align 4
@AUX_CH_DATA1 = common dso_local global i32 0, align 4
@AUX_CH_DATA2 = common dso_local global i32 0, align 4
@AUX_CH_DATA3 = common dso_local global i32 0, align 4
@AUX_CH_DATA4 = common dso_local global i32 0, align 4
@AUX_CH_DATA5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_aux_ch_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_aux_ch_reg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, 255
  switch i32 %5, label %18 [
    i32 16, label %6
    i32 20, label %8
    i32 24, label %10
    i32 28, label %12
    i32 32, label %14
    i32 36, label %16
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @AUX_CH_CTL, align 4
  store i32 %7, i32* %3, align 4
  br label %19

8:                                                ; preds = %1
  %9 = load i32, i32* @AUX_CH_DATA1, align 4
  store i32 %9, i32* %3, align 4
  br label %19

10:                                               ; preds = %1
  %11 = load i32, i32* @AUX_CH_DATA2, align 4
  store i32 %11, i32* %3, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @AUX_CH_DATA3, align 4
  store i32 %13, i32* %3, align 4
  br label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @AUX_CH_DATA4, align 4
  store i32 %15, i32* %3, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @AUX_CH_DATA5, align 4
  store i32 %17, i32* %3, align 4
  br label %19

18:                                               ; preds = %1
  store i32 -1, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %16, %14, %12, %10, %8, %6
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
