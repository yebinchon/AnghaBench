; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_aead_chain_iv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_aead_chain_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { i32 }
%struct.aead_request = type { i32, i32 }
%struct.buffer_array = type { i32 }
%struct.aead_req_ctx = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32* }
%struct.device = type { i32 }
%struct.crypto_aead = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Mapping iv %u B at va=%pK for DMA failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Mapped iv %u B at va=%pK to dma=%pad\0A\00", align 1
@GCM_BLOCK_RFC4_IV_OFFSET = common dso_local global i32 0, align 4
@CC_DMA_BUF_MLLI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc_drvdata*, %struct.aead_request*, %struct.buffer_array*, i32, i32)* @cc_aead_chain_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_aead_chain_iv(%struct.cc_drvdata* %0, %struct.aead_request* %1, %struct.buffer_array* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cc_drvdata*, align 8
  %8 = alloca %struct.aead_request*, align 8
  %9 = alloca %struct.buffer_array*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.aead_req_ctx*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.crypto_aead*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %7, align 8
  store %struct.aead_request* %1, %struct.aead_request** %8, align 8
  store %struct.buffer_array* %2, %struct.buffer_array** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %21 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %20)
  store %struct.aead_req_ctx* %21, %struct.aead_req_ctx** %12, align 8
  %22 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %23 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %13, align 4
  %25 = load %struct.cc_drvdata*, %struct.cc_drvdata** %7, align 8
  %26 = call %struct.device* @drvdata_to_dev(%struct.cc_drvdata* %25)
  store %struct.device* %26, %struct.device** %14, align 8
  %27 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %28 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %27, i32 0, i32 1
  %29 = call i32 @cc_gfp_flags(i32* %28)
  store i32 %29, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %30 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %31 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %5
  %35 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %36 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %39 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  br label %137

41:                                               ; preds = %5
  %42 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %43 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i32* @kmemdup(i32 %44, i32 %45, i32 %46)
  %48 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %49 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32* %47, i32** %50, align 8
  %51 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %52 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %41
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %139

59:                                               ; preds = %41
  %60 = load %struct.device*, %struct.device** %14, align 8
  %61 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %62 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %67 = call i64 @dma_map_single(%struct.device* %60, i32* %64, i32 %65, i32 %66)
  %68 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %69 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i64 %67, i64* %70, align 8
  %71 = load %struct.device*, %struct.device** %14, align 8
  %72 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %73 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @dma_mapping_error(%struct.device* %71, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %59
  %79 = load %struct.device*, %struct.device** %14, align 8
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %82 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %83)
  %85 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %86 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @kzfree(i32* %88)
  %90 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %91 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i32* null, i32** %92, align 8
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %16, align 4
  br label %137

95:                                               ; preds = %59
  %96 = load %struct.device*, %struct.device** %14, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %99 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %102 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = call i32 @dev_dbg(%struct.device* %96, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %100, i64* %103)
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %136

107:                                              ; preds = %95
  %108 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %109 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %136

112:                                              ; preds = %107
  %113 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %114 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %113)
  store %struct.crypto_aead* %114, %struct.crypto_aead** %17, align 8
  %115 = load %struct.crypto_aead*, %struct.crypto_aead** %17, align 8
  %116 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %115)
  store i32 %116, i32* %18, align 4
  %117 = load i32, i32* @GCM_BLOCK_RFC4_IV_OFFSET, align 4
  store i32 %117, i32* %19, align 4
  %118 = load %struct.device*, %struct.device** %14, align 8
  %119 = load %struct.buffer_array*, %struct.buffer_array** %9, align 8
  %120 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %121 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %19, align 4
  %125 = zext i32 %124 to i64
  %126 = add nsw i64 %123, %125
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %130 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = call i32 @cc_add_buffer_entry(%struct.device* %118, %struct.buffer_array* %119, i64 %126, i32 %127, i32 %128, i32* %131)
  %133 = load i32, i32* @CC_DMA_BUF_MLLI, align 4
  %134 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %135 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  br label %136

136:                                              ; preds = %112, %107, %95
  br label %137

137:                                              ; preds = %136, %78, %34
  %138 = load i32, i32* %16, align 4
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %137, %56
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.device* @drvdata_to_dev(%struct.cc_drvdata*) #1

declare dso_local i32 @cc_gfp_flags(i32*) #1

declare dso_local i32* @kmemdup(i32, i32, i32) #1

declare dso_local i64 @dma_map_single(%struct.device*, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @kzfree(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i64*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @cc_add_buffer_entry(%struct.device*, %struct.buffer_array*, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
