; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_aead_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_aead_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.aead_request = type { i64, i32, i32 }
%struct.aead_req_ctx = type { i32, i32, i64, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.crypto_aead = type { i32 }
%struct.cc_aead_ctx = type { i64, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@DRV_CRYPTO_DIRECTION_DECRYPT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"Payload authentication failure, (auth-size=%d, cipher=%d)\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@CC_SG_FROM_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i8*, i32)* @cc_aead_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_aead_complete(%struct.device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.aead_request*, align 8
  %8 = alloca %struct.aead_req_ctx*, align 8
  %9 = alloca %struct.crypto_aead*, align 8
  %10 = alloca %struct.cc_aead_ctx*, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.aead_request*
  store %struct.aead_request* %13, %struct.aead_request** %7, align 8
  %14 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %15 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %14)
  store %struct.aead_req_ctx* %15, %struct.aead_req_ctx** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call %struct.crypto_aead* @crypto_aead_reqtfm(i8* %16)
  store %struct.crypto_aead* %17, %struct.crypto_aead** %9, align 8
  %18 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %19 = call %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %18)
  store %struct.cc_aead_ctx* %19, %struct.cc_aead_ctx** %10, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @EINPROGRESS, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %109

25:                                               ; preds = %3
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %28 = call i32 @cc_unmap_aead_request(%struct.device* %26, %struct.aead_request* %27)
  %29 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %8, align 8
  %30 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %33 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %109

37:                                               ; preds = %25
  %38 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DRV_CRYPTO_DIRECTION_DECRYPT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %79

44:                                               ; preds = %37
  %45 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %10, align 8
  %52 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @memcmp(i32 %47, i32 %50, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %44
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %10, align 8
  %59 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %10, align 8
  %62 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dev_dbg(%struct.device* %57, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %60, i32 %63)
  %65 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %66 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %69 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @sg_nents(i32 %70)
  %72 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %73 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @sg_zero_buffer(i32 %67, i32 %71, i64 %74, i32 0)
  %76 = load i32, i32* @EBADMSG, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %56, %44
  br label %108

79:                                               ; preds = %37
  %80 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %8, align 8
  %81 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %79
  %85 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %86 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %8, align 8
  %89 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %87, %90
  store i64 %91, i64* %11, align 8
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %8, align 8
  %94 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %8, align 8
  %97 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %10, align 8
  %102 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  %105 = load i32, i32* @CC_SG_FROM_BUF, align 4
  %106 = call i32 @cc_copy_sg_portion(%struct.device* %92, i32 %95, i32 %98, i64 %99, i64 %104, i32 %105)
  br label %107

107:                                              ; preds = %84, %79
  br label %108

108:                                              ; preds = %107, %78
  br label %109

109:                                              ; preds = %108, %36, %24
  %110 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @aead_request_complete(%struct.aead_request* %110, i32 %111)
  ret void
}

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(i8*) #1

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @cc_unmap_aead_request(%struct.device*, %struct.aead_request*) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i32) #1

declare dso_local i32 @sg_zero_buffer(i32, i32, i64, i32) #1

declare dso_local i32 @sg_nents(i32) #1

declare dso_local i32 @cc_copy_sg_portion(%struct.device*, i32, i32, i64, i64, i32) #1

declare dso_local i32 @aead_request_complete(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
