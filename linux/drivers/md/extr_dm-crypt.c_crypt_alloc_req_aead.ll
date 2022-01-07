; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_alloc_req_aead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_alloc_req_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.convert_context = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@GFP_NOIO = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@kcryptd_async_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypt_config*, %struct.convert_context*)* @crypt_alloc_req_aead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypt_alloc_req_aead(%struct.crypt_config* %0, %struct.convert_context* %1) #0 {
  %3 = alloca %struct.crypt_config*, align 8
  %4 = alloca %struct.convert_context*, align 8
  store %struct.crypt_config* %0, %struct.crypt_config** %3, align 8
  store %struct.convert_context* %1, %struct.convert_context** %4, align 8
  %5 = load %struct.convert_context*, %struct.convert_context** %4, align 8
  %6 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %12 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %11, i32 0, i32 1
  %13 = load i32, i32* @GFP_NOIO, align 4
  %14 = call i64 @mempool_alloc(i32* %12, i32 %13)
  %15 = load %struct.convert_context*, %struct.convert_context** %4, align 8
  %16 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i64 %14, i64* %17, align 8
  br label %18

18:                                               ; preds = %10, %2
  %19 = load %struct.convert_context*, %struct.convert_context** %4, align 8
  %20 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %24 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @aead_request_set_tfm(i64 %22, i32 %28)
  %30 = load %struct.convert_context*, %struct.convert_context** %4, align 8
  %31 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %35 = load i32, i32* @kcryptd_async_done, align 4
  %36 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %37 = load %struct.convert_context*, %struct.convert_context** %4, align 8
  %38 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @dmreq_of_req(%struct.crypt_config* %36, i64 %40)
  %42 = call i32 @aead_request_set_callback(i64 %33, i32 %34, i32 %35, i32 %41)
  ret void
}

declare dso_local i64 @mempool_alloc(i32*, i32) #1

declare dso_local i32 @aead_request_set_tfm(i64, i32) #1

declare dso_local i32 @aead_request_set_callback(i64, i32, i32, i32) #1

declare dso_local i32 @dmreq_of_req(%struct.crypt_config*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
