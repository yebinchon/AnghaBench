; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_eip197_trc_cache_setupvirt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_eip197_trc_cache_setupvirt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EIP197_FLUE_CONFIG_MAGIC = common dso_local global i32 0, align 4
@EIP197_FLUE_OFFSETS = common dso_local global i64 0, align 8
@EIP197_FLUE_ARC4_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.safexcel_crypto_priv*)* @eip197_trc_cache_setupvirt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eip197_trc_cache_setupvirt(%struct.safexcel_crypto_priv* %0) #0 {
  %2 = alloca %struct.safexcel_crypto_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %15, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 4
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %9 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @EIP197_FLUE_IFC_LUT(i32 %11)
  %13 = add nsw i64 %10, %12
  %14 = call i32 @writel(i32 0, i64 %13)
  br label %15

15:                                               ; preds = %7
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %4

18:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %49, %18
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %22 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %19
  %27 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %28 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @EIP197_FLUE_CACHEBASE_LO(i32 %30)
  %32 = add nsw i64 %29, %31
  %33 = call i32 @writel(i32 0, i64 %32)
  %34 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %35 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @EIP197_FLUE_CACHEBASE_HI(i32 %37)
  %39 = add nsw i64 %36, %38
  %40 = call i32 @writel(i32 0, i64 %39)
  %41 = load i32, i32* @EIP197_FLUE_CONFIG_MAGIC, align 4
  %42 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %43 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i64 @EIP197_FLUE_CONFIG(i32 %45)
  %47 = add nsw i64 %44, %46
  %48 = call i32 @writel(i32 %41, i64 %47)
  br label %49

49:                                               ; preds = %26
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %19

52:                                               ; preds = %19
  %53 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %54 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @EIP197_FLUE_OFFSETS, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 0, i64 %57)
  %59 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %60 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @EIP197_FLUE_ARC4_OFFSET, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 0, i64 %63)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @EIP197_FLUE_IFC_LUT(i32) #1

declare dso_local i64 @EIP197_FLUE_CACHEBASE_LO(i32) #1

declare dso_local i64 @EIP197_FLUE_CACHEBASE_HI(i32) #1

declare dso_local i64 @EIP197_FLUE_CONFIG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
