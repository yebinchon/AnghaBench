; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_eip197_trc_cache_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_eip197_trc_cache_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { i64 }

@EIP197_CLASSIFICATION_RAMS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.safexcel_crypto_priv*, i32, i32)* @eip197_trc_cache_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eip197_trc_cache_probe(%struct.safexcel_crypto_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.safexcel_crypto_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 16, %12
  %14 = shl i32 1, %13
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %15, 1
  %17 = call i32 @min(i32 %16, i32 0)
  store i32 %17, i32* %11, align 4
  br label %18

18:                                               ; preds = %91, %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sub nsw i32 %19, %20
  %22 = icmp sgt i32 %21, 32
  br i1 %22, label %23, label %92

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %24, %25
  %27 = ashr i32 %26, 1
  store i32 %27, i32* %10, align 4
  %28 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %4, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @eip197_trc_cache_banksel(%struct.safexcel_crypto_priv* %28, i32 %29, i32* %11)
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = shl i32 %32, 16
  %34 = or i32 %31, %33
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %34, %35
  %37 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %4, align 8
  %38 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @EIP197_CLASSIFICATION_RAMS, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %42, 65535
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = call i32 @writel(i32 %36, i64 %45)
  %47 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @eip197_trc_cache_banksel(%struct.safexcel_crypto_priv* %47, i32 %48, i32* %11)
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = shl i32 %51, 16
  %53 = or i32 %50, %52
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %53, %54
  %56 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %4, align 8
  %57 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @EIP197_CLASSIFICATION_RAMS, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, 65535
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %60, %63
  %65 = call i32 @writel(i32 %55, i64 %64)
  %66 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %4, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @eip197_trc_cache_banksel(%struct.safexcel_crypto_priv* %66, i32 %67, i32* %11)
  %69 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %4, align 8
  %70 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @EIP197_CLASSIFICATION_RAMS, align 8
  %73 = add nsw i64 %71, %72
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, 65535
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %73, %76
  %78 = call i32 @readl(i64 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %9, align 4
  %82 = shl i32 %81, 16
  %83 = or i32 %80, %82
  %84 = load i32, i32* %6, align 4
  %85 = and i32 %83, %84
  %86 = icmp eq i32 %79, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %23
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %9, align 4
  br label %91

89:                                               ; preds = %23
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %89, %87
  br label %18

92:                                               ; preds = %18
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @eip197_trc_cache_banksel(%struct.safexcel_crypto_priv*, i32, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
