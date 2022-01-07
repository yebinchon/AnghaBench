; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_des3_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_des3_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.hifn_context = type { i32, i32, %struct.hifn_device* }
%struct.hifn_device = type { i32 }

@HIFN_FLAG_OLD_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @hifn_des3_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_des3_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hifn_context*, align 8
  %9 = alloca %struct.hifn_device*, align 8
  %10 = alloca i32, align 4
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %12 = call %struct.hifn_context* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %11)
  store %struct.hifn_context* %12, %struct.hifn_context** %8, align 8
  %13 = load %struct.hifn_context*, %struct.hifn_context** %8, align 8
  %14 = getelementptr inbounds %struct.hifn_context, %struct.hifn_context* %13, i32 0, i32 2
  %15 = load %struct.hifn_device*, %struct.hifn_device** %14, align 8
  store %struct.hifn_device* %15, %struct.hifn_device** %9, align 8
  %16 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @verify_ablkcipher_des3_key(%struct.crypto_ablkcipher* %16, i32* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %39

23:                                               ; preds = %3
  %24 = load i32, i32* @HIFN_FLAG_OLD_KEY, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.hifn_device*, %struct.hifn_device** %9, align 8
  %27 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.hifn_context*, %struct.hifn_context** %8, align 8
  %31 = getelementptr inbounds %struct.hifn_context, %struct.hifn_context* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @memcpy(i32 %32, i32* %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.hifn_context*, %struct.hifn_context** %8, align 8
  %38 = getelementptr inbounds %struct.hifn_context, %struct.hifn_context* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %23, %21
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.hifn_context* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @verify_ablkcipher_des3_key(%struct.crypto_ablkcipher*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
