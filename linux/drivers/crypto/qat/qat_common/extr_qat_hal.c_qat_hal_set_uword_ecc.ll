; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_set_uword_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_set_uword_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @qat_hal_set_uword_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_hal_set_uword_ecc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 32767, i32* %3, align 4
  store i32 33521695, i32* %4, align 4
  store i32 2114421217, i32* %5, align 4
  store i32 -1908896222, i32* %6, align 4
  store i32 -1295437244, i32* %7, align 4
  store i32 -716024696, i32* %8, align 4
  store i32 1772382480, i32* %9, align 4
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = and i64 %11, -2234207627640833
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %14, %15
  %17 = call i32 @qat_hal_parity_64bit(i32 %16)
  %18 = shl i32 %17, 44
  %19 = load i32, i32* %2, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @qat_hal_parity_64bit(i32 %23)
  %25 = shl i32 %24, 45
  %26 = load i32, i32* %2, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %2, align 4
  %30 = and i32 %28, %29
  %31 = call i32 @qat_hal_parity_64bit(i32 %30)
  %32 = shl i32 %31, 46
  %33 = load i32, i32* %2, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %2, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @qat_hal_parity_64bit(i32 %37)
  %39 = shl i32 %38, 47
  %40 = load i32, i32* %2, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %2, align 4
  %44 = and i32 %42, %43
  %45 = call i32 @qat_hal_parity_64bit(i32 %44)
  %46 = shl i32 %45, 48
  %47 = load i32, i32* %2, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %2, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %2, align 4
  %51 = and i32 %49, %50
  %52 = call i32 @qat_hal_parity_64bit(i32 %51)
  %53 = shl i32 %52, 49
  %54 = load i32, i32* %2, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %2, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %2, align 4
  %58 = and i32 %56, %57
  %59 = call i32 @qat_hal_parity_64bit(i32 %58)
  %60 = shl i32 %59, 50
  %61 = load i32, i32* %2, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %2, align 4
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @qat_hal_parity_64bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
