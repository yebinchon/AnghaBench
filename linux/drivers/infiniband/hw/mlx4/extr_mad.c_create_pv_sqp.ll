; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_create_pv_sqp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_create_pv_sqp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_demux_pv_ctx = type { i32, i64, i32, i32, i32, %struct.mlx4_ib_demux_pv_qp* }
%struct.mlx4_ib_demux_pv_qp = type { i32* }
%struct.mlx4_ib_qp_tunnel_init_attr = type { i32, i64, i32, i32, i64, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.mlx4_ib_demux_pv_ctx*, i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.ib_qp_attr = type { i32, i64, i32, i32, i64, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*** }

@IB_QPT_GSI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_SIGNAL_ALL_WR = common dso_local global i32 0, align 4
@MLX4_NUM_TUNNEL_BUFS = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i32 0, align 4
@MLX4_IB_SRIOV_TUNNEL_QP = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_QP_QKEY = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@MLX4_IB_SRIOV_SQP = common dso_local global i32 0, align 4
@pv_qp_event_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Couldn't create %s QP (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"tunnel\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"special\00", align 1
@IB_QPS_INIT = common dso_local global i32 0, align 4
@IB_DEFAULT_PKEY_FULL = common dso_local global i32 0, align 4
@IB_QP1_QKEY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Couldn't change %s qp state to INIT (%d)\0A\00", align 1
@IB_QPS_RTR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Couldn't change %s qp state to RTR (%d)\0A\00", align 1
@IB_QPS_RTS = common dso_local global i32 0, align 4
@IB_QP_SQ_PSN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Couldn't change %s qp state to RTS (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c" mlx4_ib_post_pv_buf error (err = %d, i = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_demux_pv_ctx*, i32, i32)* @create_pv_sqp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_pv_sqp(%struct.mlx4_ib_demux_pv_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_ib_demux_pv_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_ib_demux_pv_qp*, align 8
  %11 = alloca %struct.mlx4_ib_qp_tunnel_init_attr, align 8
  %12 = alloca %struct.ib_qp_attr, align 8
  %13 = alloca i32, align 4
  store %struct.mlx4_ib_demux_pv_ctx* %0, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @IB_QPT_GSI, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %271

20:                                               ; preds = %3
  %21 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %21, i32 0, i32 5
  %23 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %23, i64 %25
  store %struct.mlx4_ib_demux_pv_qp* %26, %struct.mlx4_ib_demux_pv_qp** %10, align 8
  %27 = call i32 @memset(%struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 104)
  %28 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @IB_SIGNAL_ALL_WR, align 4
  %39 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @MLX4_NUM_TUNNEL_BUFS, align 4
  %42 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @MLX4_NUM_TUNNEL_BUFS, align 4
  %46 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  store i32 1, i32* %51, align 4
  %52 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  store i32 1, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %20
  %58 = load i32, i32* @IB_QPT_UD, align 4
  %59 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @MLX4_IB_SRIOV_TUNNEL_QP, align 4
  %62 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %65 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  %68 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %69 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 1
  store i64 %70, i64* %71, align 8
  %72 = load i32, i32* %6, align 4
  %73 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 2
  store i32 %72, i32* %73, align 8
  %74 = load i32, i32* @IB_QP_STATE, align 4
  %75 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @IB_QP_QKEY, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @IB_QP_PORT, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %13, align 4
  br label %93

81:                                               ; preds = %20
  %82 = load i32, i32* %6, align 4
  %83 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @MLX4_IB_SRIOV_SQP, align 4
  %86 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @IB_QP_STATE, align 4
  %89 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @IB_QP_QKEY, align 4
  %92 = or i32 %90, %91
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %81, %57
  %94 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %95 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %100 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  store %struct.mlx4_ib_demux_pv_ctx* %99, %struct.mlx4_ib_demux_pv_ctx** %101, align 8
  %102 = load i32, i32* @pv_qp_event_handler, align 4
  %103 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %106 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %109 = call i32* @ib_create_qp(i32 %107, %struct.TYPE_9__* %108)
  %110 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %10, align 8
  %111 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %110, i32 0, i32 0
  store i32* %109, i32** %111, align 8
  %112 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %10, align 8
  %113 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i64 @IS_ERR(i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %93
  %118 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %10, align 8
  %119 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @PTR_ERR(i32* %120)
  store i32 %121, i32* %9, align 4
  %122 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %10, align 8
  %123 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %122, i32 0, i32 0
  store i32* null, i32** %123, align 8
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %128 = load i32, i32* %9, align 4
  %129 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %127, i32 %128)
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %4, align 4
  br label %271

131:                                              ; preds = %93
  %132 = bitcast %struct.ib_qp_attr* %12 to %struct.mlx4_ib_qp_tunnel_init_attr*
  %133 = call i32 @memset(%struct.mlx4_ib_qp_tunnel_init_attr* %132, i32 0, i32 104)
  %134 = load i32, i32* @IB_QPS_INIT, align 4
  %135 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %12, i32 0, i32 5
  store i32 %134, i32* %135, align 8
  store i32 0, i32* %9, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %131
  %139 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %140 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call %struct.TYPE_8__* @to_mdev(i32 %141)
  %143 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %144 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %147 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @IB_DEFAULT_PKEY_FULL, align 4
  %150 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %12, i32 0, i32 7
  %151 = call i32 @find_slave_port_pkey_ix(%struct.TYPE_8__* %142, i64 %145, i32 %148, i32 %149, i32* %150)
  store i32 %151, i32* %9, align 4
  br label %152

152:                                              ; preds = %138, %131
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %181, label %158

158:                                              ; preds = %155, %152
  %159 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %160 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call %struct.TYPE_8__* @to_mdev(i32 %161)
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32***, i32**** %164, align 8
  %166 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %167 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds i32**, i32*** %165, i64 %168
  %170 = load i32**, i32*** %169, align 8
  %171 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %172 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sub nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32*, i32** %170, i64 %175
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %12, i32 0, i32 7
  store i32 %179, i32* %180, align 8
  br label %181

181:                                              ; preds = %158, %155
  %182 = load i32, i32* @IB_QP1_QKEY, align 4
  %183 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %12, i32 0, i32 6
  store i32 %182, i32* %183, align 4
  %184 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %185 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %12, i32 0, i32 3
  store i32 %186, i32* %187, align 4
  %188 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %10, align 8
  %189 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = bitcast %struct.ib_qp_attr* %12 to %struct.mlx4_ib_qp_tunnel_init_attr*
  %192 = load i32, i32* %13, align 4
  %193 = call i32 @ib_modify_qp(i32* %190, %struct.mlx4_ib_qp_tunnel_init_attr* %191, i32 %192)
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %9, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %181
  %197 = load i32, i32* %7, align 4
  %198 = icmp ne i32 %197, 0
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %201 = load i32, i32* %9, align 4
  %202 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %200, i32 %201)
  br label %263

203:                                              ; preds = %181
  %204 = load i32, i32* @IB_QPS_RTR, align 4
  %205 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %12, i32 0, i32 5
  store i32 %204, i32* %205, align 8
  %206 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %10, align 8
  %207 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = bitcast %struct.ib_qp_attr* %12 to %struct.mlx4_ib_qp_tunnel_init_attr*
  %210 = load i32, i32* @IB_QP_STATE, align 4
  %211 = call i32 @ib_modify_qp(i32* %208, %struct.mlx4_ib_qp_tunnel_init_attr* %209, i32 %210)
  store i32 %211, i32* %9, align 4
  %212 = load i32, i32* %9, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %203
  %215 = load i32, i32* %7, align 4
  %216 = icmp ne i32 %215, 0
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %219 = load i32, i32* %9, align 4
  %220 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %218, i32 %219)
  br label %263

221:                                              ; preds = %203
  %222 = load i32, i32* @IB_QPS_RTS, align 4
  %223 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %12, i32 0, i32 5
  store i32 %222, i32* %223, align 8
  %224 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %12, i32 0, i32 4
  store i64 0, i64* %224, align 8
  %225 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %10, align 8
  %226 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = bitcast %struct.ib_qp_attr* %12 to %struct.mlx4_ib_qp_tunnel_init_attr*
  %229 = load i32, i32* @IB_QP_STATE, align 4
  %230 = load i32, i32* @IB_QP_SQ_PSN, align 4
  %231 = or i32 %229, %230
  %232 = call i32 @ib_modify_qp(i32* %227, %struct.mlx4_ib_qp_tunnel_init_attr* %228, i32 %231)
  store i32 %232, i32* %9, align 4
  %233 = load i32, i32* %9, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %221
  %236 = load i32, i32* %7, align 4
  %237 = icmp ne i32 %236, 0
  %238 = zext i1 %237 to i64
  %239 = select i1 %237, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %240 = load i32, i32* %9, align 4
  %241 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %239, i32 %240)
  br label %263

242:                                              ; preds = %221
  store i32 0, i32* %8, align 4
  br label %243

243:                                              ; preds = %259, %242
  %244 = load i32, i32* %8, align 4
  %245 = load i32, i32* @MLX4_NUM_TUNNEL_BUFS, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %262

247:                                              ; preds = %243
  %248 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %249 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %10, align 8
  %250 = load i32, i32* %8, align 4
  %251 = call i32 @mlx4_ib_post_pv_qp_buf(%struct.mlx4_ib_demux_pv_ctx* %248, %struct.mlx4_ib_demux_pv_qp* %249, i32 %250)
  store i32 %251, i32* %9, align 4
  %252 = load i32, i32* %9, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %247
  %255 = load i32, i32* %9, align 4
  %256 = load i32, i32* %8, align 4
  %257 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %255, i32 %256)
  br label %263

258:                                              ; preds = %247
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %8, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %8, align 4
  br label %243

262:                                              ; preds = %243
  store i32 0, i32* %4, align 4
  br label %271

263:                                              ; preds = %254, %235, %214, %196
  %264 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %10, align 8
  %265 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = call i32 @ib_destroy_qp(i32* %266)
  %268 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %10, align 8
  %269 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %268, i32 0, i32 0
  store i32* null, i32** %269, align 8
  %270 = load i32, i32* %9, align 4
  store i32 %270, i32* %4, align 4
  br label %271

271:                                              ; preds = %263, %262, %117, %17
  %272 = load i32, i32* %4, align 4
  ret i32 %272
}

declare dso_local i32 @memset(%struct.mlx4_ib_qp_tunnel_init_attr*, i32, i32) #1

declare dso_local i32* @ib_create_qp(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @find_slave_port_pkey_ix(%struct.TYPE_8__*, i64, i32, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @to_mdev(i32) #1

declare dso_local i32 @ib_modify_qp(i32*, %struct.mlx4_ib_qp_tunnel_init_attr*, i32) #1

declare dso_local i32 @mlx4_ib_post_pv_qp_buf(%struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_qp*, i32) #1

declare dso_local i32 @ib_destroy_qp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
