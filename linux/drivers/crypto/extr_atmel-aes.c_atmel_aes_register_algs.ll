; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_register_algs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_register_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@aes_algs = common dso_local global i32* null, align 8
@aes_cfb64_alg = common dso_local global i32 0, align 4
@aes_gcm_alg = common dso_local global i32 0, align 4
@aes_xts_alg = common dso_local global i32 0, align 4
@aes_authenc_algs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*)* @atmel_aes_register_algs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_register_algs(%struct.atmel_aes_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_aes_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i32, i32* %5, align 4
  %9 = load i32*, i32** @aes_algs, align 8
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = load i32*, i32** @aes_algs, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call i32 @crypto_register_alg(i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %69

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %7

25:                                               ; preds = %7
  %26 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %27 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = call i32 @crypto_register_alg(i32* @aes_cfb64_alg)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %66

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %25
  %38 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %39 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = call i32 @crypto_register_aead(i32* @aes_gcm_alg)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %64

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %37
  %50 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %51 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = call i32 @crypto_register_alg(i32* @aes_xts_alg)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %62

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %49
  store i32 0, i32* %2, align 4
  br label %85

62:                                               ; preds = %59
  %63 = call i32 @crypto_unregister_aead(i32* @aes_gcm_alg)
  br label %64

64:                                               ; preds = %62, %47
  %65 = call i32 @crypto_unregister_alg(i32* @aes_cfb64_alg)
  br label %66

66:                                               ; preds = %64, %35
  %67 = load i32*, i32** @aes_algs, align 8
  %68 = call i32 @ARRAY_SIZE(i32* %67)
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %66, %20
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %80, %69
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load i32*, i32** @aes_algs, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = call i32 @crypto_unregister_alg(i32* %78)
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %70

83:                                               ; preds = %70
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %61
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @crypto_register_alg(i32*) #1

declare dso_local i32 @crypto_register_aead(i32*) #1

declare dso_local i32 @crypto_unregister_aead(i32*) #1

declare dso_local i32 @crypto_unregister_alg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
