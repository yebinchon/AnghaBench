; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_unregister_algorithms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_unregister_algorithms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.safexcel_crypto_priv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@safexcel_algs = common dso_local global %struct.TYPE_7__** null, align 8
@SAFEXCEL_ALG_TYPE_SKCIPHER = common dso_local global i64 0, align 8
@SAFEXCEL_ALG_TYPE_AEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.safexcel_crypto_priv*)* @safexcel_unregister_algorithms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @safexcel_unregister_algorithms(%struct.safexcel_crypto_priv* %0) #0 {
  %2 = alloca %struct.safexcel_crypto_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %80, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.TYPE_7__** %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %83

9:                                                ; preds = %4
  %10 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %10, i64 %12
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %18 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %16, %20
  %22 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %22, i64 %24
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %21, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %9
  br label %80

31:                                               ; preds = %9
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %32, i64 %34
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SAFEXCEL_ALG_TYPE_SKCIPHER, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %31
  %42 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %42, i64 %44
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = call i32 @crypto_unregister_skcipher(i32* %48)
  br label %79

50:                                               ; preds = %31
  %51 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %51, i64 %53
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SAFEXCEL_ALG_TYPE_AEAD, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %50
  %61 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %61, i64 %63
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = call i32 @crypto_unregister_aead(i32* %67)
  br label %78

69:                                               ; preds = %50
  %70 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %70, i64 %72
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = call i32 @crypto_unregister_ahash(i32* %76)
  br label %78

78:                                               ; preds = %69, %60
  br label %79

79:                                               ; preds = %78, %41
  br label %80

80:                                               ; preds = %79, %30
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %4

83:                                               ; preds = %4
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__**) #1

declare dso_local i32 @crypto_unregister_skcipher(i32*) #1

declare dso_local i32 @crypto_unregister_aead(i32*) #1

declare dso_local i32 @crypto_unregister_ahash(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
