; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_asym_algs.c_qat_rsa_enc_fn_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_asym_algs.c_qat_rsa_enc_fn_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PKE_RSA_EP_512 = common dso_local global i64 0, align 8
@PKE_RSA_EP_1024 = common dso_local global i64 0, align 8
@PKE_RSA_EP_1536 = common dso_local global i64 0, align 8
@PKE_RSA_EP_2048 = common dso_local global i64 0, align 8
@PKE_RSA_EP_3072 = common dso_local global i64 0, align 8
@PKE_RSA_EP_4096 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @qat_rsa_enc_fn_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qat_rsa_enc_fn_id(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = shl i32 %5, 3
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %20 [
    i32 512, label %8
    i32 1024, label %10
    i32 1536, label %12
    i32 2048, label %14
    i32 3072, label %16
    i32 4096, label %18
  ]

8:                                                ; preds = %1
  %9 = load i64, i64* @PKE_RSA_EP_512, align 8
  store i64 %9, i64* %2, align 8
  br label %21

10:                                               ; preds = %1
  %11 = load i64, i64* @PKE_RSA_EP_1024, align 8
  store i64 %11, i64* %2, align 8
  br label %21

12:                                               ; preds = %1
  %13 = load i64, i64* @PKE_RSA_EP_1536, align 8
  store i64 %13, i64* %2, align 8
  br label %21

14:                                               ; preds = %1
  %15 = load i64, i64* @PKE_RSA_EP_2048, align 8
  store i64 %15, i64* %2, align 8
  br label %21

16:                                               ; preds = %1
  %17 = load i64, i64* @PKE_RSA_EP_3072, align 8
  store i64 %17, i64* %2, align 8
  br label %21

18:                                               ; preds = %1
  %19 = load i64, i64* @PKE_RSA_EP_4096, align 8
  store i64 %19, i64* %2, align 8
  br label %21

20:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %21

21:                                               ; preds = %20, %18, %16, %14, %12, %10, %8
  %22 = load i64, i64* %2, align 8
  ret i64 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
