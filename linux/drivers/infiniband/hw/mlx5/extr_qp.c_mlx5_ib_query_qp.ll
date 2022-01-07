; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_ib_query_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_ib_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i64, i32, i32, i32, i32, i32, i64, i32 }
%struct.ib_qp_attr = type { i32, i64, i32, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.ib_qp_init_attr = type { i32, i64, i32, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_qp = type { i64, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@ENOSYS = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i64 0, align 8
@MLX5_IB_QPT_DCT = common dso_local global i64 0, align 8
@IB_QPT_RAW_PACKET = common dso_local global i64 0, align 8
@MLX5_IB_QP_UNDERLAY = common dso_local global i32 0, align 4
@MLX5_IB_QP_BLOCK_MULTICAST_LOOPBACK = common dso_local global i32 0, align 4
@IB_QP_CREATE_BLOCK_MULTICAST_LOOPBACK = common dso_local global i32 0, align 4
@MLX5_IB_QP_CROSS_CHANNEL = common dso_local global i32 0, align 4
@IB_QP_CREATE_CROSS_CHANNEL = common dso_local global i32 0, align 4
@MLX5_IB_QP_MANAGED_SEND = common dso_local global i32 0, align 4
@IB_QP_CREATE_MANAGED_SEND = common dso_local global i32 0, align 4
@MLX5_IB_QP_MANAGED_RECV = common dso_local global i32 0, align 4
@IB_QP_CREATE_MANAGED_RECV = common dso_local global i32 0, align 4
@MLX5_IB_QP_SQPN_QP1 = common dso_local global i32 0, align 4
@MLX5_WQE_CTRL_CQ_UPDATE = common dso_local global i32 0, align 4
@IB_SIGNAL_ALL_WR = common dso_local global i32 0, align 4
@IB_SIGNAL_REQ_WR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_query_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_qp_init_attr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca %struct.ib_qp_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_qp_init_attr*, align 8
  %10 = alloca %struct.mlx5_ib_dev*, align 8
  %11 = alloca %struct.mlx5_ib_qp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %6, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_qp_init_attr* %3, %struct.ib_qp_init_attr** %9, align 8
  %14 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %15 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.mlx5_ib_dev* @to_mdev(i32 %16)
  store %struct.mlx5_ib_dev* %17, %struct.mlx5_ib_dev** %10, align 8
  %18 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %19 = call %struct.mlx5_ib_qp* @to_mqp(%struct.ib_qp* %18)
  store %struct.mlx5_ib_qp* %19, %struct.mlx5_ib_qp** %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %21 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOSYS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %280

27:                                               ; preds = %4
  %28 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %29 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IB_QPT_GSI, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %38 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %39 = bitcast %struct.ib_qp_attr* %38 to %struct.ib_qp_init_attr*
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %42 = call i32 @mlx5_ib_gsi_query_qp(%struct.ib_qp* %37, %struct.ib_qp_init_attr* %39, i32 %40, %struct.ib_qp_init_attr* %41)
  store i32 %42, i32* %5, align 4
  br label %280

43:                                               ; preds = %27
  %44 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %45 = call i32 @memset(%struct.ib_qp_init_attr* %44, i32 0, i32 72)
  %46 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %47 = bitcast %struct.ib_qp_attr* %46 to %struct.ib_qp_init_attr*
  %48 = call i32 @memset(%struct.ib_qp_init_attr* %47, i32 0, i32 72)
  %49 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %50 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MLX5_IB_QPT_DCT, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %43
  %58 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %59 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %60 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %61 = bitcast %struct.ib_qp_attr* %60 to %struct.ib_qp_init_attr*
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %64 = call i32 @mlx5_ib_dct_query_qp(%struct.mlx5_ib_dev* %58, %struct.mlx5_ib_qp* %59, %struct.ib_qp_init_attr* %61, i32 %62, %struct.ib_qp_init_attr* %63)
  store i32 %64, i32* %5, align 4
  br label %280

65:                                               ; preds = %43
  %66 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %67 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %66, i32 0, i32 3
  %68 = call i32 @mutex_lock(i32* %67)
  %69 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %70 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %69, i32 0, i32 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @IB_QPT_RAW_PACKET, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %77 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @MLX5_IB_QP_UNDERLAY, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %75, %65
  %83 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %84 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %85 = call i32 @query_raw_packet_qp_state(%struct.mlx5_ib_dev* %83, %struct.mlx5_ib_qp* %84, i32* %13)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %275

89:                                               ; preds = %82
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %92 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %94 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  br label %105

95:                                               ; preds = %75
  %96 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %97 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %98 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %99 = bitcast %struct.ib_qp_attr* %98 to %struct.ib_qp_init_attr*
  %100 = call i32 @query_qp_attr(%struct.mlx5_ib_dev* %96, %struct.mlx5_ib_qp* %97, %struct.ib_qp_init_attr* %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %275

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %89
  %106 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %107 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %110 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %109, i32 0, i32 9
  store i32 %108, i32* %110, align 4
  %111 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %112 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %111, i32 0, i32 9
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %115 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %114, i32 0, i32 10
  store i32 %113, i32* %115, align 8
  %116 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %117 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %121 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 4
  store i32 %119, i32* %122, align 8
  %123 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %124 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %128 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 3
  store i32 %126, i32* %129, align 4
  %130 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %131 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %154, label %134

134:                                              ; preds = %105
  %135 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %136 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %140 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  store i32 %138, i32* %141, align 8
  %142 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %143 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %147 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 4
  %149 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %150 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %153 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %152, i32 0, i32 8
  store i32 %151, i32* %153, align 8
  br label %161

154:                                              ; preds = %105
  %155 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %156 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  store i32 0, i32* %157, align 8
  %158 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %159 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  store i32 0, i32* %160, align 4
  br label %161

161:                                              ; preds = %154, %134
  %162 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %163 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %166 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %165, i32 0, i32 1
  store i64 %164, i64* %166, align 8
  %167 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %168 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %171 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %170, i32 0, i32 7
  store i32 %169, i32* %171, align 4
  %172 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %173 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %176 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %175, i32 0, i32 6
  store i32 %174, i32* %176, align 8
  %177 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %178 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %181 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %180, i32 0, i32 5
  store i32 %179, i32* %181, align 4
  %182 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %183 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %186 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  store i32 %184, i32* %187, align 8
  %188 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %189 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %188, i32 0, i32 4
  %190 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %191 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %190, i32 0, i32 4
  %192 = bitcast %struct.TYPE_8__* %189 to i8*
  %193 = bitcast %struct.TYPE_8__* %191 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %192, i8* align 8 %193, i64 20, i1 false)
  %194 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %195 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %194, i32 0, i32 3
  store i32 0, i32* %195, align 4
  %196 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %197 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @MLX5_IB_QP_BLOCK_MULTICAST_LOOPBACK, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %161
  %203 = load i32, i32* @IB_QP_CREATE_BLOCK_MULTICAST_LOOPBACK, align 4
  %204 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %205 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %202, %161
  %209 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %210 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @MLX5_IB_QP_CROSS_CHANNEL, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %208
  %216 = load i32, i32* @IB_QP_CREATE_CROSS_CHANNEL, align 4
  %217 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %218 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 4
  br label %221

221:                                              ; preds = %215, %208
  %222 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %223 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @MLX5_IB_QP_MANAGED_SEND, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %221
  %229 = load i32, i32* @IB_QP_CREATE_MANAGED_SEND, align 4
  %230 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %231 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 4
  br label %234

234:                                              ; preds = %228, %221
  %235 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %236 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @MLX5_IB_QP_MANAGED_RECV, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %234
  %242 = load i32, i32* @IB_QP_CREATE_MANAGED_RECV, align 4
  %243 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %244 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 4
  br label %247

247:                                              ; preds = %241, %234
  %248 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %249 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @MLX5_IB_QP_SQPN_QP1, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %247
  %255 = call i32 (...) @mlx5_ib_create_qp_sqpn_qp1()
  %256 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %257 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 4
  br label %260

260:                                              ; preds = %254, %247
  %261 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %262 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @MLX5_WQE_CTRL_CQ_UPDATE, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %260
  %268 = load i32, i32* @IB_SIGNAL_ALL_WR, align 4
  br label %271

269:                                              ; preds = %260
  %270 = load i32, i32* @IB_SIGNAL_REQ_WR, align 4
  br label %271

271:                                              ; preds = %269, %267
  %272 = phi i32 [ %268, %267 ], [ %270, %269 ]
  %273 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %274 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %273, i32 0, i32 2
  store i32 %272, i32* %274, align 8
  br label %275

275:                                              ; preds = %271, %103, %88
  %276 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %277 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %276, i32 0, i32 3
  %278 = call i32 @mutex_unlock(i32* %277)
  %279 = load i32, i32* %12, align 4
  store i32 %279, i32* %5, align 4
  br label %280

280:                                              ; preds = %275, %57, %36, %24
  %281 = load i32, i32* %5, align 4
  ret i32 %281
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx5_ib_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5_ib_gsi_query_qp(%struct.ib_qp*, %struct.ib_qp_init_attr*, i32, %struct.ib_qp_init_attr*) #1

declare dso_local i32 @memset(%struct.ib_qp_init_attr*, i32, i32) #1

declare dso_local i32 @mlx5_ib_dct_query_qp(%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*, %struct.ib_qp_init_attr*, i32, %struct.ib_qp_init_attr*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @query_raw_packet_qp_state(%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*, i32*) #1

declare dso_local i32 @query_qp_attr(%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*, %struct.ib_qp_init_attr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlx5_ib_create_qp_sqpn_qp1(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
