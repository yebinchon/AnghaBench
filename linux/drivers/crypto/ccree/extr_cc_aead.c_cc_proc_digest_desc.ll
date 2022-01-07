; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_proc_digest_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_proc_digest_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.cc_hw_desc = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.cc_aead_ctx = type { i64, i32, i32 }
%struct.aead_req_ctx = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DRV_HASH_SHA1 = common dso_local global i64 0, align 8
@DRV_HASH_HW_SHA1 = common dso_local global i32 0, align 4
@DRV_HASH_HW_SHA256 = common dso_local global i32 0, align 4
@DRV_CRYPTO_DIRECTION_ENCRYPT = common dso_local global i32 0, align 4
@S_HASH_to_DOUT = common dso_local global i32 0, align 4
@SETUP_WRITE_STATE0 = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@DRV_HASH_XCBC_MAC = common dso_local global i64 0, align 8
@DRV_CIPHER_XCBC_MAC = common dso_local global i32 0, align 4
@HASH_DIGEST_RESULT_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@HASH_PADDING_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, %struct.cc_hw_desc*, i32*)* @cc_proc_digest_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_proc_digest_desc(%struct.aead_request* %0, %struct.cc_hw_desc* %1, i32* %2) #0 {
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
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %22 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DRV_HASH_SHA1, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @DRV_HASH_HW_SHA1, align 4
  br label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @DRV_HASH_HW_SHA256, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %11, align 4
  %32 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %33 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @DRV_CRYPTO_DIRECTION_ENCRYPT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %108

39:                                               ; preds = %30
  %40 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %42
  %44 = call i32 @hw_desc_init(%struct.cc_hw_desc* %43)
  %45 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %45, i64 %47
  %49 = load i32, i32* @S_HASH_to_DOUT, align 4
  %50 = call i32 @set_flow_mode(%struct.cc_hw_desc* %48, i32 %49)
  %51 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %51, i64 %53
  %55 = load i32, i32* @SETUP_WRITE_STATE0, align 4
  %56 = call i32 @set_setup_mode(%struct.cc_hw_desc* %54, i32 %55)
  %57 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %57, i64 %59
  %61 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %62 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %65 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @NS_BIT, align 4
  %68 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %60, i32 %63, i32 %66, i32 %67, i32 1)
  %69 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %70 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %73 = load i32, i32* %10, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %72, i64 %74
  %76 = call i32 @set_queue_last_ind(i32 %71, %struct.cc_hw_desc* %75)
  %77 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %78 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DRV_HASH_XCBC_MAC, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %39
  %83 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %84 = load i32, i32* %10, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %83, i64 %85
  %87 = call i32 @set_aes_not_hash_mode(%struct.cc_hw_desc* %86)
  %88 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %89 = load i32, i32* %10, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %88, i64 %90
  %92 = load i32, i32* @DRV_CIPHER_XCBC_MAC, align 4
  %93 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %91, i32 %92)
  br label %107

94:                                               ; preds = %39
  %95 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %96 = load i32, i32* %10, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %95, i64 %97
  %99 = load i32, i32* @HASH_DIGEST_RESULT_LITTLE_ENDIAN, align 4
  %100 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %98, i32 %99)
  %101 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %102 = load i32, i32* %10, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %101, i64 %103
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %104, i32 %105)
  br label %107

107:                                              ; preds = %94, %82
  br label %183

108:                                              ; preds = %30
  %109 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %110 = load i32, i32* %10, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %109, i64 %111
  %113 = call i32 @hw_desc_init(%struct.cc_hw_desc* %112)
  %114 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %115 = load i32, i32* %10, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %114, i64 %116
  %118 = load i32, i32* @SETUP_WRITE_STATE0, align 4
  %119 = call i32 @set_setup_mode(%struct.cc_hw_desc* %117, i32 %118)
  %120 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %121 = load i32, i32* %10, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %120, i64 %122
  %124 = load i32, i32* @S_HASH_to_DOUT, align 4
  %125 = call i32 @set_flow_mode(%struct.cc_hw_desc* %123, i32 %124)
  %126 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %127 = load i32, i32* %10, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %126, i64 %128
  %130 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %131 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %134 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @NS_BIT, align 4
  %137 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %129, i32 %132, i32 %135, i32 %136, i32 1)
  %138 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %139 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %142 = load i32, i32* %10, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %141, i64 %143
  %145 = call i32 @set_queue_last_ind(i32 %140, %struct.cc_hw_desc* %144)
  %146 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %147 = load i32, i32* %10, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %146, i64 %148
  %150 = load i32, i32* @HASH_DIGEST_RESULT_LITTLE_ENDIAN, align 4
  %151 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %149, i32 %150)
  %152 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %153 = load i32, i32* %10, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %152, i64 %154
  %156 = load i32, i32* @HASH_PADDING_DISABLED, align 4
  %157 = call i32 @set_cipher_config1(%struct.cc_hw_desc* %155, i32 %156)
  %158 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %159 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @DRV_HASH_XCBC_MAC, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %175

163:                                              ; preds = %108
  %164 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %165 = load i32, i32* %10, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %164, i64 %166
  %168 = load i32, i32* @DRV_CIPHER_XCBC_MAC, align 4
  %169 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %167, i32 %168)
  %170 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %171 = load i32, i32* %10, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %170, i64 %172
  %174 = call i32 @set_aes_not_hash_mode(%struct.cc_hw_desc* %173)
  br label %182

175:                                              ; preds = %108
  %176 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %177 = load i32, i32* %10, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %176, i64 %178
  %180 = load i32, i32* %11, align 4
  %181 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %179, i32 %180)
  br label %182

182:                                              ; preds = %175, %163
  br label %183

183:                                              ; preds = %182, %107
  %184 = load i32, i32* %10, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %10, align 4
  %186 = load i32*, i32** %6, align 8
  store i32 %185, i32* %186, align 4
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_dout_dlli(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @set_queue_last_ind(i32, %struct.cc_hw_desc*) #1

declare dso_local i32 @set_aes_not_hash_mode(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_cipher_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_cipher_config0(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_cipher_config1(%struct.cc_hw_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
