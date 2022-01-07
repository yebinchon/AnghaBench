; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_init_link_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_init_link_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_5__, %struct.device*, %struct.hns_roce_v2_priv* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.hns_roce_v2_priv = type { %struct.hns_roce_link_table, %struct.hns_roce_link_table }
%struct.hns_roce_link_table = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, %struct.hns_roce_link_table_entry* }
%struct.hns_roce_link_table_entry = type { i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.hns_roce_link_table_entry* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@HNS_ROCE_LINK_TABLE_NXT_PTR_S = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i32)* @hns_roce_init_link_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_init_link_table(%struct.hns_roce_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_roce_v2_priv*, align 8
  %7 = alloca %struct.hns_roce_link_table*, align 8
  %8 = alloca %struct.hns_roce_link_table_entry*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %19 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %18, i32 0, i32 2
  %20 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %19, align 8
  store %struct.hns_roce_v2_priv* %20, %struct.hns_roce_v2_priv** %6, align 8
  %21 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %22 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %21, i32 0, i32 1
  %23 = load %struct.device*, %struct.device** %22, align 8
  store %struct.device* %23, %struct.device** %9, align 8
  store i32 1, i32* %12, align 4
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %68 [
    i32 128, label %25
    i32 129, label %48
  ]

25:                                               ; preds = %2
  %26 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %6, align 8
  %27 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %26, i32 0, i32 1
  store %struct.hns_roce_link_table* %27, %struct.hns_roce_link_table** %7, align 8
  %28 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %29 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = add nsw i32 %31, %32
  %34 = shl i32 1, %33
  store i32 %34, i32* %10, align 4
  %35 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %36 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 8
  %40 = load i32, i32* %10, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %13, align 4
  %42 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %43 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %45, 4
  %47 = add nsw i32 %46, 2
  store i32 %47, i32* %14, align 4
  br label %71

48:                                               ; preds = %2
  %49 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %6, align 8
  %50 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %49, i32 0, i32 0
  store %struct.hns_roce_link_table* %50, %struct.hns_roce_link_table** %7, align 8
  %51 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %52 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PAGE_SHIFT, align 4
  %56 = add nsw i32 %54, %55
  %57 = shl i32 1, %56
  store i32 %57, i32* %10, align 4
  %58 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %59 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %61, 4
  %63 = load i32, i32* %10, align 4
  %64 = sdiv i32 %62, %63
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %12, align 4
  %66 = mul nsw i32 8, %65
  %67 = add nsw i32 %66, 2
  store i32 %67, i32* %14, align 4
  br label %71

68:                                               ; preds = %2
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %241

71:                                               ; preds = %48, %25
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @max(i32 %72, i32 %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %16, align 4
  %79 = load %struct.device*, %struct.device** %9, align 8
  %80 = load i32, i32* %16, align 4
  %81 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %7, align 8
  %82 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i8* @dma_alloc_coherent(%struct.device* %79, i32 %80, i32* %83, i32 %84)
  %86 = bitcast i8* %85 to %struct.hns_roce_link_table_entry*
  %87 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %7, align 8
  %88 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store %struct.hns_roce_link_table_entry* %86, %struct.hns_roce_link_table_entry** %89, align 8
  %90 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %7, align 8
  %91 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load %struct.hns_roce_link_table_entry*, %struct.hns_roce_link_table_entry** %92, align 8
  %94 = icmp ne %struct.hns_roce_link_table_entry* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %71
  br label %238

96:                                               ; preds = %71
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call %struct.TYPE_7__* @kcalloc(i32 %97, i32 16, i32 %98)
  %100 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %7, align 8
  %101 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %100, i32 0, i32 3
  store %struct.TYPE_7__* %99, %struct.TYPE_7__** %101, align 8
  %102 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %7, align 8
  %103 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %102, i32 0, i32 3
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = icmp ne %struct.TYPE_7__* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %96
  br label %226

107:                                              ; preds = %96
  %108 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %7, align 8
  %109 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load %struct.hns_roce_link_table_entry*, %struct.hns_roce_link_table_entry** %110, align 8
  store %struct.hns_roce_link_table_entry* %111, %struct.hns_roce_link_table_entry** %8, align 8
  store i32 0, i32* %17, align 4
  br label %112

112:                                              ; preds = %179, %107
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %15, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %182

116:                                              ; preds = %112
  %117 = load %struct.device*, %struct.device** %9, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @GFP_KERNEL, align 4
  %120 = call i8* @dma_alloc_coherent(%struct.device* %117, i32 %118, i32* %11, i32 %119)
  %121 = bitcast i8* %120 to %struct.hns_roce_link_table_entry*
  %122 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %7, align 8
  %123 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %122, i32 0, i32 3
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = load i32, i32* %17, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  store %struct.hns_roce_link_table_entry* %121, %struct.hns_roce_link_table_entry** %128, align 8
  %129 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %7, align 8
  %130 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %129, i32 0, i32 3
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = load i32, i32* %17, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load %struct.hns_roce_link_table_entry*, %struct.hns_roce_link_table_entry** %135, align 8
  %137 = icmp ne %struct.hns_roce_link_table_entry* %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %116
  br label %192

139:                                              ; preds = %116
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %7, align 8
  %142 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %141, i32 0, i32 3
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = load i32, i32* %17, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  store i32 %140, i32* %147, align 8
  %148 = load i32, i32* %11, align 4
  %149 = ashr i32 %148, 12
  %150 = load %struct.hns_roce_link_table_entry*, %struct.hns_roce_link_table_entry** %8, align 8
  %151 = load i32, i32* %17, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.hns_roce_link_table_entry, %struct.hns_roce_link_table_entry* %150, i64 %152
  %154 = getelementptr inbounds %struct.hns_roce_link_table_entry, %struct.hns_roce_link_table_entry* %153, i32 0, i32 0
  store i32 %149, i32* %154, align 4
  %155 = load i32, i32* %11, align 4
  %156 = ashr i32 %155, 44
  %157 = load %struct.hns_roce_link_table_entry*, %struct.hns_roce_link_table_entry** %8, align 8
  %158 = load i32, i32* %17, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.hns_roce_link_table_entry, %struct.hns_roce_link_table_entry* %157, i64 %159
  %161 = getelementptr inbounds %struct.hns_roce_link_table_entry, %struct.hns_roce_link_table_entry* %160, i32 0, i32 1
  store i32 %156, i32* %161, align 4
  %162 = load i32, i32* %17, align 4
  %163 = load i32, i32* %15, align 4
  %164 = sub nsw i32 %163, 1
  %165 = icmp slt i32 %162, %164
  br i1 %165, label %166, label %178

166:                                              ; preds = %139
  %167 = load i32, i32* %17, align 4
  %168 = add nsw i32 %167, 1
  %169 = load i32, i32* @HNS_ROCE_LINK_TABLE_NXT_PTR_S, align 4
  %170 = shl i32 %168, %169
  %171 = load %struct.hns_roce_link_table_entry*, %struct.hns_roce_link_table_entry** %8, align 8
  %172 = load i32, i32* %17, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.hns_roce_link_table_entry, %struct.hns_roce_link_table_entry* %171, i64 %173
  %175 = getelementptr inbounds %struct.hns_roce_link_table_entry, %struct.hns_roce_link_table_entry* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %170
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %166, %139
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %17, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %17, align 4
  br label %112

182:                                              ; preds = %112
  %183 = load i32, i32* %15, align 4
  %184 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %7, align 8
  %185 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  %186 = load i32, i32* %10, align 4
  %187 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %7, align 8
  %188 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %190 = load i32, i32* %5, align 4
  %191 = call i32 @hns_roce_config_link_table(%struct.hns_roce_dev* %189, i32 %190)
  store i32 %191, i32* %3, align 4
  br label %241

192:                                              ; preds = %138
  %193 = load i32, i32* %17, align 4
  %194 = sub nsw i32 %193, 1
  store i32 %194, i32* %17, align 4
  br label %195

195:                                              ; preds = %218, %192
  %196 = load i32, i32* %17, align 4
  %197 = icmp sge i32 %196, 0
  br i1 %197, label %198, label %221

198:                                              ; preds = %195
  %199 = load %struct.device*, %struct.device** %9, align 8
  %200 = load i32, i32* %10, align 4
  %201 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %7, align 8
  %202 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %201, i32 0, i32 3
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %202, align 8
  %204 = load i32, i32* %17, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 1
  %208 = load %struct.hns_roce_link_table_entry*, %struct.hns_roce_link_table_entry** %207, align 8
  %209 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %7, align 8
  %210 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %209, i32 0, i32 3
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %210, align 8
  %212 = load i32, i32* %17, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @dma_free_coherent(%struct.device* %199, i32 %200, %struct.hns_roce_link_table_entry* %208, i32 %216)
  br label %218

218:                                              ; preds = %198
  %219 = load i32, i32* %17, align 4
  %220 = add nsw i32 %219, -1
  store i32 %220, i32* %17, align 4
  br label %195

221:                                              ; preds = %195
  %222 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %7, align 8
  %223 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %222, i32 0, i32 3
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = call i32 @kfree(%struct.TYPE_7__* %224)
  br label %226

226:                                              ; preds = %221, %106
  %227 = load %struct.device*, %struct.device** %9, align 8
  %228 = load i32, i32* %16, align 4
  %229 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %7, align 8
  %230 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  %232 = load %struct.hns_roce_link_table_entry*, %struct.hns_roce_link_table_entry** %231, align 8
  %233 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %7, align 8
  %234 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @dma_free_coherent(%struct.device* %227, i32 %228, %struct.hns_roce_link_table_entry* %232, i32 %236)
  br label %238

238:                                              ; preds = %226, %95
  %239 = load i32, i32* @ENOMEM, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %3, align 4
  br label %241

241:                                              ; preds = %238, %182, %68
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local %struct.TYPE_7__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @hns_roce_config_link_table(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, %struct.hns_roce_link_table_entry*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
