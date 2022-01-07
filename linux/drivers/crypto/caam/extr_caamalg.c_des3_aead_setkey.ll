; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg.c_des3_aead_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg.c_des3_aead_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.crypto_authenc_keys = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @des3_aead_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des3_aead_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_authenc_keys, align 4
  %9 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @crypto_authenc_extractkeys(%struct.crypto_authenc_keys* %8, i32* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %38

18:                                               ; preds = %3
  %19 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %20 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %8, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @verify_aead_des3_key(%struct.crypto_aead* %19, i32 %21, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %33

27:                                               ; preds = %18
  %28 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @aead_setkey(%struct.crypto_aead* %28, i32* %29, i32 %30)
  %32 = sext i32 %31 to i64
  br label %33

33:                                               ; preds = %27, %26
  %34 = phi i64 [ %24, %26 ], [ %32, %27 ]
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = call i32 @memzero_explicit(%struct.crypto_authenc_keys* %8, i32 8)
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %16
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @crypto_authenc_extractkeys(%struct.crypto_authenc_keys*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @verify_aead_des3_key(%struct.crypto_aead*, i32, i32) #1

declare dso_local i32 @aead_setkey(%struct.crypto_aead*, i32*, i32) #1

declare dso_local i32 @memzero_explicit(%struct.crypto_authenc_keys*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
