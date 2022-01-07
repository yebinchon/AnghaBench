; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_hw_reset_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_hw_reset_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EIP197_HIA_xDR_STAT = common dso_local global i64 0, align 8
@EIP197_HIA_xDR_RING_BASE_ADDR_LO = common dso_local global i64 0, align 8
@EIP197_HIA_xDR_RING_BASE_ADDR_HI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.safexcel_crypto_priv*)* @safexcel_hw_reset_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @safexcel_hw_reset_rings(%struct.safexcel_crypto_priv* %0) #0 {
  %2 = alloca %struct.safexcel_crypto_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %50, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %7 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %5, %9
  br i1 %10, label %11, label %53

11:                                               ; preds = %4
  %12 = call i32 @GENMASK(i32 5, i32 0)
  %13 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @EIP197_HIA_CDR(%struct.safexcel_crypto_priv* %13, i32 %14)
  %16 = load i64, i64* @EIP197_HIA_xDR_STAT, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  %19 = call i32 @GENMASK(i32 7, i32 0)
  %20 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv* %20, i32 %21)
  %23 = load i64, i64* @EIP197_HIA_xDR_STAT, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @EIP197_HIA_CDR(%struct.safexcel_crypto_priv* %26, i32 %27)
  %29 = load i64, i64* @EIP197_HIA_xDR_RING_BASE_ADDR_LO, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 0, i64 %30)
  %32 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @EIP197_HIA_CDR(%struct.safexcel_crypto_priv* %32, i32 %33)
  %35 = load i64, i64* @EIP197_HIA_xDR_RING_BASE_ADDR_HI, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 0, i64 %36)
  %38 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv* %38, i32 %39)
  %41 = load i64, i64* @EIP197_HIA_xDR_RING_BASE_ADDR_LO, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 0, i64 %42)
  %44 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv* %44, i32 %45)
  %47 = load i64, i64* @EIP197_HIA_xDR_RING_BASE_ADDR_HI, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 0, i64 %48)
  br label %50

50:                                               ; preds = %11
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %4

53:                                               ; preds = %4
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i64 @EIP197_HIA_CDR(%struct.safexcel_crypto_priv*, i32) #1

declare dso_local i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
