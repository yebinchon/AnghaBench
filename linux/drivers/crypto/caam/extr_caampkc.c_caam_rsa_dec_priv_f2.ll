; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_caam_rsa_dec_priv_f2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_caam_rsa_dec_priv_f2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.akcipher_request = type { i32 }
%struct.crypto_akcipher = type { i32 }
%struct.caam_rsa_ctx = type { %struct.device* }
%struct.device = type { i32 }
%struct.rsa_edesc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DESC_RSA_PRIV_F2_LEN = common dso_local global i32 0, align 4
@rsa_priv_f2_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.akcipher_request*)* @caam_rsa_dec_priv_f2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caam_rsa_dec_priv_f2(%struct.akcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.akcipher_request*, align 8
  %4 = alloca %struct.crypto_akcipher*, align 8
  %5 = alloca %struct.caam_rsa_ctx*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.rsa_edesc*, align 8
  %8 = alloca i32, align 4
  store %struct.akcipher_request* %0, %struct.akcipher_request** %3, align 8
  %9 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %10 = call %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request* %9)
  store %struct.crypto_akcipher* %10, %struct.crypto_akcipher** %4, align 8
  %11 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %4, align 8
  %12 = call %struct.caam_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %11)
  store %struct.caam_rsa_ctx* %12, %struct.caam_rsa_ctx** %5, align 8
  %13 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %17 = load i32, i32* @DESC_RSA_PRIV_F2_LEN, align 4
  %18 = call %struct.rsa_edesc* @rsa_edesc_alloc(%struct.akcipher_request* %16, i32 %17)
  store %struct.rsa_edesc* %18, %struct.rsa_edesc** %7, align 8
  %19 = load %struct.rsa_edesc*, %struct.rsa_edesc** %7, align 8
  %20 = call i64 @IS_ERR(%struct.rsa_edesc* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.rsa_edesc*, %struct.rsa_edesc** %7, align 8
  %24 = call i32 @PTR_ERR(%struct.rsa_edesc* %23)
  store i32 %24, i32* %2, align 4
  br label %65

25:                                               ; preds = %1
  %26 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %27 = load %struct.rsa_edesc*, %struct.rsa_edesc** %7, align 8
  %28 = call i32 @set_rsa_priv_f2_pdb(%struct.akcipher_request* %26, %struct.rsa_edesc* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %57

32:                                               ; preds = %25
  %33 = load %struct.rsa_edesc*, %struct.rsa_edesc** %7, align 8
  %34 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rsa_edesc*, %struct.rsa_edesc** %7, align 8
  %37 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @init_rsa_priv_f2_desc(i32 %35, i32* %38)
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = load %struct.rsa_edesc*, %struct.rsa_edesc** %7, align 8
  %42 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @rsa_priv_f2_done, align 4
  %45 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %46 = call i32 @caam_jr_enqueue(%struct.device* %40, i32 %43, i32 %44, %struct.akcipher_request* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %32
  %50 = load i32, i32* @EINPROGRESS, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %65

52:                                               ; preds = %32
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = load %struct.rsa_edesc*, %struct.rsa_edesc** %7, align 8
  %55 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %56 = call i32 @rsa_priv_f2_unmap(%struct.device* %53, %struct.rsa_edesc* %54, %struct.akcipher_request* %55)
  br label %57

57:                                               ; preds = %52, %31
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = load %struct.rsa_edesc*, %struct.rsa_edesc** %7, align 8
  %60 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %61 = call i32 @rsa_io_unmap(%struct.device* %58, %struct.rsa_edesc* %59, %struct.akcipher_request* %60)
  %62 = load %struct.rsa_edesc*, %struct.rsa_edesc** %7, align 8
  %63 = call i32 @kfree(%struct.rsa_edesc* %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %57, %49, %22
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request*) #1

declare dso_local %struct.caam_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

declare dso_local %struct.rsa_edesc* @rsa_edesc_alloc(%struct.akcipher_request*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rsa_edesc*) #1

declare dso_local i32 @PTR_ERR(%struct.rsa_edesc*) #1

declare dso_local i32 @set_rsa_priv_f2_pdb(%struct.akcipher_request*, %struct.rsa_edesc*) #1

declare dso_local i32 @init_rsa_priv_f2_desc(i32, i32*) #1

declare dso_local i32 @caam_jr_enqueue(%struct.device*, i32, i32, %struct.akcipher_request*) #1

declare dso_local i32 @rsa_priv_f2_unmap(%struct.device*, %struct.rsa_edesc*, %struct.akcipher_request*) #1

declare dso_local i32 @rsa_io_unmap(%struct.device*, %struct.rsa_edesc*, %struct.akcipher_request*) #1

declare dso_local i32 @kfree(%struct.rsa_edesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
