; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_irq_write_ccm_padded_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_irq_write_ccm_padded_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_cryp = type { i64, i64, i32, i64, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@AES_BLOCK_32 = common dso_local global i32 0, align 4
@FLG_CCM_PADDED_WA = common dso_local global i32 0, align 4
@CRYP_IMSCR = common dso_local global i64 0, align 8
@CRYP_CR = common dso_local global i64 0, align 8
@CR_CRYPEN = common dso_local global i32 0, align 4
@CRYP_CSGCMCCM0R = common dso_local global i64 0, align 8
@CRYP_IV1RR = common dso_local global i64 0, align 8
@CR_ALGO_MASK = common dso_local global i32 0, align 4
@CR_AES_CTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Timeout (wite ccm padded data)\0A\00", align 1
@CR_AES_CCM = common dso_local global i32 0, align 4
@CR_PH_MASK = common dso_local global i32 0, align 4
@CR_PH_HEADER = common dso_local global i32 0, align 4
@CRYP_DIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_cryp*)* @stm32_cryp_irq_write_ccm_padded_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_cryp_irq_write_ccm_padded_data(%struct.stm32_cryp* %0) #0 {
  %2 = alloca %struct.stm32_cryp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.stm32_cryp* %0, %struct.stm32_cryp** %2, align 8
  store i32 0, i32* %3, align 4
  %15 = load i32, i32* @AES_BLOCK_32, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load i32, i32* @AES_BLOCK_32, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %22 = load i32, i32* @AES_BLOCK_32, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %25 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %26 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  %28 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %29 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %28, i32 0, i32 5
  %30 = load %struct.scatterlist*, %struct.scatterlist** %29, align 8
  store %struct.scatterlist* %30, %struct.scatterlist** %12, align 8
  %31 = load i32, i32* @FLG_CCM_PADDED_WA, align 4
  %32 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %33 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %37 = load i64, i64* @CRYP_IMSCR, align 8
  %38 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %36, i64 %37, i32 0)
  %39 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %40 = load i64, i64* @CRYP_CR, align 8
  %41 = call i32 @stm32_cryp_read(%struct.stm32_cryp* %39, i64 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @CR_CRYPEN, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %47 = load i64, i64* @CRYP_CR, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %46, i64 %47, i32 %48)
  %50 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %51 = load i64, i64* @CRYP_CSGCMCCM0R, align 8
  %52 = add nsw i64 %51, 28
  %53 = call i32 @stm32_cryp_read(%struct.stm32_cryp* %50, i64 %52)
  store i32 %53, i32* %5, align 4
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %69, %1
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @ARRAY_SIZE(i32* %18)
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %60 = load i64, i64* @CRYP_CSGCMCCM0R, align 8
  %61 = load i32, i32* %13, align 4
  %62 = mul i32 %61, 4
  %63 = zext i32 %62 to i64
  %64 = add nsw i64 %60, %63
  %65 = call i32 @stm32_cryp_read(%struct.stm32_cryp* %59, i64 %64)
  %66 = load i32, i32* %13, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %18, i64 %67
  store i32 %65, i32* %68, align 4
  br label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %13, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %54

72:                                               ; preds = %54
  %73 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %74 = load i64, i64* @CRYP_IV1RR, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %73, i64 %74, i32 %75)
  %77 = load i32, i32* @CR_ALGO_MASK, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %4, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* @CR_AES_CTR, align 4
  %82 = load i32, i32* %4, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %4, align 4
  %84 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %85 = load i64, i64* @CRYP_CR, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %84, i64 %85, i32 %86)
  %88 = load i32, i32* @CR_CRYPEN, align 4
  %89 = load i32, i32* %4, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %4, align 4
  %91 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %92 = load i64, i64* @CRYP_CR, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %91, i64 %92, i32 %93)
  %95 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %96 = call i32 @stm32_cryp_irq_write_block(%struct.stm32_cryp* %95)
  %97 = load i64, i64* %11, align 8
  %98 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %99 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %101 = call i32 @stm32_cryp_wait_output(%struct.stm32_cryp* %100)
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %3, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %72
  %105 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %106 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %109 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %110 = load i32, i32* %3, align 4
  call void @stm32_cryp_finish_req(%struct.stm32_cryp* %109, i32 %110)
  store i32 1, i32* %14, align 4
  br label %215

111:                                              ; preds = %72
  %112 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %113 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %10, align 8
  %115 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %116 = call i32 @stm32_cryp_irq_read_data(%struct.stm32_cryp* %115)
  %117 = mul nuw i64 4, %23
  %118 = trunc i64 %117 to i32
  %119 = call i32 @memset(i32* %24, i32 0, i32 %118)
  %120 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %121 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %122 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %10, align 8
  %125 = sub i64 %123, %124
  %126 = load i64, i64* %10, align 8
  %127 = call i32 @scatterwalk_map_and_copy(i32* %24, %struct.scatterlist* %120, i64 %125, i64 %126, i32 0)
  store i32 0, i32* %13, align 4
  br label %128

128:                                              ; preds = %143, %111
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @ARRAY_SIZE(i32* %21)
  %131 = icmp ult i32 %129, %130
  br i1 %131, label %132, label %146

132:                                              ; preds = %128
  %133 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %134 = load i64, i64* @CRYP_CSGCMCCM0R, align 8
  %135 = load i32, i32* %13, align 4
  %136 = mul i32 %135, 4
  %137 = zext i32 %136 to i64
  %138 = add nsw i64 %134, %137
  %139 = call i32 @stm32_cryp_read(%struct.stm32_cryp* %133, i64 %138)
  %140 = load i32, i32* %13, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %21, i64 %141
  store i32 %139, i32* %142, align 4
  br label %143

143:                                              ; preds = %132
  %144 = load i32, i32* %13, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %128

146:                                              ; preds = %128
  %147 = load i32, i32* @CR_ALGO_MASK, align 4
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %4, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* @CR_AES_CCM, align 4
  %152 = load i32, i32* %4, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %4, align 4
  %154 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %155 = load i64, i64* @CRYP_CR, align 8
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %154, i64 %155, i32 %156)
  %158 = load i32, i32* @CR_PH_MASK, align 4
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %4, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %4, align 4
  %162 = load i32, i32* @CR_PH_HEADER, align 4
  %163 = load i32, i32* %4, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %4, align 4
  %165 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %166 = load i64, i64* @CRYP_CR, align 8
  %167 = load i32, i32* %4, align 4
  %168 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %165, i64 %166, i32 %167)
  store i32 0, i32* %13, align 4
  br label %169

169:                                              ; preds = %199, %146
  %170 = load i32, i32* %13, align 4
  %171 = call i32 @ARRAY_SIZE(i32* %24)
  %172 = icmp ult i32 %170, %171
  br i1 %172, label %173, label %202

173:                                              ; preds = %169
  %174 = load i32, i32* %13, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %18, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %13, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %24, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = xor i32 %181, %177
  store i32 %182, i32* %180, align 4
  %183 = load i32, i32* %13, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %21, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %13, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %24, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = xor i32 %190, %186
  store i32 %191, i32* %189, align 4
  %192 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %193 = load i64, i64* @CRYP_DIN, align 8
  %194 = load i32, i32* %13, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %24, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %192, i64 %193, i32 %197)
  br label %199

199:                                              ; preds = %173
  %200 = load i32, i32* %13, align 4
  %201 = add i32 %200, 1
  store i32 %201, i32* %13, align 4
  br label %169

202:                                              ; preds = %169
  %203 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %204 = call i32 @stm32_cryp_wait_busy(%struct.stm32_cryp* %203)
  store i32 %204, i32* %3, align 4
  %205 = load i32, i32* %3, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %202
  %208 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %209 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @dev_err(i32 %210, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %212

212:                                              ; preds = %207, %202
  %213 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %214 = load i32, i32* %3, align 4
  call void @stm32_cryp_finish_req(%struct.stm32_cryp* %213, i32 %214)
  store i32 0, i32* %14, align 4
  br label %215

215:                                              ; preds = %212, %104
  %216 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %216)
  %217 = load i32, i32* %14, align 4
  switch i32 %217, label %219 [
    i32 0, label %218
    i32 1, label %218
  ]

218:                                              ; preds = %215, %215
  ret void

219:                                              ; preds = %215
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @stm32_cryp_write(%struct.stm32_cryp*, i64, i32) #2

declare dso_local i32 @stm32_cryp_read(%struct.stm32_cryp*, i64) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @stm32_cryp_irq_write_block(%struct.stm32_cryp*) #2

declare dso_local i32 @stm32_cryp_wait_output(%struct.stm32_cryp*) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local void @stm32_cryp_finish_req(%struct.stm32_cryp*, i32) #2

declare dso_local i32 @stm32_cryp_irq_read_data(%struct.stm32_cryp*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @scatterwalk_map_and_copy(i32*, %struct.scatterlist*, i64, i64, i32) #2

declare dso_local i32 @stm32_cryp_wait_busy(%struct.stm32_cryp*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
