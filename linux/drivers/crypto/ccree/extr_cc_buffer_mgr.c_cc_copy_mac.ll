; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_copy_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_copy_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.aead_request = type { i32, i64 }
%struct.aead_req_ctx = type { i64, i32, i64, i64 }
%struct.crypto_aead = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.aead_request*, i32)* @cc_copy_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_copy_mac(%struct.device* %0, %struct.aead_request* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.aead_req_ctx*, align 8
  %8 = alloca %struct.crypto_aead*, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.aead_request* %1, %struct.aead_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %11 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %10)
  store %struct.aead_req_ctx* %11, %struct.aead_req_ctx** %7, align 8
  %12 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %13 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %12)
  store %struct.crypto_aead* %13, %struct.crypto_aead** %8, align 8
  %14 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %7, align 8
  %15 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %18 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  store i64 %20, i64* %9, align 8
  %21 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %7, align 8
  %22 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %27 = call i64 @crypto_aead_ivsize(%struct.crypto_aead* %26)
  %28 = load i64, i64* %9, align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* %9, align 8
  br label %30

30:                                               ; preds = %25, %3
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %7, align 8
  %33 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %36 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %7, align 8
  %40 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @cc_copy_sg_portion(%struct.device* %31, i32 %34, i32 %37, i64 %42, i64 %43, i32 %44)
  ret void
}

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i64 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @cc_copy_sg_portion(%struct.device*, i32, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
