; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_create_pv_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_create_pv_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.mlx4_ib_demux_pv_ctx = type { i64, i32, i32*, i32*, %struct.TYPE_7__*, i32*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.ib_cq_init_attr = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@DEMUX_PV_STATE_DOWN = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@DEMUX_PV_STATE_STARTING = common dso_local global i64 0, align 8
@IB_LINK_LAYER_INFINIBAND = common dso_local global i64 0, align 8
@IB_QPT_SMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed allocating qp0 tunnel bufs (%d)\0A\00", align 1
@IB_QPT_GSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed allocating qp1 tunnel bufs (%d)\0A\00", align 1
@MLX4_NUM_TUNNEL_BUFS = common dso_local global i32 0, align 4
@mlx4_ib_tunnel_comp_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Couldn't create tunnel CQ (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Couldn't create tunnel PD (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Couldn't create %s QP0 (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"tunnel for\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Couldn't create %s QP1 (%d)\0A\00", align 1
@mlx4_ib_tunnel_comp_worker = common dso_local global i32 0, align 4
@mlx4_ib_sqp_comp_worker = common dso_local global i32 0, align 4
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"Couldn't arm tunnel cq (%d)\0A\00", align 1
@DEMUX_PV_STATE_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, i32, %struct.mlx4_ib_demux_pv_ctx*)* @create_pv_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_pv_resources(%struct.ib_device* %0, i32 %1, i32 %2, i32 %3, %struct.mlx4_ib_demux_pv_ctx* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_ib_demux_pv_ctx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ib_cq_init_attr, align 4
  store %struct.ib_device* %0, %struct.ib_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.mlx4_ib_demux_pv_ctx* %4, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %15 = bitcast %struct.ib_cq_init_attr* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %17 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DEMUX_PV_STATE_DOWN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @EEXIST, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %260

24:                                               ; preds = %5
  %25 = load i64, i64* @DEMUX_PV_STATE_STARTING, align 8
  %26 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %27 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %29 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %30 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @rdma_port_get_link_layer(%struct.ib_device* %28, i32 %31)
  %33 = load i64, i64* @IB_LINK_LAYER_INFINIBAND, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %37 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %36, i32 0, i32 1
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %24
  %39 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %40 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %45 = load i32, i32* @IB_QPT_SMI, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @mlx4_ib_alloc_pv_bufs(%struct.mlx4_ib_demux_pv_ctx* %44, i32 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* %12, align 4
  %52 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %255

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %38
  %55 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %56 = load i32, i32* @IB_QPT_GSI, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @mlx4_ib_alloc_pv_bufs(%struct.mlx4_ib_demux_pv_ctx* %55, i32 %56, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %12, align 4
  %63 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %244

64:                                               ; preds = %54
  %65 = load i32, i32* @MLX4_NUM_TUNNEL_BUFS, align 4
  %66 = mul nsw i32 2, %65
  store i32 %66, i32* %13, align 4
  %67 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %68 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* %13, align 4
  %73 = mul nsw i32 %72, 2
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %71, %64
  %75 = load i32, i32* %13, align 4
  %76 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %14, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %78 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @mlx4_ib_tunnel_comp_handler, align 4
  %81 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %82 = call i32* @ib_create_cq(i32 %79, i32 %80, i32* null, %struct.mlx4_ib_demux_pv_ctx* %81, %struct.ib_cq_init_attr* %14)
  %83 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %84 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %83, i32 0, i32 2
  store i32* %82, i32** %84, align 8
  %85 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %86 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = call i64 @IS_ERR(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %74
  %91 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %92 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @PTR_ERR(i32* %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %239

97:                                               ; preds = %74
  %98 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %99 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = call i32* @ib_alloc_pd(i32 %100, i32 0)
  %102 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %103 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %102, i32 0, i32 3
  store i32* %101, i32** %103, align 8
  %104 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %105 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = call i64 @IS_ERR(i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %97
  %110 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %111 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @PTR_ERR(i32* %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  br label %232

116:                                              ; preds = %97
  %117 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %118 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %116
  %122 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %123 = load i32, i32* @IB_QPT_SMI, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @create_pv_sqp(%struct.mlx4_ib_demux_pv_ctx* %122, i32 %123, i32 %124)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %121
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %133 = load i32, i32* %12, align 4
  %134 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %132, i32 %133)
  br label %225

135:                                              ; preds = %121
  br label %136

136:                                              ; preds = %135, %116
  %137 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %138 = load i32, i32* @IB_QPT_GSI, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @create_pv_sqp(%struct.mlx4_ib_demux_pv_ctx* %137, i32 %138, i32 %139)
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %136
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %148 = load i32, i32* %12, align 4
  %149 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %147, i32 %148)
  br label %206

150:                                              ; preds = %136
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %150
  %154 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %155 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %154, i32 0, i32 6
  %156 = load i32, i32* @mlx4_ib_tunnel_comp_worker, align 4
  %157 = call i32 @INIT_WORK(i32* %155, i32 %156)
  br label %163

158:                                              ; preds = %150
  %159 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %160 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %159, i32 0, i32 6
  %161 = load i32, i32* @mlx4_ib_sqp_comp_worker, align 4
  %162 = call i32 @INIT_WORK(i32* %160, i32 %161)
  br label %163

163:                                              ; preds = %158, %153
  %164 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %165 = call %struct.TYPE_8__* @to_mdev(%struct.ib_device* %164)
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %176 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %175, i32 0, i32 5
  store i32* %174, i32** %176, align 8
  %177 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %178 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %181 = call i32 @ib_req_notify_cq(i32* %179, i32 %180)
  store i32 %181, i32* %12, align 4
  %182 = load i32, i32* %12, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %163
  %185 = load i32, i32* %12, align 4
  %186 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %185)
  br label %191

187:                                              ; preds = %163
  %188 = load i64, i64* @DEMUX_PV_STATE_ACTIVE, align 8
  %189 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %190 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %189, i32 0, i32 0
  store i64 %188, i64* %190, align 8
  store i32 0, i32* %6, align 4
  br label %260

191:                                              ; preds = %184
  %192 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %193 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %192, i32 0, i32 5
  store i32* null, i32** %193, align 8
  %194 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %195 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %194, i32 0, i32 4
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i64 1
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @ib_destroy_qp(i32* %199)
  %201 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %202 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %201, i32 0, i32 4
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i64 1
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  store i32* null, i32** %205, align 8
  br label %206

206:                                              ; preds = %191, %143
  %207 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %208 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %206
  %212 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %213 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %212, i32 0, i32 4
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i64 0
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = call i32 @ib_destroy_qp(i32* %217)
  br label %219

219:                                              ; preds = %211, %206
  %220 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %221 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %220, i32 0, i32 4
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i64 0
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  store i32* null, i32** %224, align 8
  br label %225

225:                                              ; preds = %219, %128
  %226 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %227 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %226, i32 0, i32 3
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 @ib_dealloc_pd(i32* %228)
  %230 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %231 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %230, i32 0, i32 3
  store i32* null, i32** %231, align 8
  br label %232

232:                                              ; preds = %225, %109
  %233 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %234 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = call i32 @ib_destroy_cq(i32* %235)
  %237 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %238 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %237, i32 0, i32 2
  store i32* null, i32** %238, align 8
  br label %239

239:                                              ; preds = %232, %90
  %240 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %241 = load i32, i32* @IB_QPT_GSI, align 4
  %242 = load i32, i32* %10, align 4
  %243 = call i32 @mlx4_ib_free_pv_qp_bufs(%struct.mlx4_ib_demux_pv_ctx* %240, i32 %241, i32 %242)
  br label %244

244:                                              ; preds = %239, %61
  %245 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %246 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %244
  %250 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %251 = load i32, i32* @IB_QPT_SMI, align 4
  %252 = load i32, i32* %10, align 4
  %253 = call i32 @mlx4_ib_free_pv_qp_bufs(%struct.mlx4_ib_demux_pv_ctx* %250, i32 %251, i32 %252)
  br label %254

254:                                              ; preds = %249, %244
  br label %255

255:                                              ; preds = %254, %50
  %256 = load i64, i64* @DEMUX_PV_STATE_DOWN, align 8
  %257 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %258 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %257, i32 0, i32 0
  store i64 %256, i64* %258, align 8
  %259 = load i32, i32* %12, align 4
  store i32 %259, i32* %6, align 4
  br label %260

260:                                              ; preds = %255, %187, %21
  %261 = load i32, i32* %6, align 4
  ret i32 %261
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @rdma_port_get_link_layer(%struct.ib_device*, i32) #2

declare dso_local i32 @mlx4_ib_alloc_pv_bufs(%struct.mlx4_ib_demux_pv_ctx*, i32, i32) #2

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i32* @ib_create_cq(i32, i32, i32*, %struct.mlx4_ib_demux_pv_ctx*, %struct.ib_cq_init_attr*) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @PTR_ERR(i32*) #2

declare dso_local i32* @ib_alloc_pd(i32, i32) #2

declare dso_local i32 @create_pv_sqp(%struct.mlx4_ib_demux_pv_ctx*, i32, i32) #2

declare dso_local i32 @INIT_WORK(i32*, i32) #2

declare dso_local %struct.TYPE_8__* @to_mdev(%struct.ib_device*) #2

declare dso_local i32 @ib_req_notify_cq(i32*, i32) #2

declare dso_local i32 @ib_destroy_qp(i32*) #2

declare dso_local i32 @ib_dealloc_pd(i32*) #2

declare dso_local i32 @ib_destroy_cq(i32*) #2

declare dso_local i32 @mlx4_ib_free_pv_qp_bufs(%struct.mlx4_ib_demux_pv_ctx*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
