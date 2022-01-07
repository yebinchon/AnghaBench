; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.h_DISPC_FIR_COEF_V_OFFSET.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.h_DISPC_FIR_COEF_V_OFFSET.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @DISPC_FIR_COEF_V_OFFSET to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DISPC_FIR_COEF_V_OFFSET(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %21 [
    i32 132, label %7
    i32 131, label %9
    i32 130, label %13
    i32 129, label %17
    i32 128, label %17
  ]

7:                                                ; preds = %2
  %8 = call i32 (...) @BUG()
  store i32 0, i32* %3, align 4
  br label %23

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = mul nsw i32 %10, 4
  %12 = add nsw i32 292, %11
  store i32 %12, i32* %3, align 4
  br label %23

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = mul nsw i32 %14, 4
  %16 = add nsw i32 180, %15
  store i32 %16, i32* %3, align 4
  br label %23

17:                                               ; preds = %2, %2
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 %18, 4
  %20 = add nsw i32 80, %19
  store i32 %20, i32* %3, align 4
  br label %23

21:                                               ; preds = %2
  %22 = call i32 (...) @BUG()
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %17, %13, %9, %7
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
