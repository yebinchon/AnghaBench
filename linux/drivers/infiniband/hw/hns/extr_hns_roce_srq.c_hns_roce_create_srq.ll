; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_srq.c_hns_roce_create_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_srq.c_hns_roce_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32, i32 }
%struct.ib_srq_init_attr = type { %struct.TYPE_13__, i32, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.ib_udata = type { i32 }
%struct.hns_roce_dev = type { i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.hns_roce_ib_create_srq_resp = type { i32 }
%struct.hns_roce_srq = type { i32, i32, i32, i32, %struct.TYPE_16__, i64, %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@HNS_ROCE_IDX_QUE_ENTRY_SZ = common dso_local global i32 0, align 4
@MTT_TYPE_SRQWQE = common dso_local global i32 0, align 4
@MTT_TYPE_IDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Create user srq failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Create kernel srq failed\0A\00", align 1
@SRQ_DB_REG = common dso_local global i64 0, align 8
@hns_roce_ib_srq_event = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_create_srq(%struct.ib_srq* %0, %struct.ib_srq_init_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_srq*, align 8
  %6 = alloca %struct.ib_srq_init_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.hns_roce_dev*, align 8
  %9 = alloca %struct.hns_roce_ib_create_srq_resp, align 4
  %10 = alloca %struct.hns_roce_srq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ib_srq* %0, %struct.ib_srq** %5, align 8
  store %struct.ib_srq_init_attr* %1, %struct.ib_srq_init_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %15 = load %struct.ib_srq*, %struct.ib_srq** %5, align 8
  %16 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.hns_roce_dev* @to_hr_dev(i32 %17)
  store %struct.hns_roce_dev* %18, %struct.hns_roce_dev** %8, align 8
  %19 = bitcast %struct.hns_roce_ib_create_srq_resp* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  %20 = load %struct.ib_srq*, %struct.ib_srq** %5, align 8
  %21 = call %struct.hns_roce_srq* @to_hr_srq(%struct.ib_srq* %20)
  store %struct.hns_roce_srq* %21, %struct.hns_roce_srq** %10, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %23 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %27 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %25, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %3
  %32 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %33 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %37 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %35, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %31, %3
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %212

44:                                               ; preds = %31
  %45 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %10, align 8
  %46 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %45, i32 0, i32 9
  %47 = call i32 @mutex_init(i32* %46)
  %48 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %10, align 8
  %49 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %48, i32 0, i32 8
  %50 = call i32 @spin_lock_init(i32* %49)
  %51 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %52 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  %56 = call i32 @roundup_pow_of_two(i64 %55)
  %57 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %10, align 8
  %58 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %60 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %10, align 8
  %65 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %10, align 8
  %67 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 16, %68
  %70 = call i32 @max(i32 16, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @ilog2(i32 %71)
  %73 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %10, align 8
  %74 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %73, i32 0, i32 7
  store i32 %72, i32* %74, align 4
  %75 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %10, align 8
  %76 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = mul nsw i32 %77, %78
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* @HNS_ROCE_IDX_QUE_ENTRY_SZ, align 4
  %81 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %10, align 8
  %82 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %10, align 8
  %85 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %10, align 8
  %88 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = mul nsw i32 %86, %90
  %92 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %10, align 8
  %93 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* @MTT_TYPE_SRQWQE, align 4
  %96 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %10, align 8
  %97 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load i32, i32* @MTT_TYPE_IDX, align 4
  %100 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %10, align 8
  %101 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  store i32 %99, i32* %103, align 8
  %104 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %105 = icmp ne %struct.ib_udata* %104, null
  br i1 %105, label %106, label %119

106:                                              ; preds = %44
  %107 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %10, align 8
  %108 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @create_user_srq(%struct.hns_roce_srq* %107, %struct.ib_udata* %108, i32 %109)
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %115 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @dev_err(i32 %116, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %210

118:                                              ; preds = %106
  br label %131

119:                                              ; preds = %44
  %120 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %10, align 8
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @create_kernel_srq(%struct.hns_roce_srq* %120, i32 %121)
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %127 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @dev_err(i32 %128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %210

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %130, %118
  %132 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %133 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @ib_srq_has_cq(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %131
  %138 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %139 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call %struct.TYPE_15__* @to_hr_cq(i32 %141)
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  br label %146

145:                                              ; preds = %131
  br label %146

146:                                              ; preds = %145, %137
  %147 = phi i32 [ %144, %137 ], [ 0, %145 ]
  store i32 %147, i32* %14, align 4
  %148 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %149 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @SRQ_DB_REG, align 8
  %152 = add nsw i64 %150, %151
  %153 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %10, align 8
  %154 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %153, i32 0, i32 5
  store i64 %152, i64* %154, align 8
  %155 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %156 = load %struct.ib_srq*, %struct.ib_srq** %5, align 8
  %157 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call %struct.TYPE_14__* @to_hr_pd(i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %14, align 4
  %163 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %10, align 8
  %164 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %163, i32 0, i32 4
  %165 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %10, align 8
  %166 = call i32 @hns_roce_srq_alloc(%struct.hns_roce_dev* %155, i32 %161, i32 %162, i32 0, %struct.TYPE_16__* %164, i32 0, %struct.hns_roce_srq* %165)
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %146
  br label %197

170:                                              ; preds = %146
  %171 = load i32, i32* @hns_roce_ib_srq_event, align 4
  %172 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %10, align 8
  %173 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 4
  %174 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %10, align 8
  %175 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = getelementptr inbounds %struct.hns_roce_ib_create_srq_resp, %struct.hns_roce_ib_create_srq_resp* %9, i32 0, i32 0
  store i32 %176, i32* %177, align 4
  %178 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %179 = icmp ne %struct.ib_udata* %178, null
  br i1 %179, label %180, label %192

180:                                              ; preds = %170
  %181 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %182 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %183 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @min(i32 %184, i32 4)
  %186 = call i64 @ib_copy_to_udata(%struct.ib_udata* %181, %struct.hns_roce_ib_create_srq_resp* %9, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %180
  %189 = load i32, i32* @EFAULT, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %13, align 4
  br label %193

191:                                              ; preds = %180
  br label %192

192:                                              ; preds = %191, %170
  store i32 0, i32* %4, align 4
  br label %212

193:                                              ; preds = %188
  %194 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %195 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %10, align 8
  %196 = call i32 @hns_roce_srq_free(%struct.hns_roce_dev* %194, %struct.hns_roce_srq* %195)
  br label %197

197:                                              ; preds = %193, %169
  %198 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %199 = icmp ne %struct.ib_udata* %198, null
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %202 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %10, align 8
  %203 = call i32 @destroy_user_srq(%struct.hns_roce_dev* %201, %struct.hns_roce_srq* %202)
  br label %209

204:                                              ; preds = %197
  %205 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %206 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %10, align 8
  %207 = load i32, i32* %12, align 4
  %208 = call i32 @destroy_kernel_srq(%struct.hns_roce_dev* %205, %struct.hns_roce_srq* %206, i32 %207)
  br label %209

209:                                              ; preds = %204, %200
  br label %210

210:                                              ; preds = %209, %125, %113
  %211 = load i32, i32* %13, align 4
  store i32 %211, i32* %4, align 4
  br label %212

212:                                              ; preds = %210, %192, %41
  %213 = load i32, i32* %4, align 4
  ret i32 %213
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.hns_roce_srq* @to_hr_srq(%struct.ib_srq*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @roundup_pow_of_two(i64) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @create_user_srq(%struct.hns_roce_srq*, %struct.ib_udata*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @create_kernel_srq(%struct.hns_roce_srq*, i32) #1

declare dso_local i64 @ib_srq_has_cq(i32) #1

declare dso_local %struct.TYPE_15__* @to_hr_cq(i32) #1

declare dso_local i32 @hns_roce_srq_alloc(%struct.hns_roce_dev*, i32, i32, i32, %struct.TYPE_16__*, i32, %struct.hns_roce_srq*) #1

declare dso_local %struct.TYPE_14__* @to_hr_pd(i32) #1

declare dso_local i64 @ib_copy_to_udata(%struct.ib_udata*, %struct.hns_roce_ib_create_srq_resp*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @hns_roce_srq_free(%struct.hns_roce_dev*, %struct.hns_roce_srq*) #1

declare dso_local i32 @destroy_user_srq(%struct.hns_roce_dev*, %struct.hns_roce_srq*) #1

declare dso_local i32 @destroy_kernel_srq(%struct.hns_roce_dev*, %struct.hns_roce_srq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
