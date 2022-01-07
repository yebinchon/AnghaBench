; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i32, %struct.TYPE_5__*, i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32)* }
%struct.TYPE_4__ = type { i64 }
%struct.ablkcipher_request = type { i64, i64, i64, i32 }
%struct.atmel_aes_reqctx = type { i32, i32 }
%struct.crypto_ablkcipher = type { i32 }

@AES_FLAGS_BUSY = common dso_local global i32 0, align 4
@AES_FLAGS_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*, i32)* @atmel_aes_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_complete(%struct.atmel_aes_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.atmel_aes_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ablkcipher_request*, align 8
  %6 = alloca %struct.atmel_aes_reqctx*, align 8
  %7 = alloca %struct.crypto_ablkcipher*, align 8
  %8 = alloca i32, align 4
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %10 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clk_disable(i32 %11)
  %13 = load i32, i32* @AES_FLAGS_BUSY, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %16 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %20 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %91, label %25

25:                                               ; preds = %2
  %26 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %27 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = call %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.TYPE_5__* %28)
  store %struct.ablkcipher_request* %29, %struct.ablkcipher_request** %5, align 8
  %30 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %31 = call %struct.atmel_aes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %30)
  store %struct.atmel_aes_reqctx* %31, %struct.atmel_aes_reqctx** %6, align 8
  %32 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %33 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %32)
  store %struct.crypto_ablkcipher* %33, %struct.crypto_ablkcipher** %7, align 8
  %34 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %7, align 8
  %35 = call i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher* %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.atmel_aes_reqctx*, %struct.atmel_aes_reqctx** %6, align 8
  %37 = getelementptr inbounds %struct.atmel_aes_reqctx, %struct.atmel_aes_reqctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AES_FLAGS_ENCRYPT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %25
  %43 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %44 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %47 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %50 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %51, %53
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @scatterwalk_map_and_copy(i32 %45, i64 %48, i64 %54, i32 %55, i32 0)
  br label %90

57:                                               ; preds = %25
  %58 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %59 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %62 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %67 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.atmel_aes_reqctx*, %struct.atmel_aes_reqctx** %6, align 8
  %70 = getelementptr inbounds %struct.atmel_aes_reqctx, %struct.atmel_aes_reqctx* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @memcpy(i32 %68, i32 %71, i32 %72)
  br label %89

74:                                               ; preds = %57
  %75 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %76 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %79 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %82 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %83, %85
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @scatterwalk_map_and_copy(i32 %77, i64 %80, i64 %86, i32 %87, i32 0)
  br label %89

89:                                               ; preds = %74, %65
  br label %90

90:                                               ; preds = %89, %42
  br label %91

91:                                               ; preds = %90, %2
  %92 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %93 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %91
  %97 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %98 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %97, i32 0, i32 1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %100, align 8
  %102 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %103 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %102, i32 0, i32 1
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 %101(%struct.TYPE_5__* %104, i32 %105)
  br label %107

107:                                              ; preds = %96, %91
  %108 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %109 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %108, i32 0, i32 0
  %110 = call i32 @tasklet_schedule(i32* %109)
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @clk_disable(i32) #1

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.TYPE_5__*) #1

declare dso_local %struct.atmel_aes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32, i64, i64, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
