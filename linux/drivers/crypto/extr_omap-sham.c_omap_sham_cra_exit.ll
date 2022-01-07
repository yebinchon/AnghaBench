; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_cra_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_cra_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.omap_sham_ctx = type { i32, %struct.omap_sham_hmac_ctx*, i32* }
%struct.omap_sham_hmac_ctx = type { i32* }

@FLAGS_HMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*)* @omap_sham_cra_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_sham_cra_exit(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.omap_sham_ctx*, align 8
  %4 = alloca %struct.omap_sham_hmac_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %5 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %6 = call %struct.omap_sham_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %5)
  store %struct.omap_sham_ctx* %6, %struct.omap_sham_ctx** %3, align 8
  %7 = load %struct.omap_sham_ctx*, %struct.omap_sham_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.omap_sham_ctx, %struct.omap_sham_ctx* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @crypto_free_shash(i32* %9)
  %11 = load %struct.omap_sham_ctx*, %struct.omap_sham_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.omap_sham_ctx, %struct.omap_sham_ctx* %11, i32 0, i32 2
  store i32* null, i32** %12, align 8
  %13 = load %struct.omap_sham_ctx*, %struct.omap_sham_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.omap_sham_ctx, %struct.omap_sham_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @FLAGS_HMAC, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.omap_sham_ctx*, %struct.omap_sham_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.omap_sham_ctx, %struct.omap_sham_ctx* %21, i32 0, i32 1
  %23 = load %struct.omap_sham_hmac_ctx*, %struct.omap_sham_hmac_ctx** %22, align 8
  store %struct.omap_sham_hmac_ctx* %23, %struct.omap_sham_hmac_ctx** %4, align 8
  %24 = load %struct.omap_sham_hmac_ctx*, %struct.omap_sham_hmac_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.omap_sham_hmac_ctx, %struct.omap_sham_hmac_ctx* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @crypto_free_shash(i32* %26)
  br label %28

28:                                               ; preds = %20, %1
  ret void
}

declare dso_local %struct.omap_sham_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_free_shash(i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
