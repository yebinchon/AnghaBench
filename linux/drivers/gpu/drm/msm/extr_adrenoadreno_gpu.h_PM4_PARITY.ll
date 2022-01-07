; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_adrenoadreno_gpu.h_PM4_PARITY.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_adrenoadreno_gpu.h_PM4_PARITY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @PM4_PARITY to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PM4_PARITY(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = ashr i32 %4, 4
  %6 = xor i32 %3, %5
  %7 = load i32, i32* %2, align 4
  %8 = ashr i32 %7, 8
  %9 = xor i32 %6, %8
  %10 = load i32, i32* %2, align 4
  %11 = ashr i32 %10, 12
  %12 = xor i32 %9, %11
  %13 = load i32, i32* %2, align 4
  %14 = ashr i32 %13, 16
  %15 = xor i32 %12, %14
  %16 = load i32, i32* %2, align 4
  %17 = ashr i32 %16, 20
  %18 = xor i32 %15, %17
  %19 = load i32, i32* %2, align 4
  %20 = ashr i32 %19, 24
  %21 = xor i32 %18, %20
  %22 = load i32, i32* %2, align 4
  %23 = ashr i32 %22, 28
  %24 = xor i32 %21, %23
  %25 = and i32 15, %24
  %26 = ashr i32 38505, %25
  %27 = and i32 %26, 1
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
