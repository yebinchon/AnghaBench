; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_twl6040-vibra.c_twl6040_vibra_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_twl6040-vibra.c_twl6040_vibra_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TWL6040_VIBRA_MOD = common dso_local global i32 0, align 4
@TWL6040_VIBDAT_MAX = common dso_local global i32 0, align 4
@USHRT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @twl6040_vibra_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6040_vibra_code(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %8, align 4
  %16 = mul nsw i32 %14, %15
  %17 = load i32, i32* @TWL6040_VIBRA_MOD, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %19, %20
  %22 = mul nsw i32 100, %21
  %23 = sdiv i32 %18, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = sdiv i32 %24, 50
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @TWL6040_VIBDAT_MAX, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @TWL6040_VIBDAT_MAX, align 4
  store i32 %30, i32* %12, align 4
  br label %31

31:                                               ; preds = %29, %5
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %12, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* @USHRT_MAX, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %13, align 4
  %39 = mul nsw i32 %38, %37
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
