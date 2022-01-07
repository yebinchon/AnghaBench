; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_rfc4543_gcm_setauthsize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_rfc4543_gcm_setauthsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.cc_aead_ctx = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"authsize %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32)* @cc_rfc4543_gcm_setauthsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_rfc4543_gcm_setauthsize(%struct.crypto_aead* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cc_aead_ctx*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %9 = call %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %8)
  store %struct.cc_aead_ctx* %9, %struct.cc_aead_ctx** %6, align 8
  %10 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %6, align 8
  %11 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.device* @drvdata_to_dev(i32 %12)
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @dev_dbg(%struct.device* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 16
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @cc_aead_setauthsize(%struct.crypto_aead* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @cc_aead_setauthsize(%struct.crypto_aead*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
