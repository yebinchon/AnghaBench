; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ablkcipher_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ablkcipher_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.talitos_ctx = type { i32 }
%struct.talitos_edesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DESC_HDR_DIR_INBOUND = common dso_local global i32 0, align 4
@ablkcipher_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*)* @ablkcipher_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ablkcipher_decrypt(%struct.ablkcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ablkcipher_request*, align 8
  %4 = alloca %struct.crypto_ablkcipher*, align 8
  %5 = alloca %struct.talitos_ctx*, align 8
  %6 = alloca %struct.talitos_edesc*, align 8
  %7 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %3, align 8
  %8 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %9 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %8)
  store %struct.crypto_ablkcipher* %9, %struct.crypto_ablkcipher** %4, align 8
  %10 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %11 = call %struct.talitos_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %10)
  store %struct.talitos_ctx* %11, %struct.talitos_ctx** %5, align 8
  %12 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %13 = call i32 @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher* %12)
  %14 = call i32 @crypto_tfm_alg_blocksize(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %16 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

20:                                               ; preds = %1
  %21 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %22 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = urem i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %52

30:                                               ; preds = %20
  %31 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %32 = call %struct.talitos_edesc* @ablkcipher_edesc_alloc(%struct.ablkcipher_request* %31, i32 0)
  store %struct.talitos_edesc* %32, %struct.talitos_edesc** %6, align 8
  %33 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %34 = call i64 @IS_ERR(%struct.talitos_edesc* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %38 = call i32 @PTR_ERR(%struct.talitos_edesc* %37)
  store i32 %38, i32* %2, align 4
  br label %52

39:                                               ; preds = %30
  %40 = load %struct.talitos_ctx*, %struct.talitos_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DESC_HDR_DIR_INBOUND, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %46 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %49 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %50 = load i32, i32* @ablkcipher_done, align 4
  %51 = call i32 @common_nonsnoop(%struct.talitos_edesc* %48, %struct.ablkcipher_request* %49, i32 %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %39, %36, %27, %19
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.talitos_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @crypto_tfm_alg_blocksize(i32) #1

declare dso_local i32 @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.talitos_edesc* @ablkcipher_edesc_alloc(%struct.ablkcipher_request*, i32) #1

declare dso_local i64 @IS_ERR(%struct.talitos_edesc*) #1

declare dso_local i32 @PTR_ERR(%struct.talitos_edesc*) #1

declare dso_local i32 @common_nonsnoop(%struct.talitos_edesc*, %struct.ablkcipher_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
