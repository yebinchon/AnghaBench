; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_eip197_trc_cache_banksel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_eip197_trc_cache_banksel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { i64 }

@EIP197_CS_RAM_CTRL = common dso_local global i64 0, align 8
@EIP197_CS_BANKSEL_MASK = common dso_local global i32 0, align 4
@EIP197_CS_BANKSEL_OFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.safexcel_crypto_priv*, i32, i32*)* @eip197_trc_cache_banksel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eip197_trc_cache_banksel(%struct.safexcel_crypto_priv* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.safexcel_crypto_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = ashr i32 %9, 16
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %11, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %3
  %16 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %4, align 8
  %17 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EIP197_CS_RAM_CTRL, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @EIP197_CS_BANKSEL_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @EIP197_CS_BANKSEL_OFS, align 4
  %28 = shl i32 %26, %27
  %29 = or i32 %25, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %4, align 8
  %32 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @EIP197_CS_RAM_CTRL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %15, %3
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
