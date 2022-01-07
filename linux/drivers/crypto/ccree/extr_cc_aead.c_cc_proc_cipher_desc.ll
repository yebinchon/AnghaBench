; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_proc_cipher_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_proc_cipher_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.cc_hw_desc = type { i32 }
%struct.aead_req_ctx = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__, i64, i32, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.crypto_aead = type { i32 }
%struct.cc_aead_ctx = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"CIPHER: SRC/DST buffer type DLLI\0A\00", align 1
@DMA_DLLI = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"CIPHER: SRC/DST buffer type MLLI\0A\00", align 1
@DMA_MLLI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"CIPHER: Invalid SRC/DST buffer type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, i32, %struct.cc_hw_desc*, i32*)* @cc_proc_cipher_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_proc_cipher_desc(%struct.aead_request* %0, i32 %1, %struct.cc_hw_desc* %2, i32* %3) #0 {
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cc_hw_desc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.aead_req_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.crypto_aead*, align 8
  %13 = alloca %struct.cc_aead_ctx*, align 8
  %14 = alloca %struct.device*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cc_hw_desc* %2, %struct.cc_hw_desc** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %18 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %17)
  store %struct.aead_req_ctx* %18, %struct.aead_req_ctx** %10, align 8
  %19 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %10, align 8
  %20 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %23 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %22)
  store %struct.crypto_aead* %23, %struct.crypto_aead** %12, align 8
  %24 = load %struct.crypto_aead*, %struct.crypto_aead** %12, align 8
  %25 = call %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %24)
  store %struct.cc_aead_ctx* %25, %struct.cc_aead_ctx** %13, align 8
  %26 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %13, align 8
  %27 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.device* @drvdata_to_dev(i32 %28)
  store %struct.device* %29, %struct.device** %14, align 8
  %30 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %10, align 8
  %31 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  br label %137

35:                                               ; preds = %4
  %36 = load i32, i32* %11, align 4
  switch i32 %36, label %130 [
    i32 130, label %37
    i32 129, label %86
    i32 128, label %129
  ]

37:                                               ; preds = %35
  %38 = load %struct.device*, %struct.device** %14, align 8
  %39 = call i32 @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %42
  %44 = call i32 @hw_desc_init(%struct.cc_hw_desc* %43)
  %45 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %45, i64 %47
  %49 = load i32, i32* @DMA_DLLI, align 4
  %50 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %10, align 8
  %51 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @sg_dma_address(i32 %52)
  %54 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %10, align 8
  %55 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %10, align 8
  %59 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @NS_BIT, align 4
  %62 = call i32 @set_din_type(%struct.cc_hw_desc* %48, i32 %49, i64 %57, i64 %60, i32 %61)
  %63 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %63, i64 %65
  %67 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %10, align 8
  %68 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @sg_dma_address(i32 %69)
  %71 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %10, align 8
  %72 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %10, align 8
  %76 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @NS_BIT, align 4
  %79 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %66, i64 %74, i64 %77, i32 %78, i32 0)
  %80 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %7, align 8
  %81 = load i32, i32* %9, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %80, i64 %82
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @set_flow_mode(%struct.cc_hw_desc* %83, i32 %84)
  br label %133

86:                                               ; preds = %35
  %87 = load %struct.device*, %struct.device** %14, align 8
  %88 = call i32 @dev_dbg(%struct.device* %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %89 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %89, i64 %91
  %93 = call i32 @hw_desc_init(%struct.cc_hw_desc* %92)
  %94 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %7, align 8
  %95 = load i32, i32* %9, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %94, i64 %96
  %98 = load i32, i32* @DMA_MLLI, align 4
  %99 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %10, align 8
  %100 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %10, align 8
  %104 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @NS_BIT, align 4
  %108 = call i32 @set_din_type(%struct.cc_hw_desc* %97, i32 %98, i64 %102, i64 %106, i32 %107)
  %109 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %7, align 8
  %110 = load i32, i32* %9, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %109, i64 %111
  %113 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %10, align 8
  %114 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %10, align 8
  %118 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @NS_BIT, align 4
  %122 = call i32 @set_dout_mlli(%struct.cc_hw_desc* %112, i32 %116, i32 %120, i32 %121, i32 0)
  %123 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %7, align 8
  %124 = load i32, i32* %9, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %123, i64 %125
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @set_flow_mode(%struct.cc_hw_desc* %126, i32 %127)
  br label %133

129:                                              ; preds = %35
  br label %130

130:                                              ; preds = %35, %129
  %131 = load %struct.device*, %struct.device** %14, align 8
  %132 = call i32 @dev_err(%struct.device* %131, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %86, %37
  %134 = load i32, i32* %9, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %9, align 4
  %136 = load i32*, i32** %8, align 8
  store i32 %135, i32* %136, align 4
  br label %137

137:                                              ; preds = %133, %34
  ret void
}

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_din_type(%struct.cc_hw_desc*, i32, i64, i64, i32) #1

declare dso_local i64 @sg_dma_address(i32) #1

declare dso_local i32 @set_dout_dlli(%struct.cc_hw_desc*, i64, i64, i32, i32) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_dout_mlli(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
