; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_db_ext_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_db_ext_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hns_roce_v1_priv = type { %struct.hns_roce_db_table }
%struct.hns_roce_db_table = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, i8*, i8*, %struct.TYPE_4__*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HNS_ROCE_V1_EXT_SDB_SIZE = common dso_local global i32 0, align 4
@HNS_ROCE_V1_EXT_SDB_DEPTH = common dso_local global i32 0, align 4
@HNS_ROCE_V1_EXT_SDB_ALEPT = common dso_local global i32 0, align 4
@HNS_ROCE_V1_EXT_SDB_ALFUL = common dso_local global i32 0, align 4
@HNS_ROCE_V1_SDB_ALEPT = common dso_local global i32 0, align 4
@HNS_ROCE_V1_SDB_ALFUL = common dso_local global i32 0, align 4
@HNS_ROCE_V1_EXT_ODB_SIZE = common dso_local global i32 0, align 4
@HNS_ROCE_V1_EXT_ODB_DEPTH = common dso_local global i32 0, align 4
@HNS_ROCE_V1_EXT_ODB_ALEPT = common dso_local global i32 0, align 4
@HNS_ROCE_V1_EXT_ODB_ALFUL = common dso_local global i32 0, align 4
@HNS_ROCE_V1_ODB_ALEPT = common dso_local global i32 0, align 4
@HNS_ROCE_V1_ODB_ALFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i64, i64)* @hns_roce_db_ext_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_db_ext_init(%struct.hns_roce_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.hns_roce_v1_priv*, align 8
  %10 = alloca %struct.hns_roce_db_table*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %15 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %8, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %19 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.hns_roce_v1_priv*
  store %struct.hns_roce_v1_priv* %21, %struct.hns_roce_v1_priv** %9, align 8
  %22 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %9, align 8
  %23 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %22, i32 0, i32 0
  store %struct.hns_roce_db_table* %23, %struct.hns_roce_db_table** %10, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kmalloc(i32 48, i32 %24)
  %26 = bitcast i8* %25 to %struct.TYPE_4__*
  %27 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %10, align 8
  %28 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %27, i32 0, i32 0
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %28, align 8
  %29 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %10, align 8
  %30 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %217

36:                                               ; preds = %3
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %96

39:                                               ; preds = %36
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kmalloc(i32 48, i32 %40)
  %42 = bitcast i8* %41 to %struct.TYPE_4__*
  %43 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %10, align 8
  %44 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %46, align 8
  %47 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %10, align 8
  %48 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = icmp ne %struct.TYPE_4__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %39
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %13, align 4
  br label %211

56:                                               ; preds = %39
  %57 = load %struct.device*, %struct.device** %8, align 8
  %58 = load i32, i32* @HNS_ROCE_V1_EXT_SDB_SIZE, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @dma_alloc_coherent(%struct.device* %57, i32 %58, i8** %11, i32 %59)
  %61 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %10, align 8
  %62 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i8* %60, i8** %66, align 8
  %67 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %10, align 8
  %68 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %56
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %13, align 4
  br label %200

78:                                               ; preds = %56
  %79 = load i8*, i8** %11, align 8
  %80 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %10, align 8
  %81 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i8* %79, i8** %85, align 8
  %86 = load i32, i32* @HNS_ROCE_V1_EXT_SDB_DEPTH, align 4
  %87 = call i8* @ilog2(i32 %86)
  %88 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %10, align 8
  %89 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 5
  store i8* %87, i8** %91, align 8
  %92 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %93 = load i32, i32* @HNS_ROCE_V1_EXT_SDB_ALEPT, align 4
  %94 = load i32, i32* @HNS_ROCE_V1_EXT_SDB_ALFUL, align 4
  %95 = call i32 @hns_roce_set_sdb_ext(%struct.hns_roce_dev* %92, i32 %93, i32 %94)
  br label %101

96:                                               ; preds = %36
  %97 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %98 = load i32, i32* @HNS_ROCE_V1_SDB_ALEPT, align 4
  %99 = load i32, i32* @HNS_ROCE_V1_SDB_ALFUL, align 4
  %100 = call i32 @hns_roce_set_sdb(%struct.hns_roce_dev* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %78
  %102 = load i64, i64* %7, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %161

104:                                              ; preds = %101
  %105 = load i32, i32* @GFP_KERNEL, align 4
  %106 = call i8* @kmalloc(i32 48, i32 %105)
  %107 = bitcast i8* %106 to %struct.TYPE_4__*
  %108 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %10, align 8
  %109 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 3
  store %struct.TYPE_4__* %107, %struct.TYPE_4__** %111, align 8
  %112 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %10, align 8
  %113 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = icmp ne %struct.TYPE_4__* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %104
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %13, align 4
  br label %178

121:                                              ; preds = %104
  %122 = load %struct.device*, %struct.device** %8, align 8
  %123 = load i32, i32* @HNS_ROCE_V1_EXT_ODB_SIZE, align 4
  %124 = load i32, i32* @GFP_KERNEL, align 4
  %125 = call i8* @dma_alloc_coherent(%struct.device* %122, i32 %123, i8** %12, i32 %124)
  %126 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %10, align 8
  %127 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  store i8* %125, i8** %131, align 8
  %132 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %10, align 8
  %133 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %121
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %13, align 4
  br label %171

143:                                              ; preds = %121
  %144 = load i8*, i8** %12, align 8
  %145 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %10, align 8
  %146 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %145, i32 0, i32 0
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  store i8* %144, i8** %150, align 8
  %151 = load i32, i32* @HNS_ROCE_V1_EXT_ODB_DEPTH, align 4
  %152 = call i8* @ilog2(i32 %151)
  %153 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %10, align 8
  %154 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %153, i32 0, i32 0
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 4
  store i8* %152, i8** %156, align 8
  %157 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %158 = load i32, i32* @HNS_ROCE_V1_EXT_ODB_ALEPT, align 4
  %159 = load i32, i32* @HNS_ROCE_V1_EXT_ODB_ALFUL, align 4
  %160 = call i32 @hns_roce_set_odb_ext(%struct.hns_roce_dev* %157, i32 %158, i32 %159)
  br label %166

161:                                              ; preds = %101
  %162 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %163 = load i32, i32* @HNS_ROCE_V1_ODB_ALEPT, align 4
  %164 = load i32, i32* @HNS_ROCE_V1_ODB_ALFUL, align 4
  %165 = call i32 @hns_roce_set_odb(%struct.hns_roce_dev* %162, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %161, %143
  %167 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %168 = load i64, i64* %6, align 8
  %169 = load i64, i64* %7, align 8
  %170 = call i32 @hns_roce_set_db_ext_mode(%struct.hns_roce_dev* %167, i64 %168, i64 %169)
  store i32 0, i32* %4, align 4
  br label %217

171:                                              ; preds = %140
  %172 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %10, align 8
  %173 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %172, i32 0, i32 0
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = call i32 @kfree(%struct.TYPE_4__* %176)
  br label %178

178:                                              ; preds = %171, %118
  %179 = load i64, i64* %6, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %199

181:                                              ; preds = %178
  %182 = load %struct.device*, %struct.device** %8, align 8
  %183 = load i32, i32* @HNS_ROCE_V1_EXT_SDB_SIZE, align 4
  %184 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %10, align 8
  %185 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %184, i32 0, i32 0
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 2
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %10, align 8
  %192 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %191, i32 0, i32 0
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @dma_free_coherent(%struct.device* %182, i32 %183, i8* %190, i8* %197)
  br label %199

199:                                              ; preds = %181, %178
  br label %200

200:                                              ; preds = %199, %75
  %201 = load i64, i64* %6, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %200
  %204 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %10, align 8
  %205 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %204, i32 0, i32 0
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = call i32 @kfree(%struct.TYPE_4__* %208)
  br label %210

210:                                              ; preds = %203, %200
  br label %211

211:                                              ; preds = %210, %53
  %212 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %10, align 8
  %213 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %212, i32 0, i32 0
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = call i32 @kfree(%struct.TYPE_4__* %214)
  %216 = load i32, i32* %13, align 4
  store i32 %216, i32* %4, align 4
  br label %217

217:                                              ; preds = %211, %166, %33
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i8**, i32) #1

declare dso_local i8* @ilog2(i32) #1

declare dso_local i32 @hns_roce_set_sdb_ext(%struct.hns_roce_dev*, i32, i32) #1

declare dso_local i32 @hns_roce_set_sdb(%struct.hns_roce_dev*, i32, i32) #1

declare dso_local i32 @hns_roce_set_odb_ext(%struct.hns_roce_dev*, i32, i32) #1

declare dso_local i32 @hns_roce_set_odb(%struct.hns_roce_dev*, i32, i32) #1

declare dso_local i32 @hns_roce_set_db_ext_mode(%struct.hns_roce_dev*, i64, i64) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
