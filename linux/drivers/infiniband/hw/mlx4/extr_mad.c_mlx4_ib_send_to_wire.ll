; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_mlx4_ib_send_to_wire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_mlx4_ib_send_to_wire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64*** }
%struct.TYPE_8__ = type { %struct.mlx4_ib_demux_pv_ctx** }
%struct.mlx4_ib_demux_pv_ctx = type { i64, %struct.TYPE_11__*, %struct.mlx4_ib_demux_pv_qp* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.mlx4_ib_demux_pv_qp = type { i32, i32, %struct.TYPE_12__*, i32, %struct.ib_qp* }
%struct.TYPE_12__ = type { %struct.ib_ah*, %struct.TYPE_10__ }
%struct.ib_ah = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.ib_qp = type { i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.ib_mad = type { i32 }
%struct.ib_sge = type { i32, i32, i32 }
%struct.ib_ud_wr = type { i32, i64, %struct.TYPE_14__, i8*, i8*, %struct.ib_ah* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.ib_sge*, i32* }
%struct.ib_send_wr = type { i32 }
%struct.mlx4_mad_snd_buf = type { i32 }
%struct.TYPE_13__ = type { i32 }

@DEMUX_PV_STATE_ACTIVE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@IB_QPT_SMI = common dso_local global i32 0, align 4
@ib_ah = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_NUM_TUNNEL_BUFS = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@IB_WR_SEND = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_send_to_wire(%struct.mlx4_ib_dev* %0, i32 %1, i32 %2, i32 %3, i64 %4, i8* %5, i8* %6, %struct.rdma_ah_attr* %7, i32* %8, i64 %9, %struct.ib_mad* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlx4_ib_dev*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.rdma_ah_attr*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.ib_mad*, align 8
  %24 = alloca %struct.ib_sge, align 4
  %25 = alloca %struct.ib_ud_wr, align 8
  %26 = alloca %struct.ib_send_wr*, align 8
  %27 = alloca %struct.mlx4_ib_demux_pv_ctx*, align 8
  %28 = alloca %struct.mlx4_ib_demux_pv_qp*, align 8
  %29 = alloca %struct.mlx4_mad_snd_buf*, align 8
  %30 = alloca %struct.ib_ah*, align 8
  %31 = alloca %struct.ib_qp*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i64 %4, i64* %17, align 8
  store i8* %5, i8** %18, align 8
  store i8* %6, i8** %19, align 8
  store %struct.rdma_ah_attr* %7, %struct.rdma_ah_attr** %20, align 8
  store i32* %8, i32** %21, align 8
  store i64 %9, i64* %22, align 8
  store %struct.ib_mad* %10, %struct.ib_mad** %23, align 8
  store %struct.ib_qp* null, %struct.ib_qp** %31, align 8
  store i32 0, i32* %32, align 4
  %36 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %13, align 8
  %37 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.mlx4_ib_demux_pv_ctx**, %struct.mlx4_ib_demux_pv_ctx*** %38, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %39, i64 %42
  %44 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %43, align 8
  store %struct.mlx4_ib_demux_pv_ctx* %44, %struct.mlx4_ib_demux_pv_ctx** %27, align 8
  %45 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %27, align 8
  %46 = icmp ne %struct.mlx4_ib_demux_pv_ctx* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %11
  %48 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %27, align 8
  %49 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @DEMUX_PV_STATE_ACTIVE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %11
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %12, align 4
  br label %305

56:                                               ; preds = %47
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* @IB_QPT_SMI, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  store i32 0, i32* %34, align 4
  %61 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %27, align 8
  %62 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %61, i32 0, i32 2
  %63 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %62, align 8
  %64 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %63, i64 0
  store %struct.mlx4_ib_demux_pv_qp* %64, %struct.mlx4_ib_demux_pv_qp** %28, align 8
  %65 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %13, align 8
  %66 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64***, i64**** %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64**, i64*** %68, i64 %70
  %72 = load i64**, i64*** %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64*, i64** %72, i64 %75
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %33, align 8
  br label %101

80:                                               ; preds = %56
  store i32 1, i32* %34, align 4
  %81 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %27, align 8
  %82 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %81, i32 0, i32 2
  %83 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %82, align 8
  %84 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %83, i64 1
  store %struct.mlx4_ib_demux_pv_qp* %84, %struct.mlx4_ib_demux_pv_qp** %28, align 8
  %85 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %13, align 8
  %86 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i64***, i64**** %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64**, i64*** %88, i64 %90
  %92 = load i64**, i64*** %91, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64*, i64** %92, i64 %95
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* %17, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %33, align 8
  br label %101

101:                                              ; preds = %80, %60
  %102 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %28, align 8
  %103 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %102, i32 0, i32 4
  %104 = load %struct.ib_qp*, %struct.ib_qp** %103, align 8
  store %struct.ib_qp* %104, %struct.ib_qp** %31, align 8
  %105 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %27, align 8
  %106 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %105, i32 0, i32 1
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @ib_ah, align 4
  %111 = call %struct.ib_ah* @rdma_zalloc_drv_obj(i32 %109, i32 %110)
  store %struct.ib_ah* %111, %struct.ib_ah** %30, align 8
  %112 = load %struct.ib_ah*, %struct.ib_ah** %30, align 8
  %113 = icmp ne %struct.ib_ah* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %101
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %12, align 4
  br label %305

117:                                              ; preds = %101
  %118 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %27, align 8
  %119 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %118, i32 0, i32 1
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ib_ah*, %struct.ib_ah** %30, align 8
  %124 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  %125 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %27, align 8
  %126 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %125, i32 0, i32 1
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = load %struct.ib_ah*, %struct.ib_ah** %30, align 8
  %129 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %128, i32 0, i32 0
  store %struct.TYPE_11__* %127, %struct.TYPE_11__** %129, align 8
  %130 = load %struct.ib_ah*, %struct.ib_ah** %30, align 8
  %131 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %20, align 8
  %132 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %20, align 8
  %133 = call %struct.TYPE_13__* @rdma_ah_retrieve_grh(%struct.rdma_ah_attr* %132)
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %21, align 8
  %137 = load i64, i64* %22, align 8
  %138 = call i32 @mlx4_ib_create_ah_slave(%struct.ib_ah* %130, %struct.rdma_ah_attr* %131, i32 %135, i32* %136, i64 %137)
  store i32 %138, i32* %35, align 4
  %139 = load i32, i32* %35, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %117
  br label %301

142:                                              ; preds = %117
  %143 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %28, align 8
  %144 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %143, i32 0, i32 3
  %145 = call i32 @spin_lock(i32* %144)
  %146 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %28, align 8
  %147 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %28, align 8
  %150 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %148, %151
  %153 = load i32, i32* @MLX4_NUM_TUNNEL_BUFS, align 4
  %154 = sub nsw i32 %153, 1
  %155 = icmp sge i32 %152, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %142
  %157 = load i32, i32* @EAGAIN, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %35, align 4
  br label %167

159:                                              ; preds = %142
  %160 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %28, align 8
  %161 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 8
  %164 = load i32, i32* @MLX4_NUM_TUNNEL_BUFS, align 4
  %165 = sub nsw i32 %164, 1
  %166 = and i32 %163, %165
  store i32 %166, i32* %32, align 4
  br label %167

167:                                              ; preds = %159, %156
  %168 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %28, align 8
  %169 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %168, i32 0, i32 3
  %170 = call i32 @spin_unlock(i32* %169)
  %171 = load i32, i32* %35, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  br label %301

174:                                              ; preds = %167
  %175 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %28, align 8
  %176 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %175, i32 0, i32 2
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  %178 = load i32, i32* %32, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = inttoptr i64 %183 to %struct.mlx4_mad_snd_buf*
  store %struct.mlx4_mad_snd_buf* %184, %struct.mlx4_mad_snd_buf** %29, align 8
  %185 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %28, align 8
  %186 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %185, i32 0, i32 2
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = load i32, i32* %32, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = load %struct.ib_ah*, %struct.ib_ah** %191, align 8
  %193 = call i32 @kfree(%struct.ib_ah* %192)
  %194 = load %struct.ib_ah*, %struct.ib_ah** %30, align 8
  %195 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %28, align 8
  %196 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %195, i32 0, i32 2
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %196, align 8
  %198 = load i32, i32* %32, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  store %struct.ib_ah* %194, %struct.ib_ah** %201, align 8
  %202 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %13, align 8
  %203 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %202, i32 0, i32 0
  %204 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %28, align 8
  %205 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %204, i32 0, i32 2
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = load i32, i32* %32, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @DMA_TO_DEVICE, align 4
  %214 = call i32 @ib_dma_sync_single_for_cpu(i32* %203, i32 %212, i32 4, i32 %213)
  %215 = load %struct.mlx4_mad_snd_buf*, %struct.mlx4_mad_snd_buf** %29, align 8
  %216 = getelementptr inbounds %struct.mlx4_mad_snd_buf, %struct.mlx4_mad_snd_buf* %215, i32 0, i32 0
  %217 = load %struct.ib_mad*, %struct.ib_mad** %23, align 8
  %218 = call i32 @memcpy(i32* %216, %struct.ib_mad* %217, i32 4)
  %219 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %13, align 8
  %220 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %219, i32 0, i32 0
  %221 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %28, align 8
  %222 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %221, i32 0, i32 2
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %222, align 8
  %224 = load i32, i32* %32, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @DMA_TO_DEVICE, align 4
  %231 = call i32 @ib_dma_sync_single_for_device(i32* %220, i32 %229, i32 4, i32 %230)
  %232 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %28, align 8
  %233 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %232, i32 0, i32 2
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %233, align 8
  %235 = load i32, i32* %32, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %24, i32 0, i32 2
  store i32 %240, i32* %241, align 4
  %242 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %24, i32 0, i32 0
  store i32 4, i32* %242, align 4
  %243 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %27, align 8
  %244 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %243, i32 0, i32 1
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %24, i32 0, i32 1
  store i32 %247, i32* %248, align 4
  %249 = load %struct.ib_ah*, %struct.ib_ah** %30, align 8
  %250 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %25, i32 0, i32 5
  store %struct.ib_ah* %249, %struct.ib_ah** %250, align 8
  %251 = load i32, i32* %15, align 4
  %252 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %25, i32 0, i32 0
  store i32 %251, i32* %252, align 8
  %253 = load i64, i64* %33, align 8
  %254 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %25, i32 0, i32 1
  store i64 %253, i64* %254, align 8
  %255 = load i8*, i8** %19, align 8
  %256 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %25, i32 0, i32 4
  store i8* %255, i8** %256, align 8
  %257 = load i8*, i8** %18, align 8
  %258 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %25, i32 0, i32 3
  store i8* %257, i8** %258, align 8
  %259 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %25, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 5
  store i32* null, i32** %260, align 8
  %261 = load i32, i32* %32, align 4
  %262 = load i32, i32* %34, align 4
  %263 = call i32 @MLX4_TUN_SET_WRID_QPN(i32 %262)
  %264 = or i32 %261, %263
  %265 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %25, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 0
  store i32 %264, i32* %266, align 8
  %267 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %25, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 4
  store %struct.ib_sge* %24, %struct.ib_sge** %268, align 8
  %269 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %25, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 1
  store i32 1, i32* %270, align 4
  %271 = load i32, i32* @IB_WR_SEND, align 4
  %272 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %25, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 3
  store i32 %271, i32* %273, align 4
  %274 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %275 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %25, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 2
  store i32 %274, i32* %276, align 8
  %277 = load %struct.ib_qp*, %struct.ib_qp** %31, align 8
  %278 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %25, i32 0, i32 2
  %279 = call i32 @ib_post_send(%struct.ib_qp* %277, %struct.TYPE_14__* %278, %struct.ib_send_wr** %26)
  store i32 %279, i32* %35, align 4
  %280 = load i32, i32* %35, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %174
  store i32 0, i32* %12, align 4
  br label %305

283:                                              ; preds = %174
  %284 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %28, align 8
  %285 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %284, i32 0, i32 3
  %286 = call i32 @spin_lock(i32* %285)
  %287 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %28, align 8
  %288 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %288, align 4
  %291 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %28, align 8
  %292 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %291, i32 0, i32 3
  %293 = call i32 @spin_unlock(i32* %292)
  %294 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %28, align 8
  %295 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %294, i32 0, i32 2
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %295, align 8
  %297 = load i32, i32* %32, align 4
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 0
  store %struct.ib_ah* null, %struct.ib_ah** %300, align 8
  br label %301

301:                                              ; preds = %283, %173, %141
  %302 = load %struct.ib_ah*, %struct.ib_ah** %30, align 8
  %303 = call i32 @kfree(%struct.ib_ah* %302)
  %304 = load i32, i32* %35, align 4
  store i32 %304, i32* %12, align 4
  br label %305

305:                                              ; preds = %301, %282, %114, %53
  %306 = load i32, i32* %12, align 4
  ret i32 %306
}

declare dso_local %struct.ib_ah* @rdma_zalloc_drv_obj(i32, i32) #1

declare dso_local i32 @mlx4_ib_create_ah_slave(%struct.ib_ah*, %struct.rdma_ah_attr*, i32, i32*, i64) #1

declare dso_local %struct.TYPE_13__* @rdma_ah_retrieve_grh(%struct.rdma_ah_attr*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.ib_ah*) #1

declare dso_local i32 @ib_dma_sync_single_for_cpu(i32*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ib_mad*, i32) #1

declare dso_local i32 @ib_dma_sync_single_for_device(i32*, i32, i32, i32) #1

declare dso_local i32 @MLX4_TUN_SET_WRID_QPN(i32) #1

declare dso_local i32 @ib_post_send(%struct.ib_qp*, %struct.TYPE_14__*, %struct.ib_send_wr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
