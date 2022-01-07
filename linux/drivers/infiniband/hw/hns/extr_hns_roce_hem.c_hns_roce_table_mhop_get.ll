; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_table_mhop_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_table_mhop_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_4__*, %struct.device* }
%struct.TYPE_4__ = type { i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)* }
%struct.device = type { i32 }
%struct.hns_roce_hem_table = type { i64, i64**, i64*, i64**, i64*, i32, %struct.TYPE_5__**, i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.hns_roce_hem_mhop = type { i32, i32, i32, i32, i32, i32 }
%struct.hns_roce_hem_iter = type { i32 }

@BA_BYTE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Table %d not support hop_num = %d!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Table %d exceed hem limt idx = %llu,max = %lu!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HEM_TYPE_MTT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"set HEM base address to HW failed!\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@HNS_ROCE_HOP_NUM_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64)* @hns_roce_table_mhop_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_table_mhop_get(%struct.hns_roce_dev* %0, %struct.hns_roce_hem_table* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca %struct.hns_roce_hem_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.hns_roce_hem_mhop, align 4
  %10 = alloca %struct.hns_roce_hem_iter, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store %struct.hns_roce_hem_table* %1, %struct.hns_roce_hem_table** %6, align 8
  store i64 %2, i64* %7, align 8
  %26 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %27 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %26, i32 0, i32 1
  %28 = load %struct.device*, %struct.device** %27, align 8
  store %struct.device* %28, %struct.device** %8, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %29 = load i64, i64* %7, align 8
  store i64 %29, i64* %21, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %30 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %31 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %32 = call i32 @hns_roce_calc_hem_mhop(%struct.hns_roce_dev* %30, %struct.hns_roce_hem_table* %31, i64* %21, %struct.hns_roce_hem_mhop* %9)
  store i32 %32, i32* %25, align 4
  %33 = load i32, i32* %25, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %25, align 4
  store i32 %36, i32* %4, align 4
  br label %493

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %9, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %12, align 4
  %42 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %9, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @BA_BYTE_LEN, align 4
  %46 = sdiv i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %48 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @hns_roce_get_bt_num(i32 %49, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  switch i32 %52, label %96 [
    i32 3, label %53
    i32 2, label %80
    i32 1, label %92
  ]

53:                                               ; preds = %37
  %54 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %9, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %13, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* %13, align 4
  %59 = mul nsw i32 %57, %58
  %60 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %9, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %13, align 4
  %63 = mul nsw i32 %61, %62
  %64 = add nsw i32 %59, %63
  %65 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %9, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %64, %66
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %17, align 8
  %69 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %9, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %13, align 4
  %72 = mul nsw i32 %70, %71
  %73 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %9, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %72, %74
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %18, align 8
  %77 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %9, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %19, align 8
  br label %105

80:                                               ; preds = %37
  %81 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %9, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %13, align 4
  %84 = mul nsw i32 %82, %83
  %85 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %9, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %84, %86
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %17, align 8
  %89 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %9, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %19, align 8
  br label %105

92:                                               ; preds = %37
  %93 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %9, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %17, align 8
  br label %105

96:                                               ; preds = %37
  %97 = load %struct.device*, %struct.device** %8, align 8
  %98 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %99 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %493

105:                                              ; preds = %92, %80, %53
  %106 = load i64, i64* %17, align 8
  %107 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %108 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp uge i64 %106, %109
  %111 = zext i1 %110 to i32
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %105
  %115 = load %struct.device*, %struct.device** %8, align 8
  %116 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %117 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 8
  %119 = load i64, i64* %17, align 8
  %120 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %121 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %115, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %118, i64 %119, i64 %122)
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %4, align 4
  br label %493

126:                                              ; preds = %105
  %127 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %128 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %127, i32 0, i32 5
  %129 = call i32 @mutex_lock(i32* %128)
  %130 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %131 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %130, i32 0, i32 6
  %132 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %131, align 8
  %133 = load i64, i64* %17, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %132, i64 %133
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = icmp ne %struct.TYPE_5__* %135, null
  br i1 %136, label %137, label %147

137:                                              ; preds = %126
  %138 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %139 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %138, i32 0, i32 6
  %140 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %139, align 8
  %141 = load i64, i64* %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %140, i64 %141
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  br label %488

147:                                              ; preds = %126
  %148 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %149 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %14, align 4
  %152 = call i64 @check_whether_bt_num_3(i32 %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %147
  %155 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %156 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %14, align 4
  %159 = call i64 @check_whether_bt_num_2(i32 %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %220

161:                                              ; preds = %154, %147
  %162 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %163 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %162, i32 0, i32 1
  %164 = load i64**, i64*** %163, align 8
  %165 = load i64, i64* %19, align 8
  %166 = getelementptr inbounds i64*, i64** %164, i64 %165
  %167 = load i64*, i64** %166, align 8
  %168 = icmp ne i64* %167, null
  br i1 %168, label %220, label %169

169:                                              ; preds = %161
  %170 = load %struct.device*, %struct.device** %8, align 8
  %171 = load i32, i32* %12, align 4
  %172 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %173 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %172, i32 0, i32 2
  %174 = load i64*, i64** %173, align 8
  %175 = load i64, i64* %19, align 8
  %176 = getelementptr inbounds i64, i64* %174, i64 %175
  %177 = load i32, i32* @GFP_KERNEL, align 4
  %178 = call i8* @dma_alloc_coherent(%struct.device* %170, i32 %171, i64* %176, i32 %177)
  %179 = bitcast i8* %178 to i64*
  %180 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %181 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %180, i32 0, i32 1
  %182 = load i64**, i64*** %181, align 8
  %183 = load i64, i64* %19, align 8
  %184 = getelementptr inbounds i64*, i64** %182, i64 %183
  store i64* %179, i64** %184, align 8
  %185 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %186 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %185, i32 0, i32 1
  %187 = load i64**, i64*** %186, align 8
  %188 = load i64, i64* %19, align 8
  %189 = getelementptr inbounds i64*, i64** %187, i64 %188
  %190 = load i64*, i64** %189, align 8
  %191 = icmp ne i64* %190, null
  br i1 %191, label %195, label %192

192:                                              ; preds = %169
  %193 = load i32, i32* @ENOMEM, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %25, align 4
  br label %488

195:                                              ; preds = %169
  store i32 1, i32* %23, align 4
  %196 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %197 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @HEM_TYPE_MTT, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %219

201:                                              ; preds = %195
  store i32 0, i32* %24, align 4
  %202 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %203 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %202, i32 0, i32 0
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)*, i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)** %205, align 8
  %207 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %208 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %209 = load i64, i64* %7, align 8
  %210 = load i32, i32* %24, align 4
  %211 = call i64 %206(%struct.hns_roce_dev* %207, %struct.hns_roce_hem_table* %208, i64 %209, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %201
  %214 = load i32, i32* @ENODEV, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %25, align 4
  %216 = load %struct.device*, %struct.device** %8, align 8
  %217 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %216, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %463

218:                                              ; preds = %201
  br label %219

219:                                              ; preds = %218, %195
  br label %220

220:                                              ; preds = %219, %161, %154
  %221 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %222 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %14, align 4
  %225 = call i64 @check_whether_bt_num_3(i32 %223, i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %295

227:                                              ; preds = %220
  %228 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %229 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %228, i32 0, i32 3
  %230 = load i64**, i64*** %229, align 8
  %231 = load i64, i64* %18, align 8
  %232 = getelementptr inbounds i64*, i64** %230, i64 %231
  %233 = load i64*, i64** %232, align 8
  %234 = icmp ne i64* %233, null
  br i1 %234, label %295, label %235

235:                                              ; preds = %227
  %236 = load %struct.device*, %struct.device** %8, align 8
  %237 = load i32, i32* %12, align 4
  %238 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %239 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %238, i32 0, i32 4
  %240 = load i64*, i64** %239, align 8
  %241 = load i64, i64* %18, align 8
  %242 = getelementptr inbounds i64, i64* %240, i64 %241
  %243 = load i32, i32* @GFP_KERNEL, align 4
  %244 = call i8* @dma_alloc_coherent(%struct.device* %236, i32 %237, i64* %242, i32 %243)
  %245 = bitcast i8* %244 to i64*
  %246 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %247 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %246, i32 0, i32 3
  %248 = load i64**, i64*** %247, align 8
  %249 = load i64, i64* %18, align 8
  %250 = getelementptr inbounds i64*, i64** %248, i64 %249
  store i64* %245, i64** %250, align 8
  %251 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %252 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %251, i32 0, i32 3
  %253 = load i64**, i64*** %252, align 8
  %254 = load i64, i64* %18, align 8
  %255 = getelementptr inbounds i64*, i64** %253, i64 %254
  %256 = load i64*, i64** %255, align 8
  %257 = icmp ne i64* %256, null
  br i1 %257, label %261, label %258

258:                                              ; preds = %235
  %259 = load i32, i32* @ENOMEM, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %25, align 4
  br label %463

261:                                              ; preds = %235
  store i32 1, i32* %22, align 4
  %262 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %263 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %262, i32 0, i32 4
  %264 = load i64*, i64** %263, align 8
  %265 = load i64, i64* %18, align 8
  %266 = getelementptr inbounds i64, i64* %264, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %269 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %268, i32 0, i32 1
  %270 = load i64**, i64*** %269, align 8
  %271 = load i64, i64* %19, align 8
  %272 = getelementptr inbounds i64*, i64** %270, i64 %271
  %273 = load i64*, i64** %272, align 8
  %274 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %9, i32 0, i32 4
  %275 = load i32, i32* %274, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i64, i64* %273, i64 %276
  store i64 %267, i64* %277, align 8
  store i32 1, i32* %24, align 4
  %278 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %279 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %278, i32 0, i32 0
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 0
  %282 = load i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)*, i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)** %281, align 8
  %283 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %284 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %285 = load i64, i64* %7, align 8
  %286 = load i32, i32* %24, align 4
  %287 = call i64 %282(%struct.hns_roce_dev* %283, %struct.hns_roce_hem_table* %284, i64 %285, i32 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %261
  %290 = load i32, i32* @ENODEV, align 4
  %291 = sub nsw i32 0, %290
  store i32 %291, i32* %25, align 4
  %292 = load %struct.device*, %struct.device** %8, align 8
  %293 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %292, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %438

294:                                              ; preds = %261
  br label %295

295:                                              ; preds = %294, %227, %220
  %296 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %297 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %296, i32 0, i32 7
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @HEM_TYPE_MTT, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %303

301:                                              ; preds = %295
  %302 = load i32, i32* %11, align 4
  br label %305

303:                                              ; preds = %295
  %304 = load i32, i32* %12, align 4
  br label %305

305:                                              ; preds = %303, %301
  %306 = phi i32 [ %302, %301 ], [ %304, %303 ]
  store i32 %306, i32* %15, align 4
  %307 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %308 = load i32, i32* %15, align 4
  %309 = load i32, i32* @PAGE_SHIFT, align 4
  %310 = ashr i32 %308, %309
  %311 = load i32, i32* %15, align 4
  %312 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %313 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %312, i32 0, i32 8
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %305
  %317 = load i32, i32* @GFP_KERNEL, align 4
  br label %320

318:                                              ; preds = %305
  %319 = load i32, i32* @GFP_HIGHUSER, align 4
  br label %320

320:                                              ; preds = %318, %316
  %321 = phi i32 [ %317, %316 ], [ %319, %318 ]
  %322 = load i32, i32* @__GFP_NOWARN, align 4
  %323 = or i32 %321, %322
  %324 = call %struct.TYPE_5__* @hns_roce_alloc_hem(%struct.hns_roce_dev* %307, i32 %310, i32 %311, i32 %323)
  %325 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %326 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %325, i32 0, i32 6
  %327 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %326, align 8
  %328 = load i64, i64* %17, align 8
  %329 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %327, i64 %328
  store %struct.TYPE_5__* %324, %struct.TYPE_5__** %329, align 8
  %330 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %331 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %330, i32 0, i32 6
  %332 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %331, align 8
  %333 = load i64, i64* %17, align 8
  %334 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %332, i64 %333
  %335 = load %struct.TYPE_5__*, %struct.TYPE_5__** %334, align 8
  %336 = icmp ne %struct.TYPE_5__* %335, null
  br i1 %336, label %340, label %337

337:                                              ; preds = %320
  %338 = load i32, i32* @ENOMEM, align 4
  %339 = sub nsw i32 0, %338
  store i32 %339, i32* %25, align 4
  br label %438

340:                                              ; preds = %320
  %341 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %342 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %341, i32 0, i32 6
  %343 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %342, align 8
  %344 = load i64, i64* %17, align 8
  %345 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %343, i64 %344
  %346 = load %struct.TYPE_5__*, %struct.TYPE_5__** %345, align 8
  %347 = call i32 @hns_roce_hem_first(%struct.TYPE_5__* %346, %struct.hns_roce_hem_iter* %10)
  %348 = call i64 @hns_roce_hem_addr(%struct.hns_roce_hem_iter* %10)
  store i64 %348, i64* %20, align 8
  %349 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %350 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %349, i32 0, i32 7
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @HEM_TYPE_MTT, align 4
  %353 = icmp slt i32 %351, %352
  br i1 %353, label %354, label %412

354:                                              ; preds = %340
  %355 = load i32, i32* %14, align 4
  %356 = icmp eq i32 %355, 2
  br i1 %356, label %357, label %369

357:                                              ; preds = %354
  %358 = load i64, i64* %20, align 8
  %359 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %360 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %359, i32 0, i32 3
  %361 = load i64**, i64*** %360, align 8
  %362 = load i64, i64* %18, align 8
  %363 = getelementptr inbounds i64*, i64** %361, i64 %362
  %364 = load i64*, i64** %363, align 8
  %365 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %9, i32 0, i32 5
  %366 = load i32, i32* %365, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i64, i64* %364, i64 %367
  store i64 %358, i64* %368, align 8
  store i32 2, i32* %24, align 4
  br label %394

369:                                              ; preds = %354
  %370 = load i32, i32* %14, align 4
  %371 = icmp eq i32 %370, 1
  br i1 %371, label %372, label %384

372:                                              ; preds = %369
  %373 = load i64, i64* %20, align 8
  %374 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %375 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %374, i32 0, i32 1
  %376 = load i64**, i64*** %375, align 8
  %377 = load i64, i64* %19, align 8
  %378 = getelementptr inbounds i64*, i64** %376, i64 %377
  %379 = load i64*, i64** %378, align 8
  %380 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %9, i32 0, i32 4
  %381 = load i32, i32* %380, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i64, i64* %379, i64 %382
  store i64 %373, i64* %383, align 8
  store i32 1, i32* %24, align 4
  br label %393

384:                                              ; preds = %369
  %385 = load i32, i32* %14, align 4
  %386 = load i32, i32* @HNS_ROCE_HOP_NUM_0, align 4
  %387 = icmp eq i32 %385, %386
  br i1 %387, label %388, label %389

388:                                              ; preds = %384
  store i32 0, i32* %24, align 4
  br label %392

389:                                              ; preds = %384
  %390 = load i32, i32* @EINVAL, align 4
  %391 = sub nsw i32 0, %390
  store i32 %391, i32* %25, align 4
  br label %463

392:                                              ; preds = %388
  br label %393

393:                                              ; preds = %392, %372
  br label %394

394:                                              ; preds = %393, %357
  %395 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %396 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %395, i32 0, i32 0
  %397 = load %struct.TYPE_4__*, %struct.TYPE_4__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i32 0, i32 0
  %399 = load i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)*, i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)** %398, align 8
  %400 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %401 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %402 = load i64, i64* %7, align 8
  %403 = load i32, i32* %24, align 4
  %404 = call i64 %399(%struct.hns_roce_dev* %400, %struct.hns_roce_hem_table* %401, i64 %402, i32 %403)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %411

406:                                              ; preds = %394
  %407 = load i32, i32* @ENODEV, align 4
  %408 = sub nsw i32 0, %407
  store i32 %408, i32* %25, align 4
  %409 = load %struct.device*, %struct.device** %8, align 8
  %410 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %409, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %438

411:                                              ; preds = %394
  br label %428

412:                                              ; preds = %340
  %413 = load i32, i32* %14, align 4
  %414 = icmp eq i32 %413, 2
  br i1 %414, label %415, label %427

415:                                              ; preds = %412
  %416 = load i64, i64* %20, align 8
  %417 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %418 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %417, i32 0, i32 1
  %419 = load i64**, i64*** %418, align 8
  %420 = load i64, i64* %19, align 8
  %421 = getelementptr inbounds i64*, i64** %419, i64 %420
  %422 = load i64*, i64** %421, align 8
  %423 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %9, i32 0, i32 4
  %424 = load i32, i32* %423, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i64, i64* %422, i64 %425
  store i64 %416, i64* %426, align 8
  br label %427

427:                                              ; preds = %415, %412
  br label %428

428:                                              ; preds = %427, %411
  %429 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %430 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %429, i32 0, i32 6
  %431 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %430, align 8
  %432 = load i64, i64* %17, align 8
  %433 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %431, i64 %432
  %434 = load %struct.TYPE_5__*, %struct.TYPE_5__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %435, align 4
  br label %488

438:                                              ; preds = %406, %337, %289
  %439 = load i32, i32* %22, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %462

441:                                              ; preds = %438
  %442 = load %struct.device*, %struct.device** %8, align 8
  %443 = load i32, i32* %12, align 4
  %444 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %445 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %444, i32 0, i32 3
  %446 = load i64**, i64*** %445, align 8
  %447 = load i64, i64* %18, align 8
  %448 = getelementptr inbounds i64*, i64** %446, i64 %447
  %449 = load i64*, i64** %448, align 8
  %450 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %451 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %450, i32 0, i32 4
  %452 = load i64*, i64** %451, align 8
  %453 = load i64, i64* %18, align 8
  %454 = getelementptr inbounds i64, i64* %452, i64 %453
  %455 = load i64, i64* %454, align 8
  %456 = call i32 @dma_free_coherent(%struct.device* %442, i32 %443, i64* %449, i64 %455)
  %457 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %458 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %457, i32 0, i32 3
  %459 = load i64**, i64*** %458, align 8
  %460 = load i64, i64* %18, align 8
  %461 = getelementptr inbounds i64*, i64** %459, i64 %460
  store i64* null, i64** %461, align 8
  br label %462

462:                                              ; preds = %441, %438
  br label %463

463:                                              ; preds = %462, %389, %258, %213
  %464 = load i32, i32* %23, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %487

466:                                              ; preds = %463
  %467 = load %struct.device*, %struct.device** %8, align 8
  %468 = load i32, i32* %12, align 4
  %469 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %470 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %469, i32 0, i32 1
  %471 = load i64**, i64*** %470, align 8
  %472 = load i64, i64* %19, align 8
  %473 = getelementptr inbounds i64*, i64** %471, i64 %472
  %474 = load i64*, i64** %473, align 8
  %475 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %476 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %475, i32 0, i32 2
  %477 = load i64*, i64** %476, align 8
  %478 = load i64, i64* %19, align 8
  %479 = getelementptr inbounds i64, i64* %477, i64 %478
  %480 = load i64, i64* %479, align 8
  %481 = call i32 @dma_free_coherent(%struct.device* %467, i32 %468, i64* %474, i64 %480)
  %482 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %483 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %482, i32 0, i32 1
  %484 = load i64**, i64*** %483, align 8
  %485 = load i64, i64* %19, align 8
  %486 = getelementptr inbounds i64*, i64** %484, i64 %485
  store i64* null, i64** %486, align 8
  br label %487

487:                                              ; preds = %466, %463
  br label %488

488:                                              ; preds = %487, %428, %192, %137
  %489 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %490 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %489, i32 0, i32 5
  %491 = call i32 @mutex_unlock(i32* %490)
  %492 = load i32, i32* %25, align 4
  store i32 %492, i32* %4, align 4
  br label %493

493:                                              ; preds = %488, %114, %96, %35
  %494 = load i32, i32* %4, align 4
  ret i32 %494
}

declare dso_local i32 @hns_roce_calc_hem_mhop(%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64*, %struct.hns_roce_hem_mhop*) #1

declare dso_local i32 @hns_roce_get_bt_num(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @check_whether_bt_num_3(i32, i32) #1

declare dso_local i64 @check_whether_bt_num_2(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i64*, i32) #1

declare dso_local %struct.TYPE_5__* @hns_roce_alloc_hem(%struct.hns_roce_dev*, i32, i32, i32) #1

declare dso_local i32 @hns_roce_hem_first(%struct.TYPE_5__*, %struct.hns_roce_hem_iter*) #1

declare dso_local i64 @hns_roce_hem_addr(%struct.hns_roce_hem_iter*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i64*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
