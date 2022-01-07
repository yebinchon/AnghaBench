; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_table_mhop_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_table_mhop_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_4__*, %struct.device* }
%struct.TYPE_4__ = type { i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)* }
%struct.device = type { i32 }
%struct.hns_roce_hem_table = type { i64, i32, i32**, i32*, i32**, i32*, i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i64 }
%struct.hns_roce_hem_mhop = type { i32, i32, i32, i32, i32 }

@BA_BYTE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Table %d not support hop_num = %d!\0A\00", align 1
@HEM_TYPE_MTT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Clear HEM base address failed.\0A\00", align 1
@HNS_ROCE_HOP_NUM_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)* @hns_roce_table_mhop_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_table_mhop_put(%struct.hns_roce_dev* %0, %struct.hns_roce_hem_table* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca %struct.hns_roce_hem_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.hns_roce_hem_mhop, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store %struct.hns_roce_hem_table* %1, %struct.hns_roce_hem_table** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %21 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %20, i32 0, i32 1
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %9, align 8
  %23 = load i64, i64* %7, align 8
  store i64 %23, i64* %11, align 8
  store i64 0, i64* %18, align 8
  %24 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %25 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %26 = call i32 @hns_roce_calc_hem_mhop(%struct.hns_roce_dev* %24, %struct.hns_roce_hem_table* %25, i64* %11, %struct.hns_roce_hem_mhop* %10)
  store i32 %26, i32* %19, align 4
  %27 = load i32, i32* %19, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %390

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %10, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @BA_BYTE_LEN, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %13, align 4
  %38 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %39 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @hns_roce_get_bt_num(i64 %40, i32 %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  switch i32 %43, label %81 [
    i32 3, label %44
    i32 2, label %68
    i32 1, label %77
  ]

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %10, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %13, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %13, align 4
  %50 = mul nsw i32 %48, %49
  %51 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %10, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %13, align 4
  %54 = mul nsw i32 %52, %53
  %55 = add nsw i32 %50, %54
  %56 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %10, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %55, %57
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %17, align 8
  %60 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %10, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %13, align 4
  %63 = mul nsw i32 %61, %62
  %64 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %10, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %63, %65
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %18, align 8
  br label %88

68:                                               ; preds = %30
  %69 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %10, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %13, align 4
  %72 = mul nsw i32 %70, %71
  %73 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %10, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %72, %74
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %17, align 8
  br label %88

77:                                               ; preds = %30
  %78 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %10, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %17, align 8
  br label %88

81:                                               ; preds = %30
  %82 = load %struct.device*, %struct.device** %9, align 8
  %83 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %84 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %85, i32 %86)
  br label %390

88:                                               ; preds = %77, %68, %44
  %89 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %90 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %89, i32 0, i32 1
  %91 = call i32 @mutex_lock(i32* %90)
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %88
  %95 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %96 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %95, i32 0, i32 7
  %97 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %96, align 8
  %98 = load i64, i64* %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %97, i64 %98
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, -1
  store i64 %103, i64* %101, align 8
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %94
  %106 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %107 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %106, i32 0, i32 1
  %108 = call i32 @mutex_unlock(i32* %107)
  br label %390

109:                                              ; preds = %94, %88
  %110 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %111 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @HEM_TYPE_MTT, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %115, label %133

115:                                              ; preds = %109
  %116 = load i32, i32* %14, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %133

118:                                              ; preds = %115
  %119 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %120 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)*, i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)** %122, align 8
  %124 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %125 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %126 = load i64, i64* %7, align 8
  %127 = call i64 %123(%struct.hns_roce_dev* %124, %struct.hns_roce_hem_table* %125, i64 %126, i32 1)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %118
  %130 = load %struct.device*, %struct.device** %9, align 8
  %131 = call i32 @dev_warn(%struct.device* %130, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %118
  br label %184

133:                                              ; preds = %115, %109
  %134 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %135 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @HEM_TYPE_MTT, align 8
  %138 = icmp slt i64 %136, %137
  br i1 %138, label %139, label %157

139:                                              ; preds = %133
  %140 = load i32, i32* %14, align 4
  %141 = icmp eq i32 %140, 2
  br i1 %141, label %142, label %157

142:                                              ; preds = %139
  %143 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %144 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)*, i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)** %146, align 8
  %148 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %149 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %150 = load i64, i64* %7, align 8
  %151 = call i64 %147(%struct.hns_roce_dev* %148, %struct.hns_roce_hem_table* %149, i64 %150, i32 2)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %142
  %154 = load %struct.device*, %struct.device** %9, align 8
  %155 = call i32 @dev_warn(%struct.device* %154, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %142
  br label %183

157:                                              ; preds = %139, %133
  %158 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %159 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @HEM_TYPE_MTT, align 8
  %162 = icmp slt i64 %160, %161
  br i1 %162, label %163, label %182

163:                                              ; preds = %157
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* @HNS_ROCE_HOP_NUM_0, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %182

167:                                              ; preds = %163
  %168 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %169 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %168, i32 0, i32 0
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)*, i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)** %171, align 8
  %173 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %174 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %175 = load i64, i64* %7, align 8
  %176 = call i64 %172(%struct.hns_roce_dev* %173, %struct.hns_roce_hem_table* %174, i64 %175, i32 0)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %167
  %179 = load %struct.device*, %struct.device** %9, align 8
  %180 = call i32 @dev_warn(%struct.device* %179, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %181

181:                                              ; preds = %178, %167
  br label %182

182:                                              ; preds = %181, %163, %157
  br label %183

183:                                              ; preds = %182, %156
  br label %184

184:                                              ; preds = %183, %132
  %185 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %186 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %187 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %186, i32 0, i32 7
  %188 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %187, align 8
  %189 = load i64, i64* %17, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %188, i64 %189
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %190, align 8
  %192 = call i32 @hns_roce_free_hem(%struct.hns_roce_dev* %185, %struct.TYPE_5__* %191)
  %193 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %194 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %193, i32 0, i32 7
  %195 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %194, align 8
  %196 = load i64, i64* %17, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %195, i64 %196
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %197, align 8
  %198 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %199 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i32, i32* %14, align 4
  %202 = call i64 @check_whether_bt_num_2(i64 %200, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %267

204:                                              ; preds = %184
  %205 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %10, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %13, align 4
  %208 = mul nsw i32 %206, %207
  store i32 %208, i32* %15, align 4
  %209 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %210 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %209, i32 0, i32 7
  %211 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %210, align 8
  %212 = load i32, i32* %15, align 4
  %213 = load i32, i32* %13, align 4
  %214 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %215 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 8
  %217 = call i64 @hns_roce_check_hem_null(%struct.TYPE_5__** %211, i32 %212, i32 %213, i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %266

219:                                              ; preds = %204
  %220 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %221 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @HEM_TYPE_MTT, align 8
  %224 = icmp slt i64 %222, %223
  br i1 %224, label %225, label %239

225:                                              ; preds = %219
  %226 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %227 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %226, i32 0, i32 0
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = load i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)*, i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)** %229, align 8
  %231 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %232 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %233 = load i64, i64* %7, align 8
  %234 = call i64 %230(%struct.hns_roce_dev* %231, %struct.hns_roce_hem_table* %232, i64 %233, i32 0)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %225
  %237 = load %struct.device*, %struct.device** %9, align 8
  %238 = call i32 @dev_warn(%struct.device* %237, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %239

239:                                              ; preds = %236, %225, %219
  %240 = load %struct.device*, %struct.device** %9, align 8
  %241 = load i32, i32* %12, align 4
  %242 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %243 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %242, i32 0, i32 2
  %244 = load i32**, i32*** %243, align 8
  %245 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %10, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32*, i32** %244, i64 %247
  %249 = load i32*, i32** %248, align 8
  %250 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %251 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %250, i32 0, i32 3
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %10, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %252, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @dma_free_coherent(%struct.device* %240, i32 %241, i32* %249, i32 %257)
  %259 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %260 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %259, i32 0, i32 2
  %261 = load i32**, i32*** %260, align 8
  %262 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %10, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32*, i32** %261, i64 %264
  store i32* null, i32** %265, align 8
  br label %266

266:                                              ; preds = %239, %204
  br label %386

267:                                              ; preds = %184
  %268 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %269 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i32, i32* %14, align 4
  %272 = call i64 @check_whether_bt_num_3(i64 %270, i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %385

274:                                              ; preds = %267
  %275 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %10, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %13, align 4
  %278 = mul nsw i32 %276, %277
  %279 = load i32, i32* %13, align 4
  %280 = mul nsw i32 %278, %279
  %281 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %10, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %13, align 4
  %284 = mul nsw i32 %282, %283
  %285 = add nsw i32 %280, %284
  store i32 %285, i32* %15, align 4
  %286 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %287 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %286, i32 0, i32 7
  %288 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %287, align 8
  %289 = load i32, i32* %15, align 4
  %290 = load i32, i32* %13, align 4
  %291 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %292 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %291, i32 0, i32 6
  %293 = load i32, i32* %292, align 8
  %294 = call i64 @hns_roce_check_hem_null(%struct.TYPE_5__** %288, i32 %289, i32 %290, i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %384

296:                                              ; preds = %274
  %297 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %298 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %297, i32 0, i32 0
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 0
  %301 = load i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)*, i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)** %300, align 8
  %302 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %303 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %304 = load i64, i64* %7, align 8
  %305 = call i64 %301(%struct.hns_roce_dev* %302, %struct.hns_roce_hem_table* %303, i64 %304, i32 1)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %296
  %308 = load %struct.device*, %struct.device** %9, align 8
  %309 = call i32 @dev_warn(%struct.device* %308, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %310

310:                                              ; preds = %307, %296
  %311 = load %struct.device*, %struct.device** %9, align 8
  %312 = load i32, i32* %12, align 4
  %313 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %314 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %313, i32 0, i32 4
  %315 = load i32**, i32*** %314, align 8
  %316 = load i64, i64* %18, align 8
  %317 = getelementptr inbounds i32*, i32** %315, i64 %316
  %318 = load i32*, i32** %317, align 8
  %319 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %320 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %319, i32 0, i32 5
  %321 = load i32*, i32** %320, align 8
  %322 = load i64, i64* %18, align 8
  %323 = getelementptr inbounds i32, i32* %321, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @dma_free_coherent(%struct.device* %311, i32 %312, i32* %318, i32 %324)
  %326 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %327 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %326, i32 0, i32 4
  %328 = load i32**, i32*** %327, align 8
  %329 = load i64, i64* %18, align 8
  %330 = getelementptr inbounds i32*, i32** %328, i64 %329
  store i32* null, i32** %330, align 8
  %331 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %10, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* %13, align 4
  %334 = mul nsw i32 %332, %333
  store i32 %334, i32* %15, align 4
  %335 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %336 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %335, i32 0, i32 4
  %337 = load i32**, i32*** %336, align 8
  %338 = load i32, i32* %15, align 4
  %339 = load i32, i32* %13, align 4
  %340 = call i64 @hns_roce_check_bt_null(i32** %337, i32 %338, i32 %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %383

342:                                              ; preds = %310
  %343 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %344 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %343, i32 0, i32 0
  %345 = load %struct.TYPE_4__*, %struct.TYPE_4__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 0
  %347 = load i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)*, i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)** %346, align 8
  %348 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %349 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %350 = load i64, i64* %7, align 8
  %351 = call i64 %347(%struct.hns_roce_dev* %348, %struct.hns_roce_hem_table* %349, i64 %350, i32 0)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %342
  %354 = load %struct.device*, %struct.device** %9, align 8
  %355 = call i32 @dev_warn(%struct.device* %354, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %356

356:                                              ; preds = %353, %342
  %357 = load %struct.device*, %struct.device** %9, align 8
  %358 = load i32, i32* %12, align 4
  %359 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %360 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %359, i32 0, i32 2
  %361 = load i32**, i32*** %360, align 8
  %362 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %10, i32 0, i32 2
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32*, i32** %361, i64 %364
  %366 = load i32*, i32** %365, align 8
  %367 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %368 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %367, i32 0, i32 3
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %10, i32 0, i32 2
  %371 = load i32, i32* %370, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %369, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @dma_free_coherent(%struct.device* %357, i32 %358, i32* %366, i32 %374)
  %376 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %377 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %376, i32 0, i32 2
  %378 = load i32**, i32*** %377, align 8
  %379 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %10, i32 0, i32 2
  %380 = load i32, i32* %379, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32*, i32** %378, i64 %381
  store i32* null, i32** %382, align 8
  br label %383

383:                                              ; preds = %356, %310
  br label %384

384:                                              ; preds = %383, %274
  br label %385

385:                                              ; preds = %384, %267
  br label %386

386:                                              ; preds = %385, %266
  %387 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %388 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %387, i32 0, i32 1
  %389 = call i32 @mutex_unlock(i32* %388)
  br label %390

390:                                              ; preds = %386, %105, %81, %29
  ret void
}

declare dso_local i32 @hns_roce_calc_hem_mhop(%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64*, %struct.hns_roce_hem_mhop*) #1

declare dso_local i32 @hns_roce_get_bt_num(i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @hns_roce_free_hem(%struct.hns_roce_dev*, %struct.TYPE_5__*) #1

declare dso_local i64 @check_whether_bt_num_2(i64, i32) #1

declare dso_local i64 @hns_roce_check_hem_null(%struct.TYPE_5__**, i32, i32, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i64 @check_whether_bt_num_3(i64, i32) #1

declare dso_local i64 @hns_roce_check_bt_null(i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
