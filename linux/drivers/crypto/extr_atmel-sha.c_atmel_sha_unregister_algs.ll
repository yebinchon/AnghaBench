; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_unregister_algs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_unregister_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@sha_hmac_algs = common dso_local global i32* null, align 8
@sha_1_256_algs = common dso_local global i32* null, align 8
@sha_224_alg = common dso_local global i32 0, align 4
@sha_384_512_algs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_sha_dev*)* @atmel_sha_unregister_algs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_sha_unregister_algs(%struct.atmel_sha_dev* %0) #0 {
  %2 = alloca %struct.atmel_sha_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %2, align 8
  %4 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %5 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %21, %9
  %11 = load i32, i32* %3, align 4
  %12 = load i32*, i32** @sha_hmac_algs, align 8
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load i32*, i32** @sha_hmac_algs, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call i32 @crypto_unregister_ahash(i32* %19)
  br label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %10

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24, %1
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %37, %25
  %27 = load i32, i32* %3, align 4
  %28 = load i32*, i32** @sha_1_256_algs, align 8
  %29 = call i32 @ARRAY_SIZE(i32* %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32*, i32** @sha_1_256_algs, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @crypto_unregister_ahash(i32* %35)
  br label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %26

40:                                               ; preds = %26
  %41 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %42 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 @crypto_unregister_ahash(i32* @sha_224_alg)
  br label %48

48:                                               ; preds = %46, %40
  %49 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %50 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %66, %54
  %56 = load i32, i32* %3, align 4
  %57 = load i32*, i32** @sha_384_512_algs, align 8
  %58 = call i32 @ARRAY_SIZE(i32* %57)
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load i32*, i32** @sha_384_512_algs, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i32 @crypto_unregister_ahash(i32* %64)
  br label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %55

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69, %48
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @crypto_unregister_ahash(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
