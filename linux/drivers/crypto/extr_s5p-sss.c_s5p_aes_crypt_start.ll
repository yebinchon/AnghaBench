; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_aes_crypt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_aes_crypt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_aes_dev = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.ablkcipher_request* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ablkcipher_request = type { i32* }

@SSS_AES_KEY_CHANGE_MODE = common dso_local global i32 0, align 4
@FLAGS_AES_DECRYPT = common dso_local global i64 0, align 8
@SSS_AES_MODE_DECRYPT = common dso_local global i32 0, align 4
@FLAGS_AES_MODE_MASK = common dso_local global i64 0, align 8
@FLAGS_AES_CBC = common dso_local global i64 0, align 8
@SSS_AES_CHAIN_MODE_CBC = common dso_local global i32 0, align 4
@FLAGS_AES_CTR = common dso_local global i64 0, align 8
@SSS_AES_CHAIN_MODE_CTR = common dso_local global i32 0, align 4
@AES_KEYSIZE_192 = common dso_local global i64 0, align 8
@SSS_AES_KEY_SIZE_192 = common dso_local global i32 0, align 4
@AES_KEYSIZE_256 = common dso_local global i64 0, align 8
@SSS_AES_KEY_SIZE_256 = common dso_local global i32 0, align 4
@SSS_AES_FIFO_MODE = common dso_local global i32 0, align 4
@SSS_AES_BYTESWAP_DI = common dso_local global i32 0, align 4
@SSS_AES_BYTESWAP_DO = common dso_local global i32 0, align 4
@SSS_AES_BYTESWAP_IV = common dso_local global i32 0, align 4
@SSS_AES_BYTESWAP_KEY = common dso_local global i32 0, align 4
@SSS_AES_BYTESWAP_CNT = common dso_local global i32 0, align 4
@FCINTENCLR = common dso_local global i32 0, align 4
@SSS_FCINTENCLR_BTDMAINTENCLR = common dso_local global i32 0, align 4
@SSS_FCINTENCLR_BRDMAINTENCLR = common dso_local global i32 0, align 4
@FCFIFOCTRL = common dso_local global i32 0, align 4
@AES_CONTROL = common dso_local global i32 0, align 4
@FCINTENSET = common dso_local global i32 0, align 4
@SSS_FCINTENSET_BTDMAINTENSET = common dso_local global i32 0, align 4
@SSS_FCINTENSET_BRDMAINTENSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_aes_dev*, i64)* @s5p_aes_crypt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_aes_crypt_start(%struct.s5p_aes_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.s5p_aes_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ablkcipher_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.s5p_aes_dev* %0, %struct.s5p_aes_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %12 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %11, i32 0, i32 5
  %13 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %12, align 8
  store %struct.ablkcipher_request* %13, %struct.ablkcipher_request** %5, align 8
  %14 = load i32, i32* @SSS_AES_KEY_CHANGE_MODE, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @FLAGS_AES_DECRYPT, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @SSS_AES_MODE_DECRYPT, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @FLAGS_AES_MODE_MASK, align 8
  %26 = and i64 %24, %25
  %27 = load i64, i64* @FLAGS_AES_CBC, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load i32, i32* @SSS_AES_CHAIN_MODE_CBC, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %34 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %9, align 8
  store i32* null, i32** %10, align 8
  br label %51

36:                                               ; preds = %23
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @FLAGS_AES_MODE_MASK, align 8
  %39 = and i64 %37, %38
  %40 = load i64, i64* @FLAGS_AES_CTR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i32, i32* @SSS_AES_CHAIN_MODE_CTR, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  store i32* null, i32** %9, align 8
  %46 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %47 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %10, align 8
  br label %50

49:                                               ; preds = %36
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  br label %50

50:                                               ; preds = %49, %42
  br label %51

51:                                               ; preds = %50, %29
  %52 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %53 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %52, i32 0, i32 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AES_KEYSIZE_192, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i32, i32* @SSS_AES_KEY_SIZE_192, align 4
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %76

63:                                               ; preds = %51
  %64 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %65 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %64, i32 0, i32 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @AES_KEYSIZE_256, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load i32, i32* @SSS_AES_KEY_SIZE_256, align 4
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %71, %63
  br label %76

76:                                               ; preds = %75, %59
  %77 = load i32, i32* @SSS_AES_FIFO_MODE, align 4
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* @SSS_AES_BYTESWAP_DI, align 4
  %81 = load i32, i32* @SSS_AES_BYTESWAP_DO, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @SSS_AES_BYTESWAP_IV, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @SSS_AES_BYTESWAP_KEY, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @SSS_AES_BYTESWAP_CNT, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %6, align 4
  %91 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %92 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %91, i32 0, i32 1
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @spin_lock_irqsave(i32* %92, i64 %93)
  %95 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %96 = load i32, i32* @FCINTENCLR, align 4
  %97 = load i32, i32* @SSS_FCINTENCLR_BTDMAINTENCLR, align 4
  %98 = load i32, i32* @SSS_FCINTENCLR_BRDMAINTENCLR, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @SSS_WRITE(%struct.s5p_aes_dev* %95, i32 %96, i32 %99)
  %101 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %102 = load i32, i32* @FCFIFOCTRL, align 4
  %103 = call i32 @SSS_WRITE(%struct.s5p_aes_dev* %101, i32 %102, i32 0)
  %104 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %105 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %106 = call i32 @s5p_set_indata_start(%struct.s5p_aes_dev* %104, %struct.ablkcipher_request* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %76
  br label %159

110:                                              ; preds = %76
  %111 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %112 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %113 = call i32 @s5p_set_outdata_start(%struct.s5p_aes_dev* %111, %struct.ablkcipher_request* %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %156

117:                                              ; preds = %110
  %118 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %119 = load i32, i32* @AES_CONTROL, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @SSS_AES_WRITE(%struct.s5p_aes_dev* %118, i32 %119, i32 %120)
  %122 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %123 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %124 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %123, i32 0, i32 4
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32*, i32** %9, align 8
  %129 = load i32*, i32** %10, align 8
  %130 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %131 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %130, i32 0, i32 4
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @s5p_set_aes(%struct.s5p_aes_dev* %122, i32 %127, i32* %128, i32* %129, i64 %134)
  %136 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %137 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %138 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @s5p_set_dma_indata(%struct.s5p_aes_dev* %136, i32 %139)
  %141 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %142 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %143 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @s5p_set_dma_outdata(%struct.s5p_aes_dev* %141, i32 %144)
  %146 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %147 = load i32, i32* @FCINTENSET, align 4
  %148 = load i32, i32* @SSS_FCINTENSET_BTDMAINTENSET, align 4
  %149 = load i32, i32* @SSS_FCINTENSET_BRDMAINTENSET, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @SSS_WRITE(%struct.s5p_aes_dev* %146, i32 %147, i32 %150)
  %152 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %153 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %152, i32 0, i32 1
  %154 = load i64, i64* %7, align 8
  %155 = call i32 @spin_unlock_irqrestore(i32* %153, i64 %154)
  br label %171

156:                                              ; preds = %116
  %157 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %158 = call i32 @s5p_unset_indata(%struct.s5p_aes_dev* %157)
  br label %159

159:                                              ; preds = %156, %109
  %160 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %161 = call i32 @s5p_sg_done(%struct.s5p_aes_dev* %160)
  %162 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %163 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %162, i32 0, i32 0
  store i32 0, i32* %163, align 8
  %164 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %165 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %164, i32 0, i32 1
  %166 = load i64, i64* %7, align 8
  %167 = call i32 @spin_unlock_irqrestore(i32* %165, i64 %166)
  %168 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @s5p_aes_complete(%struct.ablkcipher_request* %168, i32 %169)
  br label %171

171:                                              ; preds = %159, %117
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @SSS_WRITE(%struct.s5p_aes_dev*, i32, i32) #1

declare dso_local i32 @s5p_set_indata_start(%struct.s5p_aes_dev*, %struct.ablkcipher_request*) #1

declare dso_local i32 @s5p_set_outdata_start(%struct.s5p_aes_dev*, %struct.ablkcipher_request*) #1

declare dso_local i32 @SSS_AES_WRITE(%struct.s5p_aes_dev*, i32, i32) #1

declare dso_local i32 @s5p_set_aes(%struct.s5p_aes_dev*, i32, i32*, i32*, i64) #1

declare dso_local i32 @s5p_set_dma_indata(%struct.s5p_aes_dev*, i32) #1

declare dso_local i32 @s5p_set_dma_outdata(%struct.s5p_aes_dev*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @s5p_unset_indata(%struct.s5p_aes_dev*) #1

declare dso_local i32 @s5p_sg_done(%struct.s5p_aes_dev*) #1

declare dso_local i32 @s5p_aes_complete(%struct.ablkcipher_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
