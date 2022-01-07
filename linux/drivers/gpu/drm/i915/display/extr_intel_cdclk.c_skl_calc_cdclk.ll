; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_skl_calc_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_skl_calc_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @skl_calc_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_calc_cdclk(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 8640000
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 540000
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 617143, i32* %3, align 4
  br label %34

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 432000
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 540000, i32* %3, align 4
  br label %34

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 308571
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 432000, i32* %3, align 4
  br label %34

20:                                               ; preds = %16
  store i32 308571, i32* %3, align 4
  br label %34

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 540000
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 675000, i32* %3, align 4
  br label %34

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 450000
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 540000, i32* %3, align 4
  br label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 337500
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 450000, i32* %3, align 4
  br label %34

33:                                               ; preds = %29
  store i32 337500, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %32, %28, %24, %20, %19, %15, %11
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
