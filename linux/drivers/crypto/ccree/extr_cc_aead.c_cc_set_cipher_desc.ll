; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_set_cipher_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_set_cipher_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.cc_hw_desc = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.cc_aead_ctx = type { i64, i64, i32, i32 }
%struct.aead_req_ctx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@DMA_DLLI = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@DRV_CIPHER_CTR = common dso_local global i64 0, align 8
@SETUP_LOAD_STATE1 = common dso_local global i32 0, align 4
@SETUP_LOAD_STATE0 = common dso_local global i32 0, align 4
@SETUP_LOAD_KEY0 = common dso_local global i32 0, align 4
@S_DIN_to_AES = common dso_local global i64 0, align 8
@CC_AES_KEY_SIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, %struct.cc_hw_desc*, i32*)* @cc_set_cipher_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_set_cipher_desc(%struct.aead_request* %0, %struct.cc_hw_desc* %1, i32* %2) #0 {
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca %struct.cc_hw_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca %struct.cc_aead_ctx*, align 8
  %9 = alloca %struct.aead_req_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store %struct.cc_hw_desc* %1, %struct.cc_hw_desc** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %14 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %13)
  store %struct.crypto_aead* %14, %struct.crypto_aead** %7, align 8
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %16 = call %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %15)
  store %struct.cc_aead_ctx* %16, %struct.cc_aead_ctx** %8, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %18 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %17)
  store %struct.aead_req_ctx* %18, %struct.aead_req_ctx** %9, align 8
  %19 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %20 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %25 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %28, i64 %30
  %32 = call i32 @hw_desc_init(%struct.cc_hw_desc* %31)
  %33 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %35
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %36, i32 %37)
  %39 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %40 = load i32, i32* %11, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %39, i64 %41
  %43 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %44 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @set_flow_mode(%struct.cc_hw_desc* %42, i64 %45)
  %47 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %48 = load i32, i32* %11, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %47, i64 %49
  %51 = load i32, i32* @DMA_DLLI, align 4
  %52 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %53 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @NS_BIT, align 4
  %58 = call i32 @set_din_type(%struct.cc_hw_desc* %50, i32 %51, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %60 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DRV_CIPHER_CTR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %3
  %65 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %66 = load i32, i32* %11, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %65, i64 %67
  %69 = load i32, i32* @SETUP_LOAD_STATE1, align 4
  %70 = call i32 @set_setup_mode(%struct.cc_hw_desc* %68, i32 %69)
  br label %78

71:                                               ; preds = %3
  %72 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %72, i64 %74
  %76 = load i32, i32* @SETUP_LOAD_STATE0, align 4
  %77 = call i32 @set_setup_mode(%struct.cc_hw_desc* %75, i32 %76)
  br label %78

78:                                               ; preds = %71, %64
  %79 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %80 = load i32, i32* %11, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %79, i64 %81
  %83 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %84 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %82, i64 %85)
  %87 = load i32, i32* %11, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %11, align 4
  %89 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %90 = load i32, i32* %11, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %89, i64 %91
  %93 = call i32 @hw_desc_init(%struct.cc_hw_desc* %92)
  %94 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %95 = load i32, i32* %11, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %94, i64 %96
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %97, i32 %98)
  %100 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %101 = load i32, i32* %11, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %100, i64 %102
  %104 = load i32, i32* @SETUP_LOAD_KEY0, align 4
  %105 = call i32 @set_setup_mode(%struct.cc_hw_desc* %103, i32 %104)
  %106 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %107 = load i32, i32* %11, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %106, i64 %108
  %110 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %111 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @set_flow_mode(%struct.cc_hw_desc* %109, i64 %112)
  %114 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %115 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @S_DIN_to_AES, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %150

119:                                              ; preds = %78
  %120 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %121 = load i32, i32* %11, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %120, i64 %122
  %124 = load i32, i32* @DMA_DLLI, align 4
  %125 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %126 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %129 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 24
  br i1 %131, label %132, label %134

132:                                              ; preds = %119
  %133 = load i32, i32* @CC_AES_KEY_SIZE_MAX, align 4
  br label %138

134:                                              ; preds = %119
  %135 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %136 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  br label %138

138:                                              ; preds = %134, %132
  %139 = phi i32 [ %133, %132 ], [ %137, %134 ]
  %140 = load i32, i32* @NS_BIT, align 4
  %141 = call i32 @set_din_type(%struct.cc_hw_desc* %123, i32 %124, i32 %127, i32 %139, i32 %140)
  %142 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %143 = load i32, i32* %11, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %142, i64 %144
  %146 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %147 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @set_key_size_aes(%struct.cc_hw_desc* %145, i32 %148)
  br label %172

150:                                              ; preds = %78
  %151 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %152 = load i32, i32* %11, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %151, i64 %153
  %155 = load i32, i32* @DMA_DLLI, align 4
  %156 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %157 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %160 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @NS_BIT, align 4
  %163 = call i32 @set_din_type(%struct.cc_hw_desc* %154, i32 %155, i32 %158, i32 %161, i32 %162)
  %164 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %165 = load i32, i32* %11, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %164, i64 %166
  %168 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %169 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @set_key_size_des(%struct.cc_hw_desc* %167, i32 %170)
  br label %172

172:                                              ; preds = %150, %138
  %173 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %174 = load i32, i32* %11, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %173, i64 %175
  %177 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %178 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %176, i64 %179)
  %181 = load i32, i32* %11, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* %11, align 4
  %184 = load i32*, i32** %6, align 8
  store i32 %183, i32* %184, align 4
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_cipher_config0(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i64) #1

declare dso_local i32 @set_din_type(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_cipher_mode(%struct.cc_hw_desc*, i64) #1

declare dso_local i32 @set_key_size_aes(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_key_size_des(%struct.cc_hw_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
