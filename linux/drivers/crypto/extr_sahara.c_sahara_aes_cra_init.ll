; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_aes_cra_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_aes_cra_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sahara_ctx = type { i32 }

@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Error allocating fallback algo %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @sahara_aes_cra_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sahara_aes_cra_init(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sahara_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %6 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %7 = call i8* @crypto_tfm_alg_name(%struct.crypto_tfm* %6)
  store i8* %7, i8** %4, align 8
  %8 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %9 = call %struct.sahara_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %8)
  store %struct.sahara_ctx* %9, %struct.sahara_ctx** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %12 = call i32 @crypto_alloc_sync_skcipher(i8* %10, i32 0, i32 %11)
  %13 = load %struct.sahara_ctx*, %struct.sahara_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.sahara_ctx, %struct.sahara_ctx* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.sahara_ctx*, %struct.sahara_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.sahara_ctx, %struct.sahara_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @IS_ERR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load %struct.sahara_ctx*, %struct.sahara_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.sahara_ctx, %struct.sahara_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @PTR_ERR(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %31

27:                                               ; preds = %1
  %28 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %29 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 4, i32* %30, align 4
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %27, %20
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i8* @crypto_tfm_alg_name(%struct.crypto_tfm*) #1

declare dso_local %struct.sahara_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_alloc_sync_skcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
