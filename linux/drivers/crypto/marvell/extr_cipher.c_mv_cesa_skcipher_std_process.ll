; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_skcipher_std_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_skcipher_std_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i64, i32 }
%struct.mv_cesa_skcipher_req = type { i32, %struct.TYPE_2__, %struct.mv_cesa_skcipher_std_req }
%struct.TYPE_2__ = type { %struct.mv_cesa_engine* }
%struct.mv_cesa_engine = type { i64 }
%struct.mv_cesa_skcipher_std_req = type { i64, i32 }

@CESA_SA_DATA_SRAM_OFFSET = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, i32)* @mv_cesa_skcipher_std_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_skcipher_std_process(%struct.skcipher_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skcipher_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mv_cesa_skcipher_req*, align 8
  %7 = alloca %struct.mv_cesa_skcipher_std_req*, align 8
  %8 = alloca %struct.mv_cesa_engine*, align 8
  %9 = alloca i64, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %11 = call %struct.mv_cesa_skcipher_req* @skcipher_request_ctx(%struct.skcipher_request* %10)
  store %struct.mv_cesa_skcipher_req* %11, %struct.mv_cesa_skcipher_req** %6, align 8
  %12 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %6, align 8
  %13 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %12, i32 0, i32 2
  store %struct.mv_cesa_skcipher_std_req* %13, %struct.mv_cesa_skcipher_std_req** %7, align 8
  %14 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %6, align 8
  %15 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %16, align 8
  store %struct.mv_cesa_engine* %17, %struct.mv_cesa_engine** %8, align 8
  %18 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %19 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %6, align 8
  %22 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %8, align 8
  %25 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CESA_SA_DATA_SRAM_OFFSET, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.mv_cesa_skcipher_std_req*, %struct.mv_cesa_skcipher_std_req** %7, align 8
  %30 = getelementptr inbounds %struct.mv_cesa_skcipher_std_req, %struct.mv_cesa_skcipher_std_req* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mv_cesa_skcipher_std_req*, %struct.mv_cesa_skcipher_std_req** %7, align 8
  %33 = getelementptr inbounds %struct.mv_cesa_skcipher_std_req, %struct.mv_cesa_skcipher_std_req* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @sg_pcopy_from_buffer(i32 %20, i32 %23, i64 %28, i32 %31, i64 %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.mv_cesa_skcipher_std_req*, %struct.mv_cesa_skcipher_std_req** %7, align 8
  %38 = getelementptr inbounds %struct.mv_cesa_skcipher_std_req, %struct.mv_cesa_skcipher_std_req* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, %36
  store i64 %40, i64* %38, align 8
  %41 = load %struct.mv_cesa_skcipher_std_req*, %struct.mv_cesa_skcipher_std_req** %7, align 8
  %42 = getelementptr inbounds %struct.mv_cesa_skcipher_std_req, %struct.mv_cesa_skcipher_std_req* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %45 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %2
  %49 = load i32, i32* @EINPROGRESS, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.mv_cesa_skcipher_req* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i64 @sg_pcopy_from_buffer(i32, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
