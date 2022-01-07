; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_set_assoc_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_set_assoc_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.cc_hw_desc = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.cc_aead_ctx = type { i32, i32 }
%struct.aead_req_ctx = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"ASSOC buffer type DLLI\0A\00", align 1
@DMA_DLLI = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@DRV_HASH_XCBC_MAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ASSOC buffer type MLLI\0A\00", align 1
@DMA_MLLI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid ASSOC buffer type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, i32, %struct.cc_hw_desc*, i32*)* @cc_set_assoc_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_set_assoc_desc(%struct.aead_request* %0, i32 %1, %struct.cc_hw_desc* %2, i32* %3) #0 {
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cc_hw_desc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.crypto_aead*, align 8
  %10 = alloca %struct.cc_aead_ctx*, align 8
  %11 = alloca %struct.aead_req_ctx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.device*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cc_hw_desc* %2, %struct.cc_hw_desc** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %16 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %15)
  store %struct.crypto_aead* %16, %struct.crypto_aead** %9, align 8
  %17 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %18 = call %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %17)
  store %struct.cc_aead_ctx* %18, %struct.cc_aead_ctx** %10, align 8
  %19 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %20 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %19)
  store %struct.aead_req_ctx* %20, %struct.aead_req_ctx** %11, align 8
  %21 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %11, align 8
  %22 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %10, align 8
  %27 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.device* @drvdata_to_dev(i32 %28)
  store %struct.device* %29, %struct.device** %14, align 8
  %30 = load i32, i32* %12, align 4
  switch i32 %30, label %123 [
    i32 130, label %31
    i32 129, label %76
    i32 128, label %122
  ]

31:                                               ; preds = %4
  %32 = load %struct.device*, %struct.device** %14, align 8
  %33 = call i32 @dev_dbg(%struct.device* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %7, align 8
  %35 = load i32, i32* %13, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %34, i64 %36
  %38 = call i32 @hw_desc_init(%struct.cc_hw_desc* %37)
  %39 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %7, align 8
  %40 = load i32, i32* %13, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %39, i64 %41
  %43 = load i32, i32* @DMA_DLLI, align 4
  %44 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %45 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sg_dma_address(i32 %46)
  %48 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %11, align 8
  %49 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @NS_BIT, align 4
  %52 = call i32 @set_din_type(%struct.cc_hw_desc* %42, i32 %43, i32 %47, i32 %50, i32 %51)
  %53 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %7, align 8
  %54 = load i32, i32* %13, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %53, i64 %55
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @set_flow_mode(%struct.cc_hw_desc* %56, i32 %57)
  %59 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %10, align 8
  %60 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DRV_HASH_XCBC_MAC, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %31
  %65 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %11, align 8
  %66 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %7, align 8
  %71 = load i32, i32* %13, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %70, i64 %72
  %74 = call i32 @set_din_not_last_indication(%struct.cc_hw_desc* %73)
  br label %75

75:                                               ; preds = %69, %64, %31
  br label %126

76:                                               ; preds = %4
  %77 = load %struct.device*, %struct.device** %14, align 8
  %78 = call i32 @dev_dbg(%struct.device* %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %7, align 8
  %80 = load i32, i32* %13, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %79, i64 %81
  %83 = call i32 @hw_desc_init(%struct.cc_hw_desc* %82)
  %84 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %7, align 8
  %85 = load i32, i32* %13, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %84, i64 %86
  %88 = load i32, i32* @DMA_MLLI, align 4
  %89 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %11, align 8
  %90 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %11, align 8
  %94 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @NS_BIT, align 4
  %98 = call i32 @set_din_type(%struct.cc_hw_desc* %87, i32 %88, i32 %92, i32 %96, i32 %97)
  %99 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %7, align 8
  %100 = load i32, i32* %13, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %99, i64 %101
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @set_flow_mode(%struct.cc_hw_desc* %102, i32 %103)
  %105 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %10, align 8
  %106 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @DRV_HASH_XCBC_MAC, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %76
  %111 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %11, align 8
  %112 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %7, align 8
  %117 = load i32, i32* %13, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %116, i64 %118
  %120 = call i32 @set_din_not_last_indication(%struct.cc_hw_desc* %119)
  br label %121

121:                                              ; preds = %115, %110, %76
  br label %126

122:                                              ; preds = %4
  br label %123

123:                                              ; preds = %4, %122
  %124 = load %struct.device*, %struct.device** %14, align 8
  %125 = call i32 @dev_err(%struct.device* %124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %121, %75
  %127 = load i32, i32* %13, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %13, align 4
  %129 = load i32*, i32** %8, align 8
  store i32 %128, i32* %129, align 4
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_din_type(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @sg_dma_address(i32) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_din_not_last_indication(%struct.cc_hw_desc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
