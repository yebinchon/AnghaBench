; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_register_algs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_register_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@sha_1_256_algs = common dso_local global i32* null, align 8
@sha_224_alg = common dso_local global i32 0, align 4
@sha_384_512_algs = common dso_local global i32* null, align 8
@sha_hmac_algs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*)* @atmel_sha_register_algs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_register_algs(%struct.atmel_sha_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_sha_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i32, i32* %5, align 4
  %9 = load i32*, i32** @sha_1_256_algs, align 8
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = load i32*, i32** @sha_1_256_algs, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call i32 @crypto_register_ahash(i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %126

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %7

25:                                               ; preds = %7
  %26 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %27 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = call i32 @crypto_register_ahash(i32* @sha_224_alg)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %123

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %25
  %38 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %39 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %59, %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32*, i32** @sha_384_512_algs, align 8
  %47 = call i32 @ARRAY_SIZE(i32* %46)
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load i32*, i32** @sha_384_512_algs, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i32 @crypto_register_ahash(i32* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %107

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %44

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62, %37
  %64 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %65 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %85, %69
  %71 = load i32, i32* %5, align 4
  %72 = load i32*, i32** @sha_hmac_algs, align 8
  %73 = call i32 @ARRAY_SIZE(i32* %72)
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load i32*, i32** @sha_hmac_algs, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = call i32 @crypto_register_ahash(i32* %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %90

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %70

88:                                               ; preds = %70
  br label %89

89:                                               ; preds = %88, %63
  store i32 0, i32* %2, align 4
  br label %142

90:                                               ; preds = %83
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %101, %90
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load i32*, i32** @sha_hmac_algs, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = call i32 @crypto_unregister_ahash(i32* %99)
  br label %101

101:                                              ; preds = %95
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %91

104:                                              ; preds = %91
  %105 = load i32*, i32** @sha_384_512_algs, align 8
  %106 = call i32 @ARRAY_SIZE(i32* %105)
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %104, %57
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %118, %107
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load i32*, i32** @sha_384_512_algs, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = call i32 @crypto_unregister_ahash(i32* %116)
  br label %118

118:                                              ; preds = %112
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %108

121:                                              ; preds = %108
  %122 = call i32 @crypto_unregister_ahash(i32* @sha_224_alg)
  br label %123

123:                                              ; preds = %121, %35
  %124 = load i32*, i32** @sha_1_256_algs, align 8
  %125 = call i32 @ARRAY_SIZE(i32* %124)
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %123, %20
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %137, %126
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %5, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %127
  %132 = load i32*, i32** @sha_1_256_algs, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = call i32 @crypto_unregister_ahash(i32* %135)
  br label %137

137:                                              ; preds = %131
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %127

140:                                              ; preds = %127
  %141 = load i32, i32* %4, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %140, %89
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @crypto_register_ahash(i32*) #1

declare dso_local i32 @crypto_unregister_ahash(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
