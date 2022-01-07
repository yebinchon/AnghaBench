; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_prepare_aead_data_mlli.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_prepare_aead_data_mlli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { i32 }
%struct.aead_request = type { i64, i64 }
%struct.buffer_array = type { i32 }
%struct.aead_req_ctx = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.scatterlist*, i8*, %struct.TYPE_5__, i32, i32, %struct.scatterlist*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.scatterlist = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }

@DRV_CRYPTO_DIRECTION_DECRYPT = common dso_local global i32 0, align 4
@CC_SG_TO_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cc_drvdata*, %struct.aead_request*, %struct.buffer_array*, i32*, i32*, i32)* @cc_prepare_aead_data_mlli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_prepare_aead_data_mlli(%struct.cc_drvdata* %0, %struct.aead_request* %1, %struct.buffer_array* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.cc_drvdata*, align 8
  %8 = alloca %struct.aead_request*, align 8
  %9 = alloca %struct.buffer_array*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.aead_req_ctx*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.device*, align 8
  %17 = alloca %struct.scatterlist*, align 8
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %7, align 8
  store %struct.aead_request* %1, %struct.aead_request** %8, align 8
  store %struct.buffer_array* %2, %struct.buffer_array** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %19 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %18)
  store %struct.aead_req_ctx* %19, %struct.aead_req_ctx** %13, align 8
  %20 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %21 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %20, i32 0, i32 14
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %14, align 4
  %24 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %25 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %15, align 4
  %27 = load %struct.cc_drvdata*, %struct.cc_drvdata** %7, align 8
  %28 = call %struct.device* @drvdata_to_dev(%struct.cc_drvdata* %27)
  store %struct.device* %28, %struct.device** %16, align 8
  %29 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %30 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %33 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %133

36:                                               ; preds = %6
  %37 = load %struct.device*, %struct.device** %16, align 8
  %38 = load %struct.buffer_array*, %struct.buffer_array** %9, align 8
  %39 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %40 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %39, i32 0, i32 9
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %44 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %43, i32 0, i32 12
  %45 = load %struct.scatterlist*, %struct.scatterlist** %44, align 8
  %46 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %47 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %46, i32 0, i32 11
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %50 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %54 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %53, i32 0, i32 9
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = call i32 @cc_add_sg_entry(%struct.device* %37, %struct.buffer_array* %38, i32 %42, %struct.scatterlist* %45, i32 %48, i32 %51, i32 %52, i32* %55)
  %57 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %58 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %57, i32 0, i32 9
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %15, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @cc_is_icv_frag(i32 %60, i32 %61, i32 %63)
  %65 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %66 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %65, i32 0, i32 8
  store i8* %64, i8** %66, align 8
  %67 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %68 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %67, i32 0, i32 8
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %103

71:                                               ; preds = %36
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @DRV_CRYPTO_DIRECTION_DECRYPT, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %71
  %76 = load %struct.cc_drvdata*, %struct.cc_drvdata** %7, align 8
  %77 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.device*, %struct.device** %16, align 8
  %82 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %83 = load i32, i32* @CC_SG_TO_BUF, align 4
  %84 = call i32 @cc_copy_mac(%struct.device* %81, %struct.aead_request* %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %75
  %86 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %87 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %90 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %102

91:                                               ; preds = %71
  %92 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %93 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %96 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %98 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %101 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %91, %85
  br label %132

103:                                              ; preds = %36
  %104 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %105 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %104, i32 0, i32 12
  %106 = load %struct.scatterlist*, %struct.scatterlist** %105, align 8
  %107 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %108 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %107, i32 0, i32 9
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %106, i64 %112
  store %struct.scatterlist* %113, %struct.scatterlist** %17, align 8
  %114 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %115 = call i32 @sg_dma_address(%struct.scatterlist* %114)
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %15, align 4
  %119 = sub i32 %117, %118
  %120 = add i32 %115, %119
  %121 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %122 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %124 = call i32 @sg_virt(%struct.scatterlist* %123)
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %15, align 4
  %128 = sub i32 %126, %127
  %129 = add i32 %124, %128
  %130 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %131 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %103, %102
  br label %329

133:                                              ; preds = %6
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* @DRV_CRYPTO_DIRECTION_DECRYPT, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %232

137:                                              ; preds = %133
  %138 = load %struct.device*, %struct.device** %16, align 8
  %139 = load %struct.buffer_array*, %struct.buffer_array** %9, align 8
  %140 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %141 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %140, i32 0, i32 9
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %145 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %144, i32 0, i32 12
  %146 = load %struct.scatterlist*, %struct.scatterlist** %145, align 8
  %147 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %148 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %147, i32 0, i32 11
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %151 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %150, i32 0, i32 10
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %155 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %154, i32 0, i32 9
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  %157 = call i32 @cc_add_sg_entry(%struct.device* %138, %struct.buffer_array* %139, i32 %143, %struct.scatterlist* %146, i32 %149, i32 %152, i32 %153, i32* %156)
  %158 = load %struct.device*, %struct.device** %16, align 8
  %159 = load %struct.buffer_array*, %struct.buffer_array** %9, align 8
  %160 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %161 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %160, i32 0, i32 6
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %165 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %164, i32 0, i32 7
  %166 = load %struct.scatterlist*, %struct.scatterlist** %165, align 8
  %167 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %168 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %167, i32 0, i32 11
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %171 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %170, i32 0, i32 13
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %12, align 4
  %174 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %175 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %174, i32 0, i32 6
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = call i32 @cc_add_sg_entry(%struct.device* %158, %struct.buffer_array* %159, i32 %163, %struct.scatterlist* %166, i32 %169, i32 %172, i32 %173, i32* %176)
  %178 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %179 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %178, i32 0, i32 9
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %15, align 4
  %183 = load i32*, i32** %10, align 8
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @cc_is_icv_frag(i32 %181, i32 %182, i32 %184)
  %186 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %187 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %186, i32 0, i32 8
  store i8* %185, i8** %187, align 8
  %188 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %189 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %188, i32 0, i32 8
  %190 = load i8*, i8** %189, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %202

192:                                              ; preds = %137
  %193 = load %struct.device*, %struct.device** %16, align 8
  %194 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %195 = load i32, i32* @CC_SG_TO_BUF, align 4
  %196 = call i32 @cc_copy_mac(%struct.device* %193, %struct.aead_request* %194, i32 %195)
  %197 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %198 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %201 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  br label %231

202:                                              ; preds = %137
  %203 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %204 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %203, i32 0, i32 12
  %205 = load %struct.scatterlist*, %struct.scatterlist** %204, align 8
  %206 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %207 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %206, i32 0, i32 9
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sub nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %205, i64 %211
  store %struct.scatterlist* %212, %struct.scatterlist** %17, align 8
  %213 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %214 = call i32 @sg_dma_address(%struct.scatterlist* %213)
  %215 = load i32*, i32** %10, align 8
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %15, align 4
  %218 = sub i32 %216, %217
  %219 = add i32 %214, %218
  %220 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %221 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %220, i32 0, i32 4
  store i32 %219, i32* %221, align 8
  %222 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %223 = call i32 @sg_virt(%struct.scatterlist* %222)
  %224 = load i32*, i32** %10, align 8
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %15, align 4
  %227 = sub i32 %225, %226
  %228 = add i32 %223, %227
  %229 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %230 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 4
  br label %231

231:                                              ; preds = %202, %192
  br label %328

232:                                              ; preds = %133
  %233 = load %struct.device*, %struct.device** %16, align 8
  %234 = load %struct.buffer_array*, %struct.buffer_array** %9, align 8
  %235 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %236 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %235, i32 0, i32 6
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %240 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %239, i32 0, i32 7
  %241 = load %struct.scatterlist*, %struct.scatterlist** %240, align 8
  %242 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %243 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %242, i32 0, i32 11
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %246 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %245, i32 0, i32 13
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* %12, align 4
  %249 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %250 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %249, i32 0, i32 6
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 1
  %252 = call i32 @cc_add_sg_entry(%struct.device* %233, %struct.buffer_array* %234, i32 %238, %struct.scatterlist* %241, i32 %244, i32 %247, i32 %248, i32* %251)
  %253 = load %struct.device*, %struct.device** %16, align 8
  %254 = load %struct.buffer_array*, %struct.buffer_array** %9, align 8
  %255 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %256 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %255, i32 0, i32 9
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %260 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %259, i32 0, i32 12
  %261 = load %struct.scatterlist*, %struct.scatterlist** %260, align 8
  %262 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %263 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %262, i32 0, i32 11
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %266 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %265, i32 0, i32 10
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* %12, align 4
  %269 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %270 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %269, i32 0, i32 9
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 1
  %272 = call i32 @cc_add_sg_entry(%struct.device* %253, %struct.buffer_array* %254, i32 %258, %struct.scatterlist* %261, i32 %264, i32 %267, i32 %268, i32* %271)
  %273 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %274 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %273, i32 0, i32 6
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* %15, align 4
  %278 = load i32*, i32** %11, align 8
  %279 = load i32, i32* %278, align 4
  %280 = call i8* @cc_is_icv_frag(i32 %276, i32 %277, i32 %279)
  %281 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %282 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %281, i32 0, i32 8
  store i8* %280, i8** %282, align 8
  %283 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %284 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %283, i32 0, i32 8
  %285 = load i8*, i8** %284, align 8
  %286 = icmp ne i8* %285, null
  br i1 %286, label %316, label %287

287:                                              ; preds = %232
  %288 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %289 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %288, i32 0, i32 7
  %290 = load %struct.scatterlist*, %struct.scatterlist** %289, align 8
  %291 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %292 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %291, i32 0, i32 6
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = sub nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %290, i64 %296
  store %struct.scatterlist* %297, %struct.scatterlist** %17, align 8
  %298 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %299 = call i32 @sg_dma_address(%struct.scatterlist* %298)
  %300 = load i32*, i32** %11, align 8
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %15, align 4
  %303 = sub i32 %301, %302
  %304 = add i32 %299, %303
  %305 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %306 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %305, i32 0, i32 4
  store i32 %304, i32* %306, align 8
  %307 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %308 = call i32 @sg_virt(%struct.scatterlist* %307)
  %309 = load i32*, i32** %11, align 8
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* %15, align 4
  %312 = sub i32 %310, %311
  %313 = add i32 %308, %312
  %314 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %315 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %314, i32 0, i32 1
  store i32 %313, i32* %315, align 4
  br label %327

316:                                              ; preds = %232
  %317 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %318 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %317, i32 0, i32 5
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %321 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %320, i32 0, i32 4
  store i32 %319, i32* %321, align 8
  %322 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %323 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %13, align 8
  %326 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %325, i32 0, i32 1
  store i32 %324, i32* %326, align 4
  br label %327

327:                                              ; preds = %316, %287
  br label %328

328:                                              ; preds = %327, %231
  br label %329

329:                                              ; preds = %328, %132
  ret void
}

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.device* @drvdata_to_dev(%struct.cc_drvdata*) #1

declare dso_local i32 @cc_add_sg_entry(%struct.device*, %struct.buffer_array*, i32, %struct.scatterlist*, i32, i32, i32, i32*) #1

declare dso_local i8* @cc_is_icv_frag(i32, i32, i32) #1

declare dso_local i32 @cc_copy_mac(%struct.device*, %struct.aead_request*, i32) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @sg_virt(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
