; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_ablk_perform.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_ablk_perform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.ablkcipher_request = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.ixp_ctx = type { %struct.ix_sa_dir, %struct.ix_sa_dir, i32 }
%struct.ix_sa_dir = type { i32, i32, i32 }
%struct.crypt_ctl = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ablkcipher_request* }
%struct.ablk_ctx = type { i32*, i32* }
%struct.buffer_desc = type { i32, i32* }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@pdev = common dso_local global %struct.TYPE_6__* null, align 8
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SEND_QID = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NPE_OP_NOT_IN_PLACE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@CTL_FLAG_PERFORM_ABLK = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@CTL_FLAG_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, i32)* @ablk_perform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ablk_perform(%struct.ablkcipher_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_ablkcipher*, align 8
  %7 = alloca %struct.ixp_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ix_sa_dir*, align 8
  %10 = alloca %struct.crypt_ctl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ablk_ctx*, align 8
  %14 = alloca %struct.buffer_desc, align 8
  %15 = alloca %struct.device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.buffer_desc, align 8
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %19 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %18)
  store %struct.crypto_ablkcipher* %19, %struct.crypto_ablkcipher** %6, align 8
  %20 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %6, align 8
  %21 = call %struct.ixp_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %20)
  store %struct.ixp_ctx* %21, %struct.ixp_ctx** %7, align 8
  %22 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %6, align 8
  %23 = call i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher* %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %25 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %29 = call %struct.ablk_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %28)
  store %struct.ablk_ctx* %29, %struct.ablk_ctx** %13, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pdev, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store %struct.device* %31, %struct.device** %15, align 8
  %32 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %33 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i32, i32* @GFP_KERNEL, align 4
  br label %43

41:                                               ; preds = %2
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* @SEND_QID, align 4
  %46 = call i64 @qmgr_stat_full(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EAGAIN, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %227

51:                                               ; preds = %43
  %52 = load %struct.ixp_ctx*, %struct.ixp_ctx** %7, align 8
  %53 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %52, i32 0, i32 2
  %54 = call i64 @atomic_read(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %227

59:                                               ; preds = %51
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.ixp_ctx*, %struct.ixp_ctx** %7, align 8
  %64 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %63, i32 0, i32 1
  br label %68

65:                                               ; preds = %59
  %66 = load %struct.ixp_ctx*, %struct.ixp_ctx** %7, align 8
  %67 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %66, i32 0, i32 0
  br label %68

68:                                               ; preds = %65, %62
  %69 = phi %struct.ix_sa_dir* [ %64, %62 ], [ %67, %65 ]
  store %struct.ix_sa_dir* %69, %struct.ix_sa_dir** %9, align 8
  %70 = call %struct.crypt_ctl* (...) @get_crypt_desc()
  store %struct.crypt_ctl* %70, %struct.crypt_ctl** %10, align 8
  %71 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %72 = icmp ne %struct.crypt_ctl* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %227

76:                                               ; preds = %68
  %77 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %78 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %79 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %78, i32 0, i32 9
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store %struct.ablkcipher_request* %77, %struct.ablkcipher_request** %80, align 8
  %81 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %9, align 8
  %82 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %85 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %84, i32 0, i32 8
  store i32 %83, i32* %85, align 4
  %86 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %9, align 8
  %87 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %90 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %9, align 8
  %92 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %95 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 8
  %96 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %97 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %96, i32 0, i32 6
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %100 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %76
  %104 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %105 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  br label %109

109:                                              ; preds = %103, %76
  %110 = phi i1 [ false, %76 ], [ %108, %103 ]
  %111 = zext i1 %110 to i32
  %112 = call i32 @BUG_ON(i32 %111)
  %113 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %114 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %117 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @memcpy(i32 %115, i32 %118, i32 %119)
  %121 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %122 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %125 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %123, %126
  br i1 %127, label %128, label %156

128:                                              ; preds = %109
  %129 = load i32, i32* @NPE_OP_NOT_IN_PLACE, align 4
  %130 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %131 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  %134 = load %struct.ablk_ctx*, %struct.ablk_ctx** %13, align 8
  %135 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %134, i32 0, i32 0
  store i32* null, i32** %135, align 8
  %136 = load %struct.device*, %struct.device** %15, align 8
  %137 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %138 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %143 = call i32 @chainup_buffers(%struct.device* %136, i32 %139, i32 %140, %struct.buffer_desc* %17, i32 %141, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %128
  br label %204

146:                                              ; preds = %128
  %147 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %147, i32* %12, align 4
  %148 = getelementptr inbounds %struct.buffer_desc, %struct.buffer_desc* %17, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.ablk_ctx*, %struct.ablk_ctx** %13, align 8
  %151 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %150, i32 0, i32 0
  store i32* %149, i32** %151, align 8
  %152 = getelementptr inbounds %struct.buffer_desc, %struct.buffer_desc* %17, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %155 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 8
  br label %159

156:                                              ; preds = %109
  %157 = load %struct.ablk_ctx*, %struct.ablk_ctx** %13, align 8
  %158 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %157, i32 0, i32 0
  store i32* null, i32** %158, align 8
  br label %159

159:                                              ; preds = %156, %146
  %160 = load %struct.ablk_ctx*, %struct.ablk_ctx** %13, align 8
  %161 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %160, i32 0, i32 1
  store i32* null, i32** %161, align 8
  %162 = load %struct.device*, %struct.device** %15, align 8
  %163 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %164 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @chainup_buffers(%struct.device* %162, i32 %165, i32 %166, %struct.buffer_desc* %14, i32 %167, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %159
  br label %195

172:                                              ; preds = %159
  %173 = getelementptr inbounds %struct.buffer_desc, %struct.buffer_desc* %14, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.ablk_ctx*, %struct.ablk_ctx** %13, align 8
  %176 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %175, i32 0, i32 1
  store i32* %174, i32** %176, align 8
  %177 = getelementptr inbounds %struct.buffer_desc, %struct.buffer_desc* %14, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %180 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* @CTL_FLAG_PERFORM_ABLK, align 4
  %182 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %183 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  %186 = load i32, i32* @SEND_QID, align 4
  %187 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %188 = call i32 @crypt_virt2phys(%struct.crypt_ctl* %187)
  %189 = call i32 @qmgr_put_entry(i32 %186, i32 %188)
  %190 = load i32, i32* @SEND_QID, align 4
  %191 = call i32 @qmgr_stat_overflow(i32 %190)
  %192 = call i32 @BUG_ON(i32 %191)
  %193 = load i32, i32* @EINPROGRESS, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %3, align 4
  br label %227

195:                                              ; preds = %171
  %196 = load %struct.device*, %struct.device** %15, align 8
  %197 = load %struct.ablk_ctx*, %struct.ablk_ctx** %13, align 8
  %198 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %201 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @free_buf_chain(%struct.device* %196, i32* %199, i32 %202)
  br label %204

204:                                              ; preds = %195, %145
  %205 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %206 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %209 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %207, %210
  br i1 %211, label %212, label %221

212:                                              ; preds = %204
  %213 = load %struct.device*, %struct.device** %15, align 8
  %214 = load %struct.ablk_ctx*, %struct.ablk_ctx** %13, align 8
  %215 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %218 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @free_buf_chain(%struct.device* %213, i32* %216, i32 %219)
  br label %221

221:                                              ; preds = %212, %204
  %222 = load i32, i32* @CTL_FLAG_UNUSED, align 4
  %223 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %224 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* @ENOMEM, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %3, align 4
  br label %227

227:                                              ; preds = %221, %172, %73, %56, %48
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.ixp_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.ablk_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i64 @qmgr_stat_full(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.crypt_ctl* @get_crypt_desc(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @chainup_buffers(%struct.device*, i32, i32, %struct.buffer_desc*, i32, i32) #1

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
