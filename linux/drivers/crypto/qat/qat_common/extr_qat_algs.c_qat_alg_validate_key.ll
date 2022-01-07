; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_alg_validate_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_alg_validate_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ICP_QAT_HW_CIPHER_XTS_MODE = common dso_local global i32 0, align 4
@ICP_QAT_HW_CIPHER_ALGO_AES128 = common dso_local global i32 0, align 4
@ICP_QAT_HW_CIPHER_ALGO_AES192 = common dso_local global i32 0, align 4
@ICP_QAT_HW_CIPHER_ALGO_AES256 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @qat_alg_validate_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_alg_validate_key(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ICP_QAT_HW_CIPHER_XTS_MODE, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %22 [
    i32 130, label %13
    i32 129, label %16
    i32 128, label %19
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* @ICP_QAT_HW_CIPHER_ALGO_AES128, align 4
  %15 = load i32*, i32** %6, align 8
  store i32 %14, i32* %15, align 4
  br label %25

16:                                               ; preds = %11
  %17 = load i32, i32* @ICP_QAT_HW_CIPHER_ALGO_AES192, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  br label %25

19:                                               ; preds = %11
  %20 = load i32, i32* @ICP_QAT_HW_CIPHER_ALGO_AES256, align 4
  %21 = load i32*, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  br label %25

22:                                               ; preds = %11
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %39

25:                                               ; preds = %19, %16, %13
  br label %38

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %34 [
    i32 260, label %28
    i32 256, label %31
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* @ICP_QAT_HW_CIPHER_ALGO_AES128, align 4
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  br label %37

31:                                               ; preds = %26
  %32 = load i32, i32* @ICP_QAT_HW_CIPHER_ALGO_AES256, align 4
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  br label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %39

37:                                               ; preds = %31, %28
  br label %38

38:                                               ; preds = %37, %25
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %34, %22
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
