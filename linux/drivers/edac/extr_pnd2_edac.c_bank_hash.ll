; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c_bank_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c_bank_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @bank_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bank_hash(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %56 [
    i32 0, label %9
    i32 1, label %22
    i32 2, label %42
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 12, %11
  %13 = ashr i32 %10, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 9, %15
  %17 = ashr i32 %14, %16
  %18 = xor i32 %13, %17
  %19 = and i32 %18, 1
  %20 = load i32, i32* %7, align 4
  %21 = xor i32 %20, %19
  store i32 %21, i32* %7, align 4
  br label %56

22:                                               ; preds = %3
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 10, %24
  %26 = ashr i32 %23, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 8, %28
  %30 = ashr i32 %27, %29
  %31 = xor i32 %26, %30
  %32 = and i32 %31, 1
  %33 = shl i32 %32, 1
  %34 = load i32, i32* %7, align 4
  %35 = xor i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %4, align 4
  %37 = ashr i32 %36, 22
  %38 = and i32 %37, 1
  %39 = shl i32 %38, 1
  %40 = load i32, i32* %7, align 4
  %41 = xor i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %56

42:                                               ; preds = %3
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 13, %44
  %46 = ashr i32 %43, %45
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 11, %48
  %50 = ashr i32 %47, %49
  %51 = xor i32 %46, %50
  %52 = and i32 %51, 1
  %53 = shl i32 %52, 2
  %54 = load i32, i32* %7, align 4
  %55 = xor i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %3, %42, %22, %9
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
