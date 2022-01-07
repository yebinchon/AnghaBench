; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c___hns_roce_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c___hns_roce_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i64*, i32***, i32, %struct.hns_roce_eq_table }
%struct.hns_roce_eq_table = type { %struct.hns_roce_dev* }

@HNS_ROCE_INT_NAME_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"hns-abn-%d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"hns-aeq-%d\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"hns-ceq-%d\00", align 1
@hns_roce_v2_msix_interrupt_abn = common dso_local global i32 0, align 4
@hns_roce_v2_msix_interrupt_eq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Request irq error!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i32, i32, i32, i32)* @__hns_roce_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hns_roce_request_irq(%struct.hns_roce_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hns_roce_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hns_roce_eq_table*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %17 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %16, i32 0, i32 3
  store %struct.hns_roce_eq_table* %17, %struct.hns_roce_eq_table** %12, align 8
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %44, %5
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %18
  %23 = load i32, i32* @HNS_ROCE_INT_NAME_LEN, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i64 @kzalloc(i32 %23, i32 %24)
  %26 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %27 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 %25, i64* %31, align 8
  %32 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %33 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %22
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %15, align 4
  br label %274

43:                                               ; preds = %22
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %13, align 4
  br label %18

47:                                               ; preds = %18
  store i32 0, i32* %14, align 4
  br label %48

48:                                               ; preds = %64, %47
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %54 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = load i32, i32* @HNS_ROCE_INT_NAME_LEN, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @snprintf(i8* %60, i32 %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %52
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %14, align 4
  br label %48

67:                                               ; preds = %48
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %89, %67
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %71, %72
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %69
  %76 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %77 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = load i32, i32* @HNS_ROCE_INT_NAME_LEN, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 %85, %86
  %88 = call i32 @snprintf(i8* %83, i32 %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %75
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %69

92:                                               ; preds = %69
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %14, align 4
  br label %96

96:                                               ; preds = %116, %92
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %119

100:                                              ; preds = %96
  %101 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %102 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i8*
  %109 = load i32, i32* @HNS_ROCE_INT_NAME_LEN, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %11, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load i32, i32* %10, align 4
  %114 = sub nsw i32 %112, %113
  %115 = call i32 @snprintf(i8* %108, i32 %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %100
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  br label %96

119:                                              ; preds = %96
  store i32 0, i32* %14, align 4
  br label %120

120:                                              ; preds = %224, %119
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %227

124:                                              ; preds = %120
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %124
  %129 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %130 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %129, i32 0, i32 1
  %131 = load i32***, i32**** %130, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32**, i32*** %131, i64 %133
  %135 = load i32**, i32*** %134, align 8
  %136 = load i32, i32* @hns_roce_v2_msix_interrupt_abn, align 4
  %137 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %138 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %145 = call i32 @request_irq(i32** %135, i32 %136, i32 0, i64 %143, %struct.hns_roce_dev* %144)
  store i32 %145, i32* %15, align 4
  br label %215

146:                                              ; preds = %124
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %148, %149
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %183

152:                                              ; preds = %146
  %153 = load %struct.hns_roce_eq_table*, %struct.hns_roce_eq_table** %12, align 8
  %154 = getelementptr inbounds %struct.hns_roce_eq_table, %struct.hns_roce_eq_table* %153, i32 0, i32 0
  %155 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %154, align 8
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %11, align 4
  %158 = sub nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %155, i64 %159
  %161 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %160, i32 0, i32 1
  %162 = load i32***, i32**** %161, align 8
  %163 = bitcast i32*** %162 to i32**
  %164 = load i32, i32* @hns_roce_v2_msix_interrupt_eq, align 4
  %165 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %166 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %165, i32 0, i32 0
  %167 = load i64*, i64** %166, align 8
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %167, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.hns_roce_eq_table*, %struct.hns_roce_eq_table** %12, align 8
  %175 = getelementptr inbounds %struct.hns_roce_eq_table, %struct.hns_roce_eq_table* %174, i32 0, i32 0
  %176 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %175, align 8
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %11, align 4
  %179 = sub nsw i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %176, i64 %180
  %182 = call i32 @request_irq(i32** %163, i32 %164, i32 0, i64 %173, %struct.hns_roce_dev* %181)
  store i32 %182, i32* %15, align 4
  br label %214

183:                                              ; preds = %146
  %184 = load %struct.hns_roce_eq_table*, %struct.hns_roce_eq_table** %12, align 8
  %185 = getelementptr inbounds %struct.hns_roce_eq_table, %struct.hns_roce_eq_table* %184, i32 0, i32 0
  %186 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %185, align 8
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* %11, align 4
  %189 = sub nsw i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %186, i64 %190
  %192 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %191, i32 0, i32 1
  %193 = load i32***, i32**** %192, align 8
  %194 = bitcast i32*** %193 to i32**
  %195 = load i32, i32* @hns_roce_v2_msix_interrupt_eq, align 4
  %196 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %197 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %196, i32 0, i32 0
  %198 = load i64*, i64** %197, align 8
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* %9, align 4
  %201 = sub nsw i32 %199, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %198, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.hns_roce_eq_table*, %struct.hns_roce_eq_table** %12, align 8
  %206 = getelementptr inbounds %struct.hns_roce_eq_table, %struct.hns_roce_eq_table* %205, i32 0, i32 0
  %207 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %206, align 8
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* %11, align 4
  %210 = sub nsw i32 %208, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %207, i64 %211
  %213 = call i32 @request_irq(i32** %194, i32 %195, i32 0, i64 %204, %struct.hns_roce_dev* %212)
  store i32 %213, i32* %15, align 4
  br label %214

214:                                              ; preds = %183, %152
  br label %215

215:                                              ; preds = %214, %128
  %216 = load i32, i32* %15, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %215
  %219 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %220 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @dev_err(i32 %221, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %228

223:                                              ; preds = %215
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %14, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %14, align 4
  br label %120

227:                                              ; preds = %120
  store i32 0, i32* %6, align 4
  br label %294

228:                                              ; preds = %218
  %229 = load i32, i32* %14, align 4
  %230 = sub nsw i32 %229, 1
  store i32 %230, i32* %14, align 4
  br label %231

231:                                              ; preds = %270, %228
  %232 = load i32, i32* %14, align 4
  %233 = icmp sge i32 %232, 0
  br i1 %233, label %234, label %273

234:                                              ; preds = %231
  %235 = load i32, i32* %14, align 4
  %236 = load i32, i32* %11, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %248

238:                                              ; preds = %234
  %239 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %240 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %239, i32 0, i32 1
  %241 = load i32***, i32**** %240, align 8
  %242 = load i32, i32* %14, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32**, i32*** %241, i64 %243
  %245 = load i32**, i32*** %244, align 8
  %246 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %247 = call i32 @free_irq(i32** %245, %struct.hns_roce_dev* %246)
  br label %269

248:                                              ; preds = %234
  %249 = load %struct.hns_roce_eq_table*, %struct.hns_roce_eq_table** %12, align 8
  %250 = getelementptr inbounds %struct.hns_roce_eq_table, %struct.hns_roce_eq_table* %249, i32 0, i32 0
  %251 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %250, align 8
  %252 = load i32, i32* %14, align 4
  %253 = load i32, i32* %11, align 4
  %254 = sub nsw i32 %252, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %251, i64 %255
  %257 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %256, i32 0, i32 1
  %258 = load i32***, i32**** %257, align 8
  %259 = bitcast i32*** %258 to i32**
  %260 = load %struct.hns_roce_eq_table*, %struct.hns_roce_eq_table** %12, align 8
  %261 = getelementptr inbounds %struct.hns_roce_eq_table, %struct.hns_roce_eq_table* %260, i32 0, i32 0
  %262 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %261, align 8
  %263 = load i32, i32* %14, align 4
  %264 = load i32, i32* %11, align 4
  %265 = sub nsw i32 %263, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %262, i64 %266
  %268 = call i32 @free_irq(i32** %259, %struct.hns_roce_dev* %267)
  br label %269

269:                                              ; preds = %248, %238
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %14, align 4
  %272 = add nsw i32 %271, -1
  store i32 %272, i32* %14, align 4
  br label %231

273:                                              ; preds = %231
  br label %274

274:                                              ; preds = %273, %40
  %275 = load i32, i32* %13, align 4
  %276 = sub nsw i32 %275, 1
  store i32 %276, i32* %13, align 4
  br label %277

277:                                              ; preds = %289, %274
  %278 = load i32, i32* %13, align 4
  %279 = icmp sge i32 %278, 0
  br i1 %279, label %280, label %292

280:                                              ; preds = %277
  %281 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %282 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %281, i32 0, i32 0
  %283 = load i64*, i64** %282, align 8
  %284 = load i32, i32* %13, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i64, i64* %283, i64 %285
  %287 = load i64, i64* %286, align 8
  %288 = call i32 @kfree(i64 %287)
  br label %289

289:                                              ; preds = %280
  %290 = load i32, i32* %13, align 4
  %291 = add nsw i32 %290, -1
  store i32 %291, i32* %13, align 4
  br label %277

292:                                              ; preds = %277
  %293 = load i32, i32* %15, align 4
  store i32 %293, i32* %6, align 4
  br label %294

294:                                              ; preds = %292, %227
  %295 = load i32, i32* %6, align 4
  ret i32 %295
}

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @request_irq(i32**, i32, i32, i64, %struct.hns_roce_dev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @free_irq(i32**, %struct.hns_roce_dev*) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
