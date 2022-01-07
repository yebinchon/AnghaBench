; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_setup_crypto_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_setup_crypto_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_device = type { i32, i64 }
%struct.hifn_dma = type { i32 }
%struct.hifn_crypt_command = type { i64, i64, i8*, i8* }

@HIFN_CRYPT_CMD_SRCLEN_S = common dso_local global i32 0, align 4
@HIFN_CRYPT_CMD_SRCLEN_M = common dso_local global i32 0, align 4
@HIFN_DMAIER_C_WAIT = common dso_local global i32 0, align 4
@HIFN_1_DMA_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hifn_device*, i32*, i32, i32, i32*, i32, i32*, i32, i32)* @hifn_setup_crypto_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_setup_crypto_command(%struct.hifn_device* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.hifn_device*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.hifn_dma*, align 8
  %20 = alloca %struct.hifn_crypt_command*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.hifn_device* %0, %struct.hifn_device** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %23 = load %struct.hifn_device*, %struct.hifn_device** %10, align 8
  %24 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.hifn_dma*
  store %struct.hifn_dma* %26, %struct.hifn_dma** %19, align 8
  %27 = load i32*, i32** %11, align 8
  store i32* %27, i32** %21, align 8
  %28 = load i32*, i32** %21, align 8
  %29 = bitcast i32* %28 to %struct.hifn_crypt_command*
  store %struct.hifn_crypt_command* %29, %struct.hifn_crypt_command** %20, align 8
  %30 = load i32, i32* %12, align 4
  %31 = and i32 %30, 65535
  %32 = call i8* @__cpu_to_le16(i32 %31)
  %33 = load %struct.hifn_crypt_command*, %struct.hifn_crypt_command** %20, align 8
  %34 = getelementptr inbounds %struct.hifn_crypt_command, %struct.hifn_crypt_command* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %12, align 4
  %36 = lshr i32 %35, 16
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @HIFN_CRYPT_CMD_SRCLEN_S, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* @HIFN_CRYPT_CMD_SRCLEN_M, align 4
  %42 = and i32 %40, %41
  %43 = or i32 %37, %42
  %44 = call i8* @__cpu_to_le16(i32 %43)
  %45 = load %struct.hifn_crypt_command*, %struct.hifn_crypt_command** %20, align 8
  %46 = getelementptr inbounds %struct.hifn_crypt_command, %struct.hifn_crypt_command* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.hifn_crypt_command*, %struct.hifn_crypt_command** %20, align 8
  %48 = getelementptr inbounds %struct.hifn_crypt_command, %struct.hifn_crypt_command* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.hifn_crypt_command*, %struct.hifn_crypt_command** %20, align 8
  %50 = getelementptr inbounds %struct.hifn_crypt_command, %struct.hifn_crypt_command* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load i32*, i32** %21, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 32
  store i32* %52, i32** %21, align 8
  %53 = load %struct.hifn_dma*, %struct.hifn_dma** %19, align 8
  %54 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.hifn_dma*, %struct.hifn_dma** %19, align 8
  %58 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %73

61:                                               ; preds = %9
  %62 = load i32, i32* @HIFN_DMAIER_C_WAIT, align 4
  %63 = load %struct.hifn_device*, %struct.hifn_device** %10, align 8
  %64 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.hifn_device*, %struct.hifn_device** %10, align 8
  %68 = load i32, i32* @HIFN_1_DMA_IER, align 4
  %69 = load %struct.hifn_device*, %struct.hifn_device** %10, align 8
  %70 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @hifn_write_1(%struct.hifn_device* %67, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %61, %9
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i32*, i32** %21, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @memcpy(i32* %77, i32* %78, i32 %79)
  %81 = load i32, i32* %15, align 4
  %82 = load i32*, i32** %21, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %21, align 8
  br label %85

85:                                               ; preds = %76, %73
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load i32*, i32** %21, align 8
  %90 = load i32*, i32** %16, align 8
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @memcpy(i32* %89, i32* %90, i32 %91)
  %93 = load i32, i32* %17, align 4
  %94 = load i32*, i32** %21, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %21, align 8
  br label %97

97:                                               ; preds = %88, %85
  %98 = load i32*, i32** %21, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = ptrtoint i32* %98 to i64
  %101 = ptrtoint i32* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 4
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %22, align 4
  %105 = load i32, i32* %22, align 4
  ret i32 %105
}

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i32 @hifn_write_1(%struct.hifn_device*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
