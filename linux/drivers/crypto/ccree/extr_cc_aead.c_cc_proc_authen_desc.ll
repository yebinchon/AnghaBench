; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_proc_authen_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_proc_authen_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.cc_hw_desc = type { i32 }
%struct.aead_req_ctx = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_4__, i32, %struct.scatterlist*, %struct.scatterlist* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.scatterlist = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.cc_aead_ctx = type { i32 }
%struct.device = type { i32 }

@DRV_CRYPTO_DIRECTION_ENCRYPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"AUTHENC: SRC/DST buffer type DLLI\0A\00", align 1
@DMA_DLLI = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"AUTHENC: SRC/DST buffer type MLLI\0A\00", align 1
@DMA_MLLI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"AUTHENC: Invalid SRC/DST buffer type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, i32, %struct.cc_hw_desc*, i32*, i32)* @cc_proc_authen_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_proc_authen_desc(%struct.aead_request* %0, i32 %1, %struct.cc_hw_desc* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.aead_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cc_hw_desc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.aead_req_ctx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.crypto_aead*, align 8
  %15 = alloca %struct.cc_aead_ctx*, align 8
  %16 = alloca %struct.device*, align 8
  %17 = alloca %struct.scatterlist*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.cc_hw_desc* %2, %struct.cc_hw_desc** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %21 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %22 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %21)
  store %struct.aead_req_ctx* %22, %struct.aead_req_ctx** %11, align 8
  %23 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %11, align 8
  %24 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %12, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %29 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %28)
  store %struct.crypto_aead* %29, %struct.crypto_aead** %14, align 8
  %30 = load %struct.crypto_aead*, %struct.crypto_aead** %14, align 8
  %31 = call %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %30)
  store %struct.cc_aead_ctx* %31, %struct.cc_aead_ctx** %15, align 8
  %32 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %15, align 8
  %33 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.device* @drvdata_to_dev(i32 %34)
  store %struct.device* %35, %struct.device** %16, align 8
  %36 = load i32, i32* %12, align 4
  switch i32 %36, label %151 [
    i32 130, label %37
    i32 129, label %91
    i32 128, label %150
  ]

37:                                               ; preds = %5
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @DRV_CRYPTO_DIRECTION_ENCRYPT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %11, align 8
  %43 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %42, i32 0, i32 9
  %44 = load %struct.scatterlist*, %struct.scatterlist** %43, align 8
  br label %49

45:                                               ; preds = %37
  %46 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %11, align 8
  %47 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %46, i32 0, i32 8
  %48 = load %struct.scatterlist*, %struct.scatterlist** %47, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi %struct.scatterlist* [ %44, %41 ], [ %48, %45 ]
  store %struct.scatterlist* %50, %struct.scatterlist** %17, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @DRV_CRYPTO_DIRECTION_ENCRYPT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %11, align 8
  %56 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  br label %62

58:                                               ; preds = %49
  %59 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %11, align 8
  %60 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  br label %62

62:                                               ; preds = %58, %54
  %63 = phi i32 [ %57, %54 ], [ %61, %58 ]
  store i32 %63, i32* %18, align 4
  %64 = load %struct.device*, %struct.device** %16, align 8
  %65 = call i32 @dev_dbg(%struct.device* %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %8, align 8
  %67 = load i32, i32* %13, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %66, i64 %68
  %70 = call i32 @hw_desc_init(%struct.cc_hw_desc* %69)
  %71 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %8, align 8
  %72 = load i32, i32* %13, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %71, i64 %73
  %75 = load i32, i32* @DMA_DLLI, align 4
  %76 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %77 = call i32 @sg_dma_address(%struct.scatterlist* %76)
  %78 = load i32, i32* %18, align 4
  %79 = add i32 %77, %78
  %80 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %11, align 8
  %81 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @NS_BIT, align 4
  %84 = call i32 @set_din_type(%struct.cc_hw_desc* %74, i32 %75, i32 %79, i32 %82, i32 %83)
  %85 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %8, align 8
  %86 = load i32, i32* %13, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %85, i64 %87
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @set_flow_mode(%struct.cc_hw_desc* %88, i32 %89)
  br label %154

91:                                               ; preds = %5
  %92 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %11, align 8
  %93 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %19, align 4
  %96 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %11, align 8
  %97 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %20, align 4
  %100 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %11, align 8
  %101 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %91
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @DRV_CRYPTO_DIRECTION_ENCRYPT, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %11, align 8
  %110 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %19, align 4
  %113 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %11, align 8
  %114 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %20, align 4
  br label %126

117:                                              ; preds = %104
  %118 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %11, align 8
  %119 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %19, align 4
  %122 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %11, align 8
  %123 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %20, align 4
  br label %126

126:                                              ; preds = %117, %108
  br label %127

127:                                              ; preds = %126, %91
  %128 = load %struct.device*, %struct.device** %16, align 8
  %129 = call i32 @dev_dbg(%struct.device* %128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %130 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %8, align 8
  %131 = load i32, i32* %13, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %130, i64 %132
  %134 = call i32 @hw_desc_init(%struct.cc_hw_desc* %133)
  %135 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %8, align 8
  %136 = load i32, i32* %13, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %135, i64 %137
  %139 = load i32, i32* @DMA_MLLI, align 4
  %140 = load i32, i32* %19, align 4
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* @NS_BIT, align 4
  %143 = call i32 @set_din_type(%struct.cc_hw_desc* %138, i32 %139, i32 %140, i32 %141, i32 %142)
  %144 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %8, align 8
  %145 = load i32, i32* %13, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %144, i64 %146
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @set_flow_mode(%struct.cc_hw_desc* %147, i32 %148)
  br label %154

150:                                              ; preds = %5
  br label %151

151:                                              ; preds = %5, %150
  %152 = load %struct.device*, %struct.device** %16, align 8
  %153 = call i32 @dev_err(%struct.device* %152, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %127, %62
  %155 = load i32, i32* %13, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %13, align 4
  %157 = load i32*, i32** %9, align 8
  store i32 %156, i32* %157, align 4
  ret void
}

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_din_type(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
