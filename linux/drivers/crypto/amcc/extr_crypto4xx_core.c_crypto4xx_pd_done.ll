; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_pd_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_pd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { %struct.pd_uinfo*, %struct.ce_pd* }
%struct.pd_uinfo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ce_pd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto4xx_device*, i64)* @crypto4xx_pd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto4xx_pd_done(%struct.crypto4xx_device* %0, i64 %1) #0 {
  %3 = alloca %struct.crypto4xx_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ce_pd*, align 8
  %6 = alloca %struct.pd_uinfo*, align 8
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %8 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %7, i32 0, i32 1
  %9 = load %struct.ce_pd*, %struct.ce_pd** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.ce_pd, %struct.ce_pd* %9, i64 %10
  store %struct.ce_pd* %11, %struct.ce_pd** %5, align 8
  %12 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %13 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %12, i32 0, i32 0
  %14 = load %struct.pd_uinfo*, %struct.pd_uinfo** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %14, i64 %15
  store %struct.pd_uinfo* %16, %struct.pd_uinfo** %6, align 8
  %17 = load %struct.pd_uinfo*, %struct.pd_uinfo** %6, align 8
  %18 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @crypto_tfm_alg_type(i32 %21)
  switch i32 %22, label %37 [
    i32 128, label %23
    i32 130, label %28
    i32 129, label %33
  ]

23:                                               ; preds = %2
  %24 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %25 = load %struct.pd_uinfo*, %struct.pd_uinfo** %6, align 8
  %26 = load %struct.ce_pd*, %struct.ce_pd** %5, align 8
  %27 = call i32 @crypto4xx_cipher_done(%struct.crypto4xx_device* %24, %struct.pd_uinfo* %25, %struct.ce_pd* %26)
  br label %37

28:                                               ; preds = %2
  %29 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %30 = load %struct.pd_uinfo*, %struct.pd_uinfo** %6, align 8
  %31 = load %struct.ce_pd*, %struct.ce_pd** %5, align 8
  %32 = call i32 @crypto4xx_aead_done(%struct.crypto4xx_device* %29, %struct.pd_uinfo* %30, %struct.ce_pd* %31)
  br label %37

33:                                               ; preds = %2
  %34 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %35 = load %struct.pd_uinfo*, %struct.pd_uinfo** %6, align 8
  %36 = call i32 @crypto4xx_ahash_done(%struct.crypto4xx_device* %34, %struct.pd_uinfo* %35)
  br label %37

37:                                               ; preds = %2, %33, %28, %23
  ret void
}

declare dso_local i32 @crypto_tfm_alg_type(i32) #1

declare dso_local i32 @crypto4xx_cipher_done(%struct.crypto4xx_device*, %struct.pd_uinfo*, %struct.ce_pd*) #1

declare dso_local i32 @crypto4xx_aead_done(%struct.crypto4xx_device*, %struct.pd_uinfo*, %struct.ce_pd*) #1

declare dso_local i32 @crypto4xx_ahash_done(%struct.crypto4xx_device*, %struct.pd_uinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
