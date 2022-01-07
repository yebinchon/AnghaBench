; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_set_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_set_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.mlx5_ib_qp = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.rdma_ah_attr = type { i64, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.mlx5_qp_path = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*, i32, i32, i8* }
%struct.ib_qp_attr = type { i32, i32, i32, i32 }
%struct.ib_global_route = type { i32, i32, %struct.TYPE_13__, i32, i64 }
%struct.TYPE_13__ = type { i32 }

@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"sgid_index (%u) too large. max is %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RDMA_AH_ATTR_TYPE_ROCE = common dso_local global i64 0, align 8
@IB_QPT_RC = common dso_local global i64 0, align 8
@IB_QPT_UC = common dso_local global i64 0, align 8
@IB_QPT_XRC_INI = common dso_local global i64 0, align 8
@IB_QPT_XRC_TGT = common dso_local global i64 0, align 8
@IB_GID_TYPE_ROCE_UDP_ENCAP = common dso_local global i32 0, align 4
@MLX5_PATH_FLAG_FL = common dso_local global i32 0, align 4
@MLX5_PATH_FLAG_FREE_AR = common dso_local global i32 0, align 4
@IB_QP_TIMEOUT = common dso_local global i32 0, align 4
@IB_QPT_RAW_PACKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*, %struct.rdma_ah_attr*, %struct.mlx5_qp_path*, i32, i32, i32, %struct.ib_qp_attr*, i32)* @mlx5_set_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_set_path(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_qp* %1, %struct.rdma_ah_attr* %2, %struct.mlx5_qp_path* %3, i32 %4, i32 %5, i32 %6, %struct.ib_qp_attr* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx5_ib_dev*, align 8
  %12 = alloca %struct.mlx5_ib_qp*, align 8
  %13 = alloca %struct.rdma_ah_attr*, align 8
  %14 = alloca %struct.mlx5_qp_path*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ib_qp_attr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ib_global_route*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %11, align 8
  store %struct.mlx5_ib_qp* %1, %struct.mlx5_ib_qp** %12, align 8
  store %struct.rdma_ah_attr* %2, %struct.rdma_ah_attr** %13, align 8
  store %struct.mlx5_qp_path* %3, %struct.mlx5_qp_path** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.ib_qp_attr* %7, %struct.ib_qp_attr** %18, align 8
  store i32 %8, i32* %19, align 4
  %25 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %13, align 8
  %26 = call %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr* %25)
  store %struct.ib_global_route* %26, %struct.ib_global_route** %20, align 8
  %27 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %13, align 8
  %28 = call i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr* %27)
  store i32 %28, i32* %23, align 4
  %29 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %13, align 8
  %30 = call i32 @rdma_ah_get_sl(%struct.rdma_ah_attr* %29)
  store i32 %30, i32* %24, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %9
  %36 = load i32, i32* %19, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %18, align 8
  %40 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  br label %46

42:                                               ; preds = %35
  %43 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %18, align 8
  %44 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i32 [ %41, %38 ], [ %45, %42 ]
  %48 = call i8* @cpu_to_be16(i32 %47)
  %49 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %50 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %49, i32 0, i32 14
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %46, %9
  %52 = load i32, i32* %23, align 4
  %53 = load i32, i32* @IB_AH_GRH, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %51
  %57 = load %struct.ib_global_route*, %struct.ib_global_route** %20, align 8
  %58 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %61 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %60, i32 0, i32 0
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sge i64 %59, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %56
  %73 = load %struct.ib_global_route*, %struct.ib_global_route** %20, align 8
  %74 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %77 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %75, i64 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %10, align 4
  br label %316

90:                                               ; preds = %56
  br label %91

91:                                               ; preds = %90, %51
  %92 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %13, align 8
  %93 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @RDMA_AH_ATTR_TYPE_ROCE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %174

97:                                               ; preds = %91
  %98 = load i32, i32* %23, align 4
  %99 = load i32, i32* @IB_AH_GRH, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %10, align 4
  br label %316

105:                                              ; preds = %97
  %106 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %107 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %106, i32 0, i32 13
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %13, align 8
  %110 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @memcpy(i32 %108, i32 %112, i32 4)
  %114 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %115 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @IB_QPT_RC, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %141, label %120

120:                                              ; preds = %105
  %121 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %122 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @IB_QPT_UC, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %141, label %127

127:                                              ; preds = %120
  %128 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %129 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @IB_QPT_XRC_INI, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %141, label %134

134:                                              ; preds = %127
  %135 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %136 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @IB_QPT_XRC_TGT, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %134, %127, %120, %105
  %142 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %143 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %13, align 8
  %144 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %145, align 8
  %147 = call i32 @mlx5_get_roce_udp_sport(%struct.mlx5_ib_dev* %142, %struct.TYPE_18__* %146)
  %148 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %149 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %148, i32 0, i32 12
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %141, %134
  %151 = load i32, i32* %24, align 4
  %152 = and i32 %151, 7
  %153 = shl i32 %152, 4
  %154 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %155 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %13, align 8
  %157 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %22, align 4
  %162 = load i32, i32* %22, align 4
  %163 = load i32, i32* @IB_GID_TYPE_ROCE_UDP_ENCAP, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %173

165:                                              ; preds = %150
  %166 = load %struct.ib_global_route*, %struct.ib_global_route** %20, align 8
  %167 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = ashr i32 %168, 2
  %170 = and i32 %169, 63
  %171 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %172 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %165, %150
  br label %217

174:                                              ; preds = %91
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* @MLX5_PATH_FLAG_FL, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i32 128, i32 0
  %181 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %182 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 8
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* @MLX5_PATH_FLAG_FREE_AR, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 64, i32 0
  %189 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %190 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 8
  %193 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %13, align 8
  %194 = call i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %193)
  %195 = call i8* @cpu_to_be16(i32 %194)
  %196 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %197 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %196, i32 0, i32 11
  store i8* %195, i8** %197, align 8
  %198 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %13, align 8
  %199 = call i32 @rdma_ah_get_path_bits(%struct.rdma_ah_attr* %198)
  %200 = and i32 %199, 127
  %201 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %202 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 4
  %203 = load i32, i32* %23, align 4
  %204 = load i32, i32* @IB_AH_GRH, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %174
  %208 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %209 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, 128
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %207, %174
  %213 = load i32, i32* %24, align 4
  %214 = and i32 %213, 15
  %215 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %216 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %215, i32 0, i32 0
  store i32 %214, i32* %216, align 8
  br label %217

217:                                              ; preds = %212, %173
  %218 = load i32, i32* %23, align 4
  %219 = load i32, i32* @IB_AH_GRH, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %252

222:                                              ; preds = %217
  %223 = load %struct.ib_global_route*, %struct.ib_global_route** %20, align 8
  %224 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %223, i32 0, i32 4
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %227 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %226, i32 0, i32 10
  store i64 %225, i64* %227, align 8
  %228 = load %struct.ib_global_route*, %struct.ib_global_route** %20, align 8
  %229 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %232 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %231, i32 0, i32 9
  store i32 %230, i32* %232, align 4
  %233 = load %struct.ib_global_route*, %struct.ib_global_route** %20, align 8
  %234 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = shl i32 %235, 20
  %237 = load %struct.ib_global_route*, %struct.ib_global_route** %20, align 8
  %238 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %236, %239
  %241 = call i32 @cpu_to_be32(i32 %240)
  %242 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %243 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %242, i32 0, i32 8
  store i32 %241, i32* %243, align 8
  %244 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %245 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %244, i32 0, i32 7
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.ib_global_route*, %struct.ib_global_route** %20, align 8
  %248 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @memcpy(i32 %246, i32 %250, i32 16)
  br label %252

252:                                              ; preds = %222, %217
  %253 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %254 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %13, align 8
  %255 = call i32 @rdma_ah_get_static_rate(%struct.rdma_ah_attr* %254)
  %256 = call i32 @ib_rate_to_mlx5(%struct.mlx5_ib_dev* %253, i32 %255)
  store i32 %256, i32* %21, align 4
  %257 = load i32, i32* %21, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %252
  %260 = load i32, i32* %21, align 4
  store i32 %260, i32* %10, align 4
  br label %316

261:                                              ; preds = %252
  %262 = load i32, i32* %21, align 4
  %263 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %264 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %263, i32 0, i32 4
  store i32 %262, i32* %264, align 8
  %265 = load i32, i32* %15, align 4
  %266 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %267 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %266, i32 0, i32 5
  store i32 %265, i32* %267, align 4
  %268 = load i32, i32* %16, align 4
  %269 = load i32, i32* @IB_QP_TIMEOUT, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %288

272:                                              ; preds = %261
  %273 = load i32, i32* %19, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %272
  %276 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %18, align 8
  %277 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  br label %283

279:                                              ; preds = %272
  %280 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %18, align 8
  %281 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  br label %283

283:                                              ; preds = %279, %275
  %284 = phi i32 [ %278, %275 ], [ %282, %279 ]
  %285 = shl i32 %284, 3
  %286 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %287 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %286, i32 0, i32 6
  store i32 %285, i32* %287, align 8
  br label %288

288:                                              ; preds = %283, %261
  %289 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %290 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @IB_QPT_RAW_PACKET, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %315

295:                                              ; preds = %288
  %296 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %297 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %315

301:                                              ; preds = %295
  %302 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %303 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %302, i32 0, i32 0
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %303, align 8
  %305 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %306 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 0
  %308 = load i32, i32* %24, align 4
  %309 = and i32 %308, 15
  %310 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %311 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @modify_raw_packet_eth_prio(%struct.TYPE_17__* %304, i32* %307, i32 %309, i32 %313)
  store i32 %314, i32* %10, align 4
  br label %316

315:                                              ; preds = %295, %288
  store i32 0, i32* %10, align 4
  br label %316

316:                                              ; preds = %315, %301, %259, %102, %72
  %317 = load i32, i32* %10, align 4
  ret i32 %317
}

declare dso_local %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_get_sl(%struct.rdma_ah_attr*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @pr_err(i8*, i64, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mlx5_get_roce_udp_sport(%struct.mlx5_ib_dev*, %struct.TYPE_18__*) #1

declare dso_local i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_get_path_bits(%struct.rdma_ah_attr*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ib_rate_to_mlx5(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i32 @rdma_ah_get_static_rate(%struct.rdma_ah_attr*) #1

declare dso_local i32 @modify_raw_packet_eth_prio(%struct.TYPE_17__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
