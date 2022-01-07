; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_algs.c_sec_alg_alloc_and_fill_el.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_algs.c_sec_alg_alloc_and_fill_el.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_request_el = type { i32, i32, i32, i32, %struct.scatterlist*, i32, %struct.scatterlist*, %struct.sec_bd_info }
%struct.sec_bd_info = type { i32, i32, i8*, i8*, i8*, i8*, i32, i32 }
%struct.scatterlist = type { i32 }
%struct.sec_dev_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SEC_BD_W0_CIPHER_M = common dso_local global i32 0, align 4
@SEC_CIPHER_ENCRYPT = common dso_local global i32 0, align 4
@SEC_BD_W0_CIPHER_S = common dso_local global i32 0, align 4
@SEC_CIPHER_DECRYPT = common dso_local global i32 0, align 4
@SEC_BD_W0_C_GRAN_SIZE_19_16_M = common dso_local global i32 0, align 4
@SEC_BD_W0_C_GRAN_SIZE_19_16_S = common dso_local global i32 0, align 4
@SEC_BD_W0_C_GRAN_SIZE_21_20_M = common dso_local global i32 0, align 4
@SEC_BD_W0_C_GRAN_SIZE_21_20_S = common dso_local global i32 0, align 4
@SEC_BD_W2_GRAN_NUM_S = common dso_local global i32 0, align 4
@SEC_BD_W2_GRAN_NUM_M = common dso_local global i32 0, align 4
@SEC_BD_W2_C_GRAN_SIZE_15_0_S = common dso_local global i32 0, align 4
@SEC_BD_W2_C_GRAN_SIZE_15_0_M = common dso_local global i32 0, align 4
@SEC_BD_W3_CIPHER_LEN_OFFSET_M = common dso_local global i32 0, align 4
@SEC_BD_W1_ADDR_TYPE = common dso_local global i32 0, align 4
@SEC_BD_W0_DE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sec_request_el* (%struct.sec_bd_info*, i32, i32, i32, %struct.scatterlist*, i32, %struct.scatterlist*, i32, %struct.sec_dev_info*)* @sec_alg_alloc_and_fill_el to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sec_request_el* @sec_alg_alloc_and_fill_el(%struct.sec_bd_info* %0, i32 %1, i32 %2, i32 %3, %struct.scatterlist* %4, i32 %5, %struct.scatterlist* %6, i32 %7, %struct.sec_dev_info* %8) #0 {
  %10 = alloca %struct.sec_request_el*, align 8
  %11 = alloca %struct.sec_bd_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.scatterlist*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.scatterlist*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.sec_dev_info*, align 8
  %20 = alloca %struct.sec_request_el*, align 8
  %21 = alloca %struct.sec_bd_info*, align 8
  %22 = alloca i32, align 4
  store %struct.sec_bd_info* %0, %struct.sec_bd_info** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store %struct.scatterlist* %4, %struct.scatterlist** %15, align 8
  store i32 %5, i32* %16, align 4
  store %struct.scatterlist* %6, %struct.scatterlist** %17, align 8
  store i32 %7, i32* %18, align 4
  store %struct.sec_dev_info* %8, %struct.sec_dev_info** %19, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.sec_request_el* @kzalloc(i32 88, i32 %23)
  store %struct.sec_request_el* %24, %struct.sec_request_el** %20, align 8
  %25 = load %struct.sec_request_el*, %struct.sec_request_el** %20, align 8
  %26 = icmp ne %struct.sec_request_el* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %9
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.sec_request_el* @ERR_PTR(i32 %29)
  store %struct.sec_request_el* %30, %struct.sec_request_el** %10, align 8
  br label %221

31:                                               ; preds = %9
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.sec_request_el*, %struct.sec_request_el** %20, align 8
  %34 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.sec_request_el*, %struct.sec_request_el** %20, align 8
  %36 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %35, i32 0, i32 7
  store %struct.sec_bd_info* %36, %struct.sec_bd_info** %21, align 8
  %37 = load %struct.sec_bd_info*, %struct.sec_bd_info** %21, align 8
  %38 = load %struct.sec_bd_info*, %struct.sec_bd_info** %11, align 8
  %39 = call i32 @memcpy(%struct.sec_bd_info* %37, %struct.sec_bd_info* %38, i32 48)
  %40 = load i32, i32* @SEC_BD_W0_CIPHER_M, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.sec_bd_info*, %struct.sec_bd_info** %21, align 8
  %43 = getelementptr inbounds %struct.sec_bd_info, %struct.sec_bd_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %31
  %49 = load i32, i32* @SEC_CIPHER_ENCRYPT, align 4
  %50 = load i32, i32* @SEC_BD_W0_CIPHER_S, align 4
  %51 = shl i32 %49, %50
  %52 = load %struct.sec_bd_info*, %struct.sec_bd_info** %21, align 8
  %53 = getelementptr inbounds %struct.sec_bd_info, %struct.sec_bd_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %64

56:                                               ; preds = %31
  %57 = load i32, i32* @SEC_CIPHER_DECRYPT, align 4
  %58 = load i32, i32* @SEC_BD_W0_CIPHER_S, align 4
  %59 = shl i32 %57, %58
  %60 = load %struct.sec_bd_info*, %struct.sec_bd_info** %21, align 8
  %61 = getelementptr inbounds %struct.sec_bd_info, %struct.sec_bd_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %56, %48
  %65 = load i32, i32* @SEC_BD_W0_C_GRAN_SIZE_19_16_M, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.sec_bd_info*, %struct.sec_bd_info** %21, align 8
  %68 = getelementptr inbounds %struct.sec_bd_info, %struct.sec_bd_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* %13, align 4
  %72 = ashr i32 %71, 16
  %73 = load i32, i32* @SEC_BD_W0_C_GRAN_SIZE_19_16_S, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* @SEC_BD_W0_C_GRAN_SIZE_19_16_M, align 4
  %76 = and i32 %74, %75
  %77 = load %struct.sec_bd_info*, %struct.sec_bd_info** %21, align 8
  %78 = getelementptr inbounds %struct.sec_bd_info, %struct.sec_bd_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load i32, i32* @SEC_BD_W0_C_GRAN_SIZE_21_20_M, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.sec_bd_info*, %struct.sec_bd_info** %21, align 8
  %84 = getelementptr inbounds %struct.sec_bd_info, %struct.sec_bd_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load i32, i32* %13, align 4
  %88 = ashr i32 %87, 20
  %89 = load i32, i32* @SEC_BD_W0_C_GRAN_SIZE_21_20_S, align 4
  %90 = shl i32 %88, %89
  %91 = load i32, i32* @SEC_BD_W0_C_GRAN_SIZE_21_20_M, align 4
  %92 = and i32 %90, %91
  %93 = load %struct.sec_bd_info*, %struct.sec_bd_info** %21, align 8
  %94 = getelementptr inbounds %struct.sec_bd_info, %struct.sec_bd_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load i32, i32* @SEC_BD_W2_GRAN_NUM_S, align 4
  %98 = shl i32 1, %97
  %99 = load i32, i32* @SEC_BD_W2_GRAN_NUM_M, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @SEC_BD_W2_C_GRAN_SIZE_15_0_S, align 4
  %103 = shl i32 %101, %102
  %104 = load i32, i32* @SEC_BD_W2_C_GRAN_SIZE_15_0_M, align 4
  %105 = and i32 %103, %104
  %106 = or i32 %100, %105
  %107 = load %struct.sec_bd_info*, %struct.sec_bd_info** %21, align 8
  %108 = getelementptr inbounds %struct.sec_bd_info, %struct.sec_bd_info* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @SEC_BD_W3_CIPHER_LEN_OFFSET_M, align 4
  %110 = xor i32 %109, -1
  %111 = load %struct.sec_bd_info*, %struct.sec_bd_info** %21, align 8
  %112 = getelementptr inbounds %struct.sec_bd_info, %struct.sec_bd_info* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load i32, i32* @SEC_BD_W1_ADDR_TYPE, align 4
  %116 = load %struct.sec_bd_info*, %struct.sec_bd_info** %21, align 8
  %117 = getelementptr inbounds %struct.sec_bd_info, %struct.sec_bd_info* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %121 = load %struct.sec_request_el*, %struct.sec_request_el** %20, align 8
  %122 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %121, i32 0, i32 6
  store %struct.scatterlist* %120, %struct.scatterlist** %122, align 8
  %123 = load %struct.sec_request_el*, %struct.sec_request_el** %20, align 8
  %124 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %123, i32 0, i32 2
  %125 = load %struct.sec_request_el*, %struct.sec_request_el** %20, align 8
  %126 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %125, i32 0, i32 1
  %127 = load %struct.sec_request_el*, %struct.sec_request_el** %20, align 8
  %128 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %127, i32 0, i32 6
  %129 = load %struct.scatterlist*, %struct.scatterlist** %128, align 8
  %130 = load i32, i32* %16, align 4
  %131 = load %struct.sec_dev_info*, %struct.sec_dev_info** %19, align 8
  %132 = call i32 @sec_alloc_and_fill_hw_sgl(i32* %124, i32* %126, %struct.scatterlist* %129, i32 %130, %struct.sec_dev_info* %131)
  store i32 %132, i32* %22, align 4
  %133 = load i32, i32* %22, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %64
  br label %216

136:                                              ; preds = %64
  %137 = load %struct.sec_request_el*, %struct.sec_request_el** %20, align 8
  %138 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @lower_32_bits(i32 %139)
  %141 = load %struct.sec_bd_info*, %struct.sec_bd_info** %21, align 8
  %142 = getelementptr inbounds %struct.sec_bd_info, %struct.sec_bd_info* %141, i32 0, i32 5
  store i8* %140, i8** %142, align 8
  %143 = load %struct.sec_request_el*, %struct.sec_request_el** %20, align 8
  %144 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i8* @upper_32_bits(i32 %145)
  %147 = load %struct.sec_bd_info*, %struct.sec_bd_info** %21, align 8
  %148 = getelementptr inbounds %struct.sec_bd_info, %struct.sec_bd_info* %147, i32 0, i32 4
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %186

151:                                              ; preds = %136
  %152 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %153 = load %struct.sec_request_el*, %struct.sec_request_el** %20, align 8
  %154 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %153, i32 0, i32 4
  store %struct.scatterlist* %152, %struct.scatterlist** %154, align 8
  %155 = load %struct.sec_request_el*, %struct.sec_request_el** %20, align 8
  %156 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %155, i32 0, i32 5
  %157 = load %struct.sec_request_el*, %struct.sec_request_el** %20, align 8
  %158 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %157, i32 0, i32 3
  %159 = load %struct.sec_request_el*, %struct.sec_request_el** %20, align 8
  %160 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %159, i32 0, i32 4
  %161 = load %struct.scatterlist*, %struct.scatterlist** %160, align 8
  %162 = load i32, i32* %18, align 4
  %163 = load %struct.sec_dev_info*, %struct.sec_dev_info** %19, align 8
  %164 = call i32 @sec_alloc_and_fill_hw_sgl(i32* %156, i32* %158, %struct.scatterlist* %161, i32 %162, %struct.sec_dev_info* %163)
  store i32 %164, i32* %22, align 4
  %165 = load i32, i32* %22, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %151
  br label %207

168:                                              ; preds = %151
  %169 = load i32, i32* @SEC_BD_W0_DE, align 4
  %170 = load %struct.sec_bd_info*, %struct.sec_bd_info** %21, align 8
  %171 = getelementptr inbounds %struct.sec_bd_info, %struct.sec_bd_info* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  %174 = load %struct.sec_request_el*, %struct.sec_request_el** %20, align 8
  %175 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = call i8* @lower_32_bits(i32 %176)
  %178 = load %struct.sec_bd_info*, %struct.sec_bd_info** %21, align 8
  %179 = getelementptr inbounds %struct.sec_bd_info, %struct.sec_bd_info* %178, i32 0, i32 3
  store i8* %177, i8** %179, align 8
  %180 = load %struct.sec_request_el*, %struct.sec_request_el** %20, align 8
  %181 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = call i8* @upper_32_bits(i32 %182)
  %184 = load %struct.sec_bd_info*, %struct.sec_bd_info** %21, align 8
  %185 = getelementptr inbounds %struct.sec_bd_info, %struct.sec_bd_info* %184, i32 0, i32 2
  store i8* %183, i8** %185, align 8
  br label %205

186:                                              ; preds = %136
  %187 = load i32, i32* @SEC_BD_W0_DE, align 4
  %188 = xor i32 %187, -1
  %189 = load %struct.sec_bd_info*, %struct.sec_bd_info** %21, align 8
  %190 = getelementptr inbounds %struct.sec_bd_info, %struct.sec_bd_info* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = and i32 %191, %188
  store i32 %192, i32* %190, align 8
  %193 = load %struct.sec_request_el*, %struct.sec_request_el** %20, align 8
  %194 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i8* @lower_32_bits(i32 %195)
  %197 = load %struct.sec_bd_info*, %struct.sec_bd_info** %21, align 8
  %198 = getelementptr inbounds %struct.sec_bd_info, %struct.sec_bd_info* %197, i32 0, i32 3
  store i8* %196, i8** %198, align 8
  %199 = load %struct.sec_request_el*, %struct.sec_request_el** %20, align 8
  %200 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i8* @upper_32_bits(i32 %201)
  %203 = load %struct.sec_bd_info*, %struct.sec_bd_info** %21, align 8
  %204 = getelementptr inbounds %struct.sec_bd_info, %struct.sec_bd_info* %203, i32 0, i32 2
  store i8* %202, i8** %204, align 8
  br label %205

205:                                              ; preds = %186, %168
  %206 = load %struct.sec_request_el*, %struct.sec_request_el** %20, align 8
  store %struct.sec_request_el* %206, %struct.sec_request_el** %10, align 8
  br label %221

207:                                              ; preds = %167
  %208 = load %struct.sec_request_el*, %struct.sec_request_el** %20, align 8
  %209 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.sec_request_el*, %struct.sec_request_el** %20, align 8
  %212 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.sec_dev_info*, %struct.sec_dev_info** %19, align 8
  %215 = call i32 @sec_free_hw_sgl(i32 %210, i32 %213, %struct.sec_dev_info* %214)
  br label %216

216:                                              ; preds = %207, %135
  %217 = load %struct.sec_request_el*, %struct.sec_request_el** %20, align 8
  %218 = call i32 @kfree(%struct.sec_request_el* %217)
  %219 = load i32, i32* %22, align 4
  %220 = call %struct.sec_request_el* @ERR_PTR(i32 %219)
  store %struct.sec_request_el* %220, %struct.sec_request_el** %10, align 8
  br label %221

221:                                              ; preds = %216, %205, %27
  %222 = load %struct.sec_request_el*, %struct.sec_request_el** %10, align 8
  ret %struct.sec_request_el* %222
}

declare dso_local %struct.sec_request_el* @kzalloc(i32, i32) #1

declare dso_local %struct.sec_request_el* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(%struct.sec_bd_info*, %struct.sec_bd_info*, i32) #1

declare dso_local i32 @sec_alloc_and_fill_hw_sgl(i32*, i32*, %struct.scatterlist*, i32, %struct.sec_dev_info*) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

declare dso_local i32 @sec_free_hw_sgl(i32, i32, %struct.sec_dev_info*) #1

declare dso_local i32 @kfree(%struct.sec_request_el*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
