; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_aead_ccm_validate_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_aead_ccm_validate_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32 }
%struct.chcr_aead_ctx = type { i32 }

@CRYPTO_ALG_SUB_TYPE_AEAD_RFC4309 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"CCM: IV check fails\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"RFC4309: Invalid AAD length %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16, %struct.aead_request*, %struct.chcr_aead_ctx*, i32)* @aead_ccm_validate_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_ccm_validate_input(i16 zeroext %0, %struct.aead_request* %1, %struct.chcr_aead_ctx* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca %struct.aead_request*, align 8
  %8 = alloca %struct.chcr_aead_ctx*, align 8
  %9 = alloca i32, align 4
  store i16 %0, i16* %6, align 2
  store %struct.aead_request* %1, %struct.aead_request** %7, align 8
  store %struct.chcr_aead_ctx* %2, %struct.chcr_aead_ctx** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CRYPTO_ALG_SUB_TYPE_AEAD_RFC4309, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %4
  %14 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %15 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @crypto_ccm_check_iv(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %43

23:                                               ; preds = %13
  br label %42

24:                                               ; preds = %4
  %25 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %26 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 16
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %31 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 20
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %36 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %43

41:                                               ; preds = %29, %24
  br label %42

42:                                               ; preds = %41, %23
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %34, %19
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @crypto_ccm_check_iv(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
