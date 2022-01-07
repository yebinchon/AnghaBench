; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_aead_perform.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_aead_perform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.aead_request = type { i32, i32, i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.ixp_ctx = type { %struct.ix_sa_dir, %struct.ix_sa_dir, i32 }
%struct.ix_sa_dir = type { i32, i32, i32 }
%struct.crypt_ctl = type { i32, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.aead_request* }
%struct.buffer_desc = type { i32, i64, i32, i32* }
%struct.aead_ctx = type { i32, i32*, i32*, i32* }

@pdev = common dso_local global %struct.TYPE_6__* null, align 8
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@SEND_QID = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NPE_OP_NOT_IN_PLACE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@buffer_pool = common dso_local global i32 0, align 4
@CTL_FLAG_PERFORM_AEAD = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@CTL_FLAG_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32, i32, i32, i32*)* @aead_perform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_perform(%struct.aead_request* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.aead_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.crypto_aead*, align 8
  %13 = alloca %struct.ixp_ctx*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ix_sa_dir*, align 8
  %17 = alloca %struct.crypt_ctl*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.buffer_desc*, align 8
  %20 = alloca %struct.buffer_desc, align 8
  %21 = alloca %struct.aead_ctx*, align 8
  %22 = alloca %struct.device*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.buffer_desc, align 8
  store %struct.aead_request* %0, %struct.aead_request** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %27 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %28 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %27)
  store %struct.crypto_aead* %28, %struct.crypto_aead** %12, align 8
  %29 = load %struct.crypto_aead*, %struct.crypto_aead** %12, align 8
  %30 = call %struct.ixp_ctx* @crypto_aead_ctx(%struct.crypto_aead* %29)
  store %struct.ixp_ctx* %30, %struct.ixp_ctx** %13, align 8
  %31 = load %struct.crypto_aead*, %struct.crypto_aead** %12, align 8
  %32 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %31)
  store i32 %32, i32* %14, align 4
  %33 = load %struct.crypto_aead*, %struct.crypto_aead** %12, align 8
  %34 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %33)
  store i32 %34, i32* %15, align 4
  %35 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %36 = call %struct.aead_ctx* @aead_request_ctx(%struct.aead_request* %35)
  store %struct.aead_ctx* %36, %struct.aead_ctx** %21, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pdev, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store %struct.device* %38, %struct.device** %22, align 8
  %39 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %40 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %5
  %47 = load i32, i32* @GFP_KERNEL, align 4
  br label %50

48:                                               ; preds = %5
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %23, align 4
  %52 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  store i32 %52, i32* %24, align 4
  %53 = load i32, i32* @SEND_QID, align 4
  %54 = call i64 @qmgr_stat_full(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %338

59:                                               ; preds = %50
  %60 = load %struct.ixp_ctx*, %struct.ixp_ctx** %13, align 8
  %61 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %60, i32 0, i32 2
  %62 = call i64 @atomic_read(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @EAGAIN, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %338

67:                                               ; preds = %59
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.ixp_ctx*, %struct.ixp_ctx** %13, align 8
  %72 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %71, i32 0, i32 1
  store %struct.ix_sa_dir* %72, %struct.ix_sa_dir** %16, align 8
  %73 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %74 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %18, align 4
  br label %87

76:                                               ; preds = %67
  %77 = load %struct.ixp_ctx*, %struct.ixp_ctx** %13, align 8
  %78 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %77, i32 0, i32 0
  store %struct.ix_sa_dir* %78, %struct.ix_sa_dir** %16, align 8
  %79 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %80 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sub i32 %81, %82
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sub i32 %85, %84
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %76, %70
  %88 = call %struct.crypt_ctl* (...) @get_crypt_desc()
  store %struct.crypt_ctl* %88, %struct.crypt_ctl** %17, align 8
  %89 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %90 = icmp ne %struct.crypt_ctl* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %338

94:                                               ; preds = %87
  %95 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %96 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %97 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %96, i32 0, i32 12
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store %struct.aead_request* %95, %struct.aead_request** %98, align 8
  %99 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %16, align 8
  %100 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %103 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %102, i32 0, i32 11
  store i32 %101, i32* %103, align 4
  %104 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %16, align 8
  %105 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %108 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 8
  %109 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %16, align 8
  %110 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %113 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %112, i32 0, i32 10
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %116 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %119 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %121 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %120, i32 0, i32 9
  store i64 0, i64* %121, align 8
  %122 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %123 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %18, align 4
  %126 = zext i32 %125 to i64
  %127 = add nsw i64 %124, %126
  %128 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %129 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %128, i32 0, i32 6
  store i64 %127, i64* %129, align 8
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %94
  %133 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %134 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  br label %138

138:                                              ; preds = %132, %94
  %139 = phi i1 [ false, %94 ], [ %137, %132 ]
  %140 = zext i1 %139 to i32
  %141 = call i32 @BUG_ON(i32 %140)
  %142 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %143 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %142, i32 0, i32 8
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %146 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %14, align 4
  %149 = call i32 @memcpy(i32 %144, i32 %147, i32 %148)
  %150 = load %struct.device*, %struct.device** %22, align 8
  %151 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %152 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %155 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %154, i32 0, i32 6
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* %23, align 4
  %158 = load i32, i32* %24, align 4
  %159 = call %struct.buffer_desc* @chainup_buffers(%struct.device* %150, i32 %153, i64 %156, %struct.buffer_desc* %20, i32 %157, i32 %158)
  store %struct.buffer_desc* %159, %struct.buffer_desc** %19, align 8
  %160 = getelementptr inbounds %struct.buffer_desc, %struct.buffer_desc* %20, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.aead_ctx*, %struct.aead_ctx** %21, align 8
  %163 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %162, i32 0, i32 1
  store i32* %161, i32** %163, align 8
  %164 = getelementptr inbounds %struct.buffer_desc, %struct.buffer_desc* %20, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %167 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 4
  %168 = load %struct.buffer_desc*, %struct.buffer_desc** %19, align 8
  %169 = icmp ne %struct.buffer_desc* %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %138
  br label %324

171:                                              ; preds = %138
  %172 = load %struct.buffer_desc*, %struct.buffer_desc** %19, align 8
  %173 = getelementptr inbounds %struct.buffer_desc, %struct.buffer_desc* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %25, align 4
  %175 = load i32, i32* %25, align 4
  %176 = load i32, i32* %15, align 4
  %177 = icmp uge i32 %175, %176
  br i1 %177, label %178, label %192

178:                                              ; preds = %171
  %179 = load %struct.buffer_desc*, %struct.buffer_desc** %19, align 8
  %180 = getelementptr inbounds %struct.buffer_desc, %struct.buffer_desc* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.buffer_desc*, %struct.buffer_desc** %19, align 8
  %183 = getelementptr inbounds %struct.buffer_desc, %struct.buffer_desc* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = zext i32 %184 to i64
  %186 = add nsw i64 %181, %185
  %187 = load i32, i32* %15, align 4
  %188 = zext i32 %187 to i64
  %189 = sub nsw i64 %186, %188
  %190 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %191 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %190, i32 0, i32 5
  store i64 %189, i64* %191, align 8
  br label %192

192:                                              ; preds = %178, %171
  %193 = load %struct.aead_ctx*, %struct.aead_ctx** %21, align 8
  %194 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %193, i32 0, i32 2
  store i32* null, i32** %194, align 8
  %195 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %196 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %199 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %197, %200
  br i1 %201, label %202, label %256

202:                                              ; preds = %192
  %203 = load i32, i32* @NPE_OP_NOT_IN_PLACE, align 4
  %204 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %205 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 8
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 8
  %208 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %208, i32* %24, align 4
  %209 = load %struct.device*, %struct.device** %22, align 8
  %210 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %211 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %214 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %213, i32 0, i32 6
  %215 = load i64, i64* %214, align 8
  %216 = load i32, i32* %23, align 4
  %217 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %218 = call %struct.buffer_desc* @chainup_buffers(%struct.device* %209, i32 %212, i64 %215, %struct.buffer_desc* %26, i32 %216, i32 %217)
  store %struct.buffer_desc* %218, %struct.buffer_desc** %19, align 8
  %219 = getelementptr inbounds %struct.buffer_desc, %struct.buffer_desc* %26, i32 0, i32 3
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.aead_ctx*, %struct.aead_ctx** %21, align 8
  %222 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %221, i32 0, i32 2
  store i32* %220, i32** %222, align 8
  %223 = getelementptr inbounds %struct.buffer_desc, %struct.buffer_desc* %26, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %226 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %225, i32 0, i32 4
  store i32 %224, i32* %226, align 8
  %227 = load %struct.buffer_desc*, %struct.buffer_desc** %19, align 8
  %228 = icmp ne %struct.buffer_desc* %227, null
  br i1 %228, label %230, label %229

229:                                              ; preds = %202
  br label %315

230:                                              ; preds = %202
  %231 = load i32, i32* %8, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %255

233:                                              ; preds = %230
  %234 = load %struct.buffer_desc*, %struct.buffer_desc** %19, align 8
  %235 = getelementptr inbounds %struct.buffer_desc, %struct.buffer_desc* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  store i32 %236, i32* %25, align 4
  %237 = load i32, i32* %25, align 4
  %238 = load i32, i32* %15, align 4
  %239 = icmp uge i32 %237, %238
  br i1 %239, label %240, label %254

240:                                              ; preds = %233
  %241 = load %struct.buffer_desc*, %struct.buffer_desc** %19, align 8
  %242 = getelementptr inbounds %struct.buffer_desc, %struct.buffer_desc* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.buffer_desc*, %struct.buffer_desc** %19, align 8
  %245 = getelementptr inbounds %struct.buffer_desc, %struct.buffer_desc* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = zext i32 %246 to i64
  %248 = add nsw i64 %243, %247
  %249 = load i32, i32* %15, align 4
  %250 = zext i32 %249 to i64
  %251 = sub nsw i64 %248, %250
  %252 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %253 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %252, i32 0, i32 5
  store i64 %251, i64* %253, align 8
  br label %254

254:                                              ; preds = %240, %233
  br label %255

255:                                              ; preds = %254, %230
  br label %256

256:                                              ; preds = %255, %192
  %257 = load i32, i32* %25, align 4
  %258 = load i32, i32* %15, align 4
  %259 = icmp ult i32 %257, %258
  %260 = zext i1 %259 to i32
  %261 = call i64 @unlikely(i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %297

263:                                              ; preds = %256
  %264 = load i32, i32* @buffer_pool, align 4
  %265 = load i32, i32* %23, align 4
  %266 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %267 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %266, i32 0, i32 5
  %268 = call i32* @dma_pool_alloc(i32 %264, i32 %265, i64* %267)
  %269 = load %struct.aead_ctx*, %struct.aead_ctx** %21, align 8
  %270 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %269, i32 0, i32 3
  store i32* %268, i32** %270, align 8
  %271 = load %struct.aead_ctx*, %struct.aead_ctx** %21, align 8
  %272 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %271, i32 0, i32 3
  %273 = load i32*, i32** %272, align 8
  %274 = icmp ne i32* %273, null
  %275 = xor i1 %274, true
  %276 = zext i1 %275 to i32
  %277 = call i64 @unlikely(i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %263
  br label %315

280:                                              ; preds = %263
  %281 = load i32, i32* %8, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %293, label %283

283:                                              ; preds = %280
  %284 = load %struct.aead_ctx*, %struct.aead_ctx** %21, align 8
  %285 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %284, i32 0, i32 3
  %286 = load i32*, i32** %285, align 8
  %287 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %288 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %18, align 4
  %291 = load i32, i32* %15, align 4
  %292 = call i32 @scatterwalk_map_and_copy(i32* %286, i32 %289, i32 %290, i32 %291, i32 0)
  br label %293

293:                                              ; preds = %283, %280
  %294 = load i32, i32* %8, align 4
  %295 = load %struct.aead_ctx*, %struct.aead_ctx** %21, align 8
  %296 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %295, i32 0, i32 0
  store i32 %294, i32* %296, align 8
  br label %300

297:                                              ; preds = %256
  %298 = load %struct.aead_ctx*, %struct.aead_ctx** %21, align 8
  %299 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %298, i32 0, i32 3
  store i32* null, i32** %299, align 8
  br label %300

300:                                              ; preds = %297, %293
  %301 = load i32, i32* @CTL_FLAG_PERFORM_AEAD, align 4
  %302 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %303 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = or i32 %304, %301
  store i32 %305, i32* %303, align 8
  %306 = load i32, i32* @SEND_QID, align 4
  %307 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %308 = call i32 @crypt_virt2phys(%struct.crypt_ctl* %307)
  %309 = call i32 @qmgr_put_entry(i32 %306, i32 %308)
  %310 = load i32, i32* @SEND_QID, align 4
  %311 = call i32 @qmgr_stat_overflow(i32 %310)
  %312 = call i32 @BUG_ON(i32 %311)
  %313 = load i32, i32* @EINPROGRESS, align 4
  %314 = sub nsw i32 0, %313
  store i32 %314, i32* %6, align 4
  br label %338

315:                                              ; preds = %279, %229
  %316 = load %struct.device*, %struct.device** %22, align 8
  %317 = load %struct.aead_ctx*, %struct.aead_ctx** %21, align 8
  %318 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %317, i32 0, i32 2
  %319 = load i32*, i32** %318, align 8
  %320 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %321 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @free_buf_chain(%struct.device* %316, i32* %319, i32 %322)
  br label %324

324:                                              ; preds = %315, %170
  %325 = load %struct.device*, %struct.device** %22, align 8
  %326 = load %struct.aead_ctx*, %struct.aead_ctx** %21, align 8
  %327 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %326, i32 0, i32 1
  %328 = load i32*, i32** %327, align 8
  %329 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %330 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @free_buf_chain(%struct.device* %325, i32* %328, i32 %331)
  %333 = load i32, i32* @CTL_FLAG_UNUSED, align 4
  %334 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %335 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %334, i32 0, i32 2
  store i32 %333, i32* %335, align 8
  %336 = load i32, i32* @ENOMEM, align 4
  %337 = sub nsw i32 0, %336
  store i32 %337, i32* %6, align 4
  br label %338

338:                                              ; preds = %324, %300, %91, %64, %56
  %339 = load i32, i32* %6, align 4
  ret i32 %339
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.ixp_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local %struct.aead_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i64 @qmgr_stat_full(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.crypt_ctl* @get_crypt_desc(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.buffer_desc* @chainup_buffers(%struct.device*, i32, i64, %struct.buffer_desc*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @dma_pool_alloc(i32, i32, i64*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @qmgr_put_entry(i32, i32) #1

declare dso_local i32 @crypt_virt2phys(%struct.crypt_ctl*) #1

declare dso_local i32 @qmgr_stat_overflow(i32) #1

declare dso_local i32 @free_buf_chain(%struct.device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
