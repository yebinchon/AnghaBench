; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_nitrox_gcm_common_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_nitrox_gcm_common_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.nitrox_crypto_ctx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %union.fc_ctx_flags }
%union.fc_ctx_flags = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@CIPHER_AES_GCM = common dso_local global i32 0, align 4
@AUTH_NULL = common dso_local global i32 0, align 4
@IV_FROM_DPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*)* @nitrox_gcm_common_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nitrox_gcm_common_init(%struct.crypto_aead* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nitrox_crypto_ctx*, align 8
  %6 = alloca %union.fc_ctx_flags*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %3, align 8
  %7 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %8 = call %struct.nitrox_crypto_ctx* @crypto_aead_ctx(%struct.crypto_aead* %7)
  store %struct.nitrox_crypto_ctx* %8, %struct.nitrox_crypto_ctx** %5, align 8
  %9 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %10 = call i32 @nitrox_aead_init(%struct.crypto_aead* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %42

15:                                               ; preds = %1
  %16 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store %union.fc_ctx_flags* %20, %union.fc_ctx_flags** %6, align 8
  %21 = load i32, i32* @CIPHER_AES_GCM, align 4
  %22 = load %union.fc_ctx_flags*, %union.fc_ctx_flags** %6, align 8
  %23 = bitcast %union.fc_ctx_flags* %22 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @AUTH_NULL, align 4
  %26 = load %union.fc_ctx_flags*, %union.fc_ctx_flags** %6, align 8
  %27 = bitcast %union.fc_ctx_flags* %26 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @IV_FROM_DPTR, align 4
  %30 = load %union.fc_ctx_flags*, %union.fc_ctx_flags** %6, align 8
  %31 = bitcast %union.fc_ctx_flags* %30 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %union.fc_ctx_flags*, %union.fc_ctx_flags** %6, align 8
  %34 = bitcast %union.fc_ctx_flags* %33 to %struct.TYPE_4__*
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load %union.fc_ctx_flags*, %union.fc_ctx_flags** %6, align 8
  %37 = bitcast %union.fc_ctx_flags* %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be64_to_cpu(i32 %38)
  %40 = load %union.fc_ctx_flags*, %union.fc_ctx_flags** %6, align 8
  %41 = bitcast %union.fc_ctx_flags* %40 to i32*
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %15, %13
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.nitrox_crypto_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @nitrox_aead_init(%struct.crypto_aead*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
