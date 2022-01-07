; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_mlli_to_sram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_mlli_to_sram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.cc_hw_desc = type { i32 }
%struct.aead_req_ctx = type { i64, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.crypto_aead = type { i32 }
%struct.cc_aead_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.device = type { i32 }

@CC_DMA_BUF_MLLI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Copy-to-sram: mlli_dma=%08x, mlli_size=%u\0A\00", align 1
@DMA_DLLI = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, %struct.cc_hw_desc*, i32*)* @cc_mlli_to_sram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_mlli_to_sram(%struct.aead_request* %0, %struct.cc_hw_desc* %1, i32* %2) #0 {
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca %struct.cc_hw_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.aead_req_ctx*, align 8
  %8 = alloca %struct.crypto_aead*, align 8
  %9 = alloca %struct.cc_aead_ctx*, align 8
  %10 = alloca %struct.device*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store %struct.cc_hw_desc* %1, %struct.cc_hw_desc** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %12 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %11)
  store %struct.aead_req_ctx* %12, %struct.aead_req_ctx** %7, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %14 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %13)
  store %struct.crypto_aead* %14, %struct.crypto_aead** %8, align 8
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %16 = call %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %15)
  store %struct.cc_aead_ctx* %16, %struct.cc_aead_ctx** %9, align 8
  %17 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %9, align 8
  %18 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = call %struct.device* @drvdata_to_dev(%struct.TYPE_4__* %19)
  store %struct.device* %20, %struct.device** %10, align 8
  %21 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %7, align 8
  %22 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CC_DMA_BUF_MLLI, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %37, label %26

26:                                               ; preds = %3
  %27 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %7, align 8
  %28 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CC_DMA_BUF_MLLI, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %7, align 8
  %34 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %103, label %37

37:                                               ; preds = %32, %26, %3
  %38 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %7, align 8
  %39 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %103

43:                                               ; preds = %37
  %44 = load %struct.device*, %struct.device** %10, align 8
  %45 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %9, align 8
  %46 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %7, align 8
  %52 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @dev_dbg(%struct.device* %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %50, i64 %54)
  %56 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %56, i64 %59
  %61 = call i32 @hw_desc_init(%struct.cc_hw_desc* %60)
  %62 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %63, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %62, i64 %65
  %67 = load i32, i32* @DMA_DLLI, align 4
  %68 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %7, align 8
  %69 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %7, align 8
  %73 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @NS_BIT, align 4
  %77 = call i32 @set_din_type(%struct.cc_hw_desc* %66, i32 %67, i32 %71, i64 %75, i32 %76)
  %78 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %79, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %78, i64 %81
  %83 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %9, align 8
  %84 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %7, align 8
  %89 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @set_dout_sram(%struct.cc_hw_desc* %82, i64 %87, i64 %91)
  %93 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %94, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %93, i64 %96
  %98 = load i32, i32* @BYPASS, align 4
  %99 = call i32 @set_flow_mode(%struct.cc_hw_desc* %97, i32 %98)
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %100, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %43, %37, %32
  ret void
}

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.device* @drvdata_to_dev(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i64) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_din_type(%struct.cc_hw_desc*, i32, i32, i64, i32) #1

declare dso_local i32 @set_dout_sram(%struct.cc_hw_desc*, i64, i64) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
