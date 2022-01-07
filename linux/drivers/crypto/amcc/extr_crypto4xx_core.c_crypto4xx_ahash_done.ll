; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_ahash_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_ahash_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { i32 }
%struct.pd_uinfo = type { i32, i32 }
%struct.crypto4xx_ctx = type { i32 }
%struct.ahash_request = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@PD_ENTRY_BUSY = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto4xx_device*, %struct.pd_uinfo*)* @crypto4xx_ahash_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto4xx_ahash_done(%struct.crypto4xx_device* %0, %struct.pd_uinfo* %1) #0 {
  %3 = alloca %struct.crypto4xx_device*, align 8
  %4 = alloca %struct.pd_uinfo*, align 8
  %5 = alloca %struct.crypto4xx_ctx*, align 8
  %6 = alloca %struct.ahash_request*, align 8
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %3, align 8
  store %struct.pd_uinfo* %1, %struct.pd_uinfo** %4, align 8
  %7 = load %struct.pd_uinfo*, %struct.pd_uinfo** %4, align 8
  %8 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ahash_request* @ahash_request_cast(i32 %9)
  store %struct.ahash_request* %10, %struct.ahash_request** %6, align 8
  %11 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %12 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.crypto4xx_ctx* @crypto_tfm_ctx(i32 %14)
  store %struct.crypto4xx_ctx* %15, %struct.crypto4xx_ctx** %5, align 8
  %16 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %17 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pd_uinfo*, %struct.pd_uinfo** %4, align 8
  %20 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %21 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.crypto4xx_ctx* @crypto_tfm_ctx(i32 %23)
  %25 = call i32 @crypto4xx_copy_digest_to_dst(i32 %18, %struct.pd_uinfo* %19, %struct.crypto4xx_ctx* %24)
  %26 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %27 = load %struct.pd_uinfo*, %struct.pd_uinfo** %4, align 8
  %28 = call i32 @crypto4xx_ret_sg_desc(%struct.crypto4xx_device* %26, %struct.pd_uinfo* %27)
  %29 = load %struct.pd_uinfo*, %struct.pd_uinfo** %4, align 8
  %30 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PD_ENTRY_BUSY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %37 = load i32, i32* @EINPROGRESS, align 4
  %38 = sub nsw i32 0, %37
  %39 = call i32 @ahash_request_complete(%struct.ahash_request* %36, i32 %38)
  br label %40

40:                                               ; preds = %35, %2
  %41 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %42 = call i32 @ahash_request_complete(%struct.ahash_request* %41, i32 0)
  ret void
}

declare dso_local %struct.ahash_request* @ahash_request_cast(i32) #1

declare dso_local %struct.crypto4xx_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @crypto4xx_copy_digest_to_dst(i32, %struct.pd_uinfo*, %struct.crypto4xx_ctx*) #1

declare dso_local i32 @crypto4xx_ret_sg_desc(%struct.crypto4xx_device*, %struct.pd_uinfo*) #1

declare dso_local i32 @ahash_request_complete(%struct.ahash_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
