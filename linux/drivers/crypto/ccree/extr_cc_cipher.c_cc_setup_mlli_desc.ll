; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_cipher.c_cc_setup_mlli_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_cipher.c_cc_setup_mlli_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.cipher_req_ctx = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.scatterlist = type { i32 }
%struct.cc_hw_desc = type { i32 }
%struct.cc_cipher_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.device = type { i32 }

@CC_DMA_BUF_MLLI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c" bypass params addr %pad length 0x%X addr 0x%08X\0A\00", align 1
@DMA_DLLI = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, %struct.cipher_req_ctx*, %struct.scatterlist*, %struct.scatterlist*, i32, i8*, %struct.cc_hw_desc*, i32*)* @cc_setup_mlli_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_setup_mlli_desc(%struct.crypto_tfm* %0, %struct.cipher_req_ctx* %1, %struct.scatterlist* %2, %struct.scatterlist* %3, i32 %4, i8* %5, %struct.cc_hw_desc* %6, i32* %7) #0 {
  %9 = alloca %struct.crypto_tfm*, align 8
  %10 = alloca %struct.cipher_req_ctx*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.cc_hw_desc*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.cc_cipher_ctx*, align 8
  %18 = alloca %struct.device*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %9, align 8
  store %struct.cipher_req_ctx* %1, %struct.cipher_req_ctx** %10, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %11, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store %struct.cc_hw_desc* %6, %struct.cc_hw_desc** %15, align 8
  store i32* %7, i32** %16, align 8
  %19 = load %struct.crypto_tfm*, %struct.crypto_tfm** %9, align 8
  %20 = call %struct.cc_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %19)
  store %struct.cc_cipher_ctx* %20, %struct.cc_cipher_ctx** %17, align 8
  %21 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %17, align 8
  %22 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call %struct.device* @drvdata_to_dev(%struct.TYPE_4__* %23)
  store %struct.device* %24, %struct.device** %18, align 8
  %25 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %10, align 8
  %26 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CC_DMA_BUF_MLLI, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %93

30:                                               ; preds = %8
  %31 = load %struct.device*, %struct.device** %18, align 8
  %32 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %10, align 8
  %33 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %10, align 8
  %36 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %17, align 8
  %40 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @dev_dbg(%struct.device* %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32* %34, i32 %38, i32 %44)
  %46 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %15, align 8
  %47 = load i32*, i32** %16, align 8
  %48 = load i32, i32* %47, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %46, i64 %49
  %51 = call i32 @hw_desc_init(%struct.cc_hw_desc* %50)
  %52 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %15, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %52, i64 %55
  %57 = load i32, i32* @DMA_DLLI, align 4
  %58 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %10, align 8
  %59 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %10, align 8
  %63 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @NS_BIT, align 4
  %67 = call i32 @set_din_type(%struct.cc_hw_desc* %56, i32 %57, i32 %61, i32 %65, i32 %66)
  %68 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %15, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %68, i64 %71
  %73 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %17, align 8
  %74 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %10, align 8
  %79 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @set_dout_sram(%struct.cc_hw_desc* %72, i64 %77, i32 %81)
  %83 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %15, align 8
  %84 = load i32*, i32** %16, align 8
  %85 = load i32, i32* %84, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %83, i64 %86
  %88 = load i32, i32* @BYPASS, align 4
  %89 = call i32 @set_flow_mode(%struct.cc_hw_desc* %87, i32 %88)
  %90 = load i32*, i32** %16, align 8
  %91 = load i32, i32* %90, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %30, %8
  ret void
}

declare dso_local %struct.cc_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.device* @drvdata_to_dev(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32*, i32, i32) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_din_type(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @set_dout_sram(%struct.cc_hw_desc*, i64, i32) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
