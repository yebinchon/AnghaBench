; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_ui_scaler.c_sun8i_ui_scaler_coef_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_ui_scaler.c_sun8i_ui_scaler_coef_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUN8I_UI_SCALER_SCALE_FRAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sun8i_ui_scaler_coef_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_ui_scaler_coef_index(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @SUN8I_UI_SCALER_SCALE_FRAC, align 4
  %9 = sub nsw i32 %8, 3
  %10 = lshr i32 %7, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = lshr i32 %11, 3
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 7
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %25 [
    i32 0, label %16
    i32 1, label %17
    i32 2, label %19
    i32 3, label %23
    i32 4, label %24
  ]

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %26

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = lshr i32 %20, 1
  %22 = add i32 8, %21
  store i32 %22, i32* %2, align 4
  br label %26

23:                                               ; preds = %1
  store i32 12, i32* %2, align 4
  br label %26

24:                                               ; preds = %1
  store i32 13, i32* %2, align 4
  br label %26

25:                                               ; preds = %1
  store i32 14, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24, %23, %19, %17, %16
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
