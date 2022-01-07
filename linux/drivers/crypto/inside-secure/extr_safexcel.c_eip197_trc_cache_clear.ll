; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_eip197_trc_cache_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_eip197_trc_cache_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { i32 }

@EIP197_CLASSIFICATION_RAMS = common dso_local global i32 0, align 4
@EIP197_CS_RC_SIZE = common dso_local global i32 0, align 4
@EIP197_RC_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.safexcel_crypto_priv*, i32, i32)* @eip197_trc_cache_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eip197_trc_cache_clear(%struct.safexcel_crypto_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.safexcel_crypto_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %80, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %83

15:                                               ; preds = %11
  %16 = load i32, i32* @EIP197_CLASSIFICATION_RAMS, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @EIP197_CS_RC_SIZE, align 4
  %19 = mul nsw i32 %17, %18
  %20 = add nsw i32 %16, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* @EIP197_RC_NULL, align 4
  %22 = call i32 @EIP197_CS_RC_NEXT(i32 %21)
  %23 = load i32, i32* @EIP197_RC_NULL, align 4
  %24 = call i32 @EIP197_CS_RC_PREV(i32 %23)
  %25 = or i32 %22, %24
  %26 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %4, align 8
  %27 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %28, %29
  %31 = call i32 @writel(i32 %25, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 @EIP197_CS_RC_NEXT(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @EIP197_CS_RC_PREV(i32 %36)
  %38 = or i32 %34, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %15
  %42 = load i32, i32* @EIP197_RC_NULL, align 4
  %43 = call i32 @EIP197_CS_RC_PREV(i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %57

46:                                               ; preds = %15
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sub nsw i32 %48, 1
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32, i32* @EIP197_RC_NULL, align 4
  %53 = call i32 @EIP197_CS_RC_NEXT(i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %51, %46
  br label %57

57:                                               ; preds = %56, %41
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %4, align 8
  %60 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %61, %62
  %64 = add nsw i32 %63, 4
  %65 = call i32 @writel(i32 %58, i32 %64)
  %66 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %4, align 8
  %67 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %68, %69
  %71 = add nsw i32 %70, 8
  %72 = call i32 @writel(i32 0, i32 %71)
  %73 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %4, align 8
  %74 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %75, %76
  %78 = add nsw i32 %77, 12
  %79 = call i32 @writel(i32 0, i32 %78)
  br label %80

80:                                               ; preds = %57
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %11

83:                                               ; preds = %11
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @EIP197_CS_RC_SIZE, align 4
  %86 = mul nsw i32 %84, %85
  store i32 %86, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %107, %83
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %87
  %92 = call i32 @GENMASK(i32 29, i32 0)
  %93 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %4, align 8
  %94 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @EIP197_CLASSIFICATION_RAMS, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 4
  %104 = add i64 %100, %103
  %105 = trunc i64 %104 to i32
  %106 = call i32 @writel(i32 %92, i32 %105)
  br label %107

107:                                              ; preds = %91
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %87

110:                                              ; preds = %87
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @EIP197_CS_RC_NEXT(i32) #1

declare dso_local i32 @EIP197_CS_RC_PREV(i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
