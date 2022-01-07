; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_alloc_req_skcipher.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_alloc_req_skcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.convert_context = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@GFP_NOIO = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@kcryptd_async_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypt_config*, %struct.convert_context*)* @crypt_alloc_req_skcipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypt_alloc_req_skcipher(%struct.crypt_config* %0, %struct.convert_context* %1) #0 {
  %3 = alloca %struct.crypt_config*, align 8
  %4 = alloca %struct.convert_context*, align 8
  %5 = alloca i32, align 4
  store %struct.crypt_config* %0, %struct.crypt_config** %3, align 8
  store %struct.convert_context* %1, %struct.convert_context** %4, align 8
  %6 = load %struct.convert_context*, %struct.convert_context** %4, align 8
  %7 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %10 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %8, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.convert_context*, %struct.convert_context** %4, align 8
  %15 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %21 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %20, i32 0, i32 2
  %22 = load i32, i32* @GFP_NOIO, align 4
  %23 = call i64 @mempool_alloc(i32* %21, i32 %22)
  %24 = load %struct.convert_context*, %struct.convert_context** %4, align 8
  %25 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  br label %27

27:                                               ; preds = %19, %2
  %28 = load %struct.convert_context*, %struct.convert_context** %4, align 8
  %29 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %33 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @skcipher_request_set_tfm(i64 %31, i32 %39)
  %41 = load %struct.convert_context*, %struct.convert_context** %4, align 8
  %42 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %46 = load i32, i32* @kcryptd_async_done, align 4
  %47 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %48 = load %struct.convert_context*, %struct.convert_context** %4, align 8
  %49 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @dmreq_of_req(%struct.crypt_config* %47, i64 %51)
  %53 = call i32 @skcipher_request_set_callback(i64 %44, i32 %45, i32 %46, i32 %52)
  ret void
}

declare dso_local i64 @mempool_alloc(i32*, i32) #1

declare dso_local i32 @skcipher_request_set_tfm(i64, i32) #1

declare dso_local i32 @skcipher_request_set_callback(i64, i32, i32, i32) #1

declare dso_local i32 @dmreq_of_req(%struct.crypt_config*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
