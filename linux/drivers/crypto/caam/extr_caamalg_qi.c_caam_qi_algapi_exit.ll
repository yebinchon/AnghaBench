; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi.c_caam_qi_algapi_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi.c_caam_qi_algapi_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.caam_aead_alg = type { i32, i64 }
%struct.caam_skcipher_alg = type { i32, i64 }

@driver_aeads = common dso_local global i8* null, align 8
@driver_algs = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @caam_qi_algapi_exit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.caam_aead_alg*, align 8
  %3 = alloca %struct.caam_skcipher_alg*, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %24, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i8*, i8** @driver_aeads, align 8
  %7 = call i32 @ARRAY_SIZE(i8* %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %4
  %10 = load i8*, i8** @driver_aeads, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr i8, i8* %10, i64 %12
  %14 = bitcast i8* %13 to %struct.caam_aead_alg*
  store %struct.caam_aead_alg* %14, %struct.caam_aead_alg** %2, align 8
  %15 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %2, align 8
  %16 = getelementptr inbounds %struct.caam_aead_alg, %struct.caam_aead_alg* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %9
  %20 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %2, align 8
  %21 = getelementptr inbounds %struct.caam_aead_alg, %struct.caam_aead_alg* %20, i32 0, i32 0
  %22 = call i32 @crypto_unregister_aead(i32* %21)
  br label %23

23:                                               ; preds = %19, %9
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %4

27:                                               ; preds = %4
  store i32 0, i32* %1, align 4
  br label %28

28:                                               ; preds = %48, %27
  %29 = load i32, i32* %1, align 4
  %30 = load i8*, i8** @driver_algs, align 8
  %31 = call i32 @ARRAY_SIZE(i8* %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load i8*, i8** @driver_algs, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr i8, i8* %34, i64 %36
  %38 = bitcast i8* %37 to %struct.caam_skcipher_alg*
  store %struct.caam_skcipher_alg* %38, %struct.caam_skcipher_alg** %3, align 8
  %39 = load %struct.caam_skcipher_alg*, %struct.caam_skcipher_alg** %3, align 8
  %40 = getelementptr inbounds %struct.caam_skcipher_alg, %struct.caam_skcipher_alg* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load %struct.caam_skcipher_alg*, %struct.caam_skcipher_alg** %3, align 8
  %45 = getelementptr inbounds %struct.caam_skcipher_alg, %struct.caam_skcipher_alg* %44, i32 0, i32 0
  %46 = call i32 @crypto_unregister_skcipher(i32* %45)
  br label %47

47:                                               ; preds = %43, %33
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %28

51:                                               ; preds = %28
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @crypto_unregister_aead(i32*) #1

declare dso_local i32 @crypto_unregister_skcipher(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
