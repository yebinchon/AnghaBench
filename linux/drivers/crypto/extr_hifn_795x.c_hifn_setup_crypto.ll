; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_setup_crypto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_setup_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hifn_context = type { %struct.hifn_device* }
%struct.hifn_device = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@HIFN_QUEUE_LENGTH = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, i32, i32, i32)* @hifn_setup_crypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_setup_crypto(%struct.ablkcipher_request* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ablkcipher_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hifn_context*, align 8
  %12 = alloca %struct.hifn_device*, align 8
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %14 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.hifn_context* @crypto_tfm_ctx(i32 %16)
  store %struct.hifn_context* %17, %struct.hifn_context** %11, align 8
  %18 = load %struct.hifn_context*, %struct.hifn_context** %11, align 8
  %19 = getelementptr inbounds %struct.hifn_context, %struct.hifn_context* %18, i32 0, i32 0
  %20 = load %struct.hifn_device*, %struct.hifn_device** %19, align 8
  store %struct.hifn_device* %20, %struct.hifn_device** %12, align 8
  %21 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @hifn_setup_crypto_req(%struct.ablkcipher_request* %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %48

30:                                               ; preds = %4
  %31 = load %struct.hifn_device*, %struct.hifn_device** %12, align 8
  %32 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HIFN_QUEUE_LENGTH, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.hifn_device*, %struct.hifn_device** %12, align 8
  %38 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.hifn_device*, %struct.hifn_device** %12, align 8
  %44 = call i32 @hifn_process_queue(%struct.hifn_device* %43)
  br label %45

45:                                               ; preds = %42, %36, %30
  %46 = load i32, i32* @EINPROGRESS, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %28
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.hifn_context* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @hifn_setup_crypto_req(%struct.ablkcipher_request*, i32, i32, i32) #1

declare dso_local i32 @hifn_process_queue(%struct.hifn_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
