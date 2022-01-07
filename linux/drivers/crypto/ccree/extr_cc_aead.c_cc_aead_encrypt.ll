; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_aead_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_aead_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32 }
%struct.aead_req_ctx = type { i32, i32, i32, i32 }

@DRV_CRYPTO_DIRECTION_ENCRYPT = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @cc_aead_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_aead_encrypt(%struct.aead_request* %0) #0 {
  %2 = alloca %struct.aead_request*, align 8
  %3 = alloca %struct.aead_req_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %2, align 8
  %5 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %6 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %5)
  store %struct.aead_req_ctx* %6, %struct.aead_req_ctx** %3, align 8
  %7 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %3, align 8
  %8 = call i32 @memset(%struct.aead_req_ctx* %7, i32 0, i32 16)
  %9 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %10 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %15 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %24 = load i32, i32* @DRV_CRYPTO_DIRECTION_ENCRYPT, align 4
  %25 = call i32 @cc_proc_aead(%struct.aead_request* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @EINPROGRESS, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %40 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %30, %1
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @memset(%struct.aead_req_ctx*, i32, i32) #1

declare dso_local i32 @cc_proc_aead(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
