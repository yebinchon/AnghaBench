; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_algs.c_cvm_validate_keylen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_algs.c_cvm_validate_keylen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvm_enc_ctx = type { i32, i64, i64 }

@AES_128_BIT = common dso_local global i64 0, align 8
@AES_192_BIT = common dso_local global i64 0, align 8
@AES_256_BIT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DES3_CBC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cvm_enc_ctx*, i32)* @cvm_validate_keylen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvm_validate_keylen(%struct.cvm_enc_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cvm_enc_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.cvm_enc_ctx* %0, %struct.cvm_enc_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 16
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 24
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 32
  br i1 %13, label %14, label %46

14:                                               ; preds = %11, %8, %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.cvm_enc_ctx*, %struct.cvm_enc_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.cvm_enc_ctx, %struct.cvm_enc_ctx* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.cvm_enc_ctx*, %struct.cvm_enc_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.cvm_enc_ctx, %struct.cvm_enc_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %33 [
    i32 16, label %21
    i32 24, label %25
    i32 32, label %29
  ]

21:                                               ; preds = %14
  %22 = load i64, i64* @AES_128_BIT, align 8
  %23 = load %struct.cvm_enc_ctx*, %struct.cvm_enc_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.cvm_enc_ctx, %struct.cvm_enc_ctx* %23, i32 0, i32 2
  store i64 %22, i64* %24, align 8
  br label %36

25:                                               ; preds = %14
  %26 = load i64, i64* @AES_192_BIT, align 8
  %27 = load %struct.cvm_enc_ctx*, %struct.cvm_enc_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.cvm_enc_ctx, %struct.cvm_enc_ctx* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  br label %36

29:                                               ; preds = %14
  %30 = load i64, i64* @AES_256_BIT, align 8
  %31 = load %struct.cvm_enc_ctx*, %struct.cvm_enc_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.cvm_enc_ctx, %struct.cvm_enc_ctx* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  br label %36

33:                                               ; preds = %14
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %49

36:                                               ; preds = %29, %25, %21
  %37 = load %struct.cvm_enc_ctx*, %struct.cvm_enc_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.cvm_enc_ctx, %struct.cvm_enc_ctx* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DES3_CBC, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.cvm_enc_ctx*, %struct.cvm_enc_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.cvm_enc_ctx, %struct.cvm_enc_ctx* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %36
  store i32 0, i32* %3, align 4
  br label %49

46:                                               ; preds = %11
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %45, %33
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
