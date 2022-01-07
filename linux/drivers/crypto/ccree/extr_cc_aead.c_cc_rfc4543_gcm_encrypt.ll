; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_rfc4543_gcm_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_rfc4543_gcm_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.cc_aead_ctx = type { i32 }
%struct.device = type { i32 }
%struct.aead_req_ctx = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid Assoclen:%u\0A\00", align 1
@DRV_CRYPTO_DIRECTION_ENCRYPT = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @cc_rfc4543_gcm_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_rfc4543_gcm_encrypt(%struct.aead_request* %0) #0 {
  %2 = alloca %struct.aead_request*, align 8
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca %struct.cc_aead_ctx*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.aead_req_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %2, align 8
  %8 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %9 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %8)
  store %struct.crypto_aead* %9, %struct.crypto_aead** %3, align 8
  %10 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %11 = call %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %10)
  store %struct.cc_aead_ctx* %11, %struct.cc_aead_ctx** %4, align 8
  %12 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.device* @drvdata_to_dev(i32 %14)
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %17 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %16)
  store %struct.aead_req_ctx* %17, %struct.aead_req_ctx** %6, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %21 = call i32 @valid_assoclen(%struct.aead_request* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %26 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %67

29:                                               ; preds = %1
  %30 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %6, align 8
  %31 = call i32 @memset(%struct.aead_req_ctx* %30, i32 0, i32 16)
  %32 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %35 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %6, align 8
  %38 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %40 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %6, align 8
  %43 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %45 = call i32 @cc_proc_rfc4_gcm(%struct.aead_request* %44)
  %46 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %6, align 8
  %47 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %49 = load i32, i32* @DRV_CRYPTO_DIRECTION_ENCRYPT, align 4
  %50 = call i32 @cc_proc_aead(%struct.aead_request* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @EINPROGRESS, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %29
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %6, align 8
  %62 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %65 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %60, %55, %29
  br label %67

67:                                               ; preds = %66, %23
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @valid_assoclen(%struct.aead_request*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @memset(%struct.aead_req_ctx*, i32, i32) #1

declare dso_local i32 @cc_proc_rfc4_gcm(%struct.aead_request*) #1

declare dso_local i32 @cc_proc_aead(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
