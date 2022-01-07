; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_asym_algs.c_qat_rsa_init_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_asym_algs.c_qat_rsa_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_akcipher = type { i32 }
%struct.qat_rsa_ctx = type { %struct.qat_crypto_instance*, i64 }
%struct.qat_crypto_instance = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_akcipher*)* @qat_rsa_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_rsa_init_tfm(%struct.crypto_akcipher* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_akcipher*, align 8
  %4 = alloca %struct.qat_rsa_ctx*, align 8
  %5 = alloca %struct.qat_crypto_instance*, align 8
  store %struct.crypto_akcipher* %0, %struct.crypto_akcipher** %3, align 8
  %6 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %3, align 8
  %7 = call %struct.qat_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %6)
  store %struct.qat_rsa_ctx* %7, %struct.qat_rsa_ctx** %4, align 8
  %8 = call i32 (...) @get_current_node()
  %9 = call %struct.qat_crypto_instance* @qat_crypto_get_instance_node(i32 %8)
  store %struct.qat_crypto_instance* %9, %struct.qat_crypto_instance** %5, align 8
  %10 = load %struct.qat_crypto_instance*, %struct.qat_crypto_instance** %5, align 8
  %11 = icmp ne %struct.qat_crypto_instance* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %21

15:                                               ; preds = %1
  %16 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.qat_crypto_instance*, %struct.qat_crypto_instance** %5, align 8
  %19 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %19, i32 0, i32 0
  store %struct.qat_crypto_instance* %18, %struct.qat_crypto_instance** %20, align 8
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %15, %12
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.qat_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

declare dso_local %struct.qat_crypto_instance* @qat_crypto_get_instance_node(i32) #1

declare dso_local i32 @get_current_node(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
