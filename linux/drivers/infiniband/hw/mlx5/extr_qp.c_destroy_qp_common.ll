; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_destroy_qp_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_destroy_qp_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32, i32 }
%struct.mlx5_ib_qp = type { i32, i64, i64, %struct.TYPE_11__, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i64, i64, i32, i32, i64 }
%struct.TYPE_10__ = type { %struct.mlx5_ib_qp_base }
%struct.mlx5_ib_qp_base = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.mlx5_ib_qp_base }
%struct.ib_udata = type { i32 }
%struct.mlx5_ib_cq = type { i32 }
%struct.mlx5_modify_raw_qp_param = type { i32 }
%struct.TYPE_13__ = type { i32 }

@IB_QPT_RAW_PACKET = common dso_local global i64 0, align 8
@MLX5_IB_QP_UNDERLAY = common dso_local global i32 0, align 4
@IB_QPS_RESET = common dso_local global i64 0, align 8
@MLX5_CMD_OP_2RST_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"mlx5_ib: modify QP 0x%06x to RESET failed\0A\00", align 1
@MLX5_QP_KERNEL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to destroy QP 0x%x\0A\00", align 1
@MLX5_QP_USER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*, %struct.ib_udata*)* @destroy_qp_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_qp_common(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_qp* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_ib_qp*, align 8
  %6 = alloca %struct.ib_udata*, align 8
  %7 = alloca %struct.mlx5_ib_cq*, align 8
  %8 = alloca %struct.mlx5_ib_cq*, align 8
  %9 = alloca %struct.mlx5_ib_qp_base*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5_modify_raw_qp_param, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store %struct.mlx5_ib_qp* %1, %struct.mlx5_ib_qp** %5, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %6, align 8
  %13 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %20 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %21 = call i32 @destroy_rss_raw_qp_tir(%struct.mlx5_ib_dev* %19, %struct.mlx5_ib_qp* %20)
  br label %234

22:                                               ; preds = %3
  %23 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IB_QPT_RAW_PACKET, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %31 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MLX5_IB_QP_UNDERLAY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29, %22
  %37 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %37, i32 0, i32 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  br label %45

41:                                               ; preds = %29
  %42 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  br label %45

45:                                               ; preds = %41, %36
  %46 = phi %struct.mlx5_ib_qp_base* [ %40, %36 ], [ %44, %41 ]
  store %struct.mlx5_ib_qp_base* %46, %struct.mlx5_ib_qp_base** %9, align 8
  %47 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %48 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IB_QPS_RESET, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %91

52:                                               ; preds = %45
  %53 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %54 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IB_QPT_RAW_PACKET, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %52
  %60 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %61 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MLX5_IB_QP_UNDERLAY, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %59
  %67 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %68 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MLX5_CMD_OP_2RST_QP, align 4
  %71 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %9, align 8
  %72 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %71, i32 0, i32 0
  %73 = call i32 @mlx5_core_qp_modify(i32 %69, i32 %70, i32 0, i32* null, %struct.TYPE_12__* %72)
  store i32 %73, i32* %11, align 4
  br label %80

74:                                               ; preds = %59, %52
  %75 = getelementptr inbounds %struct.mlx5_modify_raw_qp_param, %struct.mlx5_modify_raw_qp_param* %12, i32 0, i32 0
  %76 = load i32, i32* @MLX5_CMD_OP_2RST_QP, align 4
  store i32 %76, i32* %75, align 4
  %77 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %78 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %79 = call i32 @modify_raw_packet_qp(%struct.mlx5_ib_dev* %77, %struct.mlx5_ib_qp* %78, %struct.mlx5_modify_raw_qp_param* %12, i32 0)
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %74, %66
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %85 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %9, align 8
  %86 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %84, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %83, %80
  br label %91

91:                                               ; preds = %90, %45
  %92 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %93 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %97 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %101 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @get_cqs(i64 %95, i32 %99, i32 %103, %struct.mlx5_ib_cq** %7, %struct.mlx5_ib_cq** %8)
  %105 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %106 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %105, i32 0, i32 1
  %107 = load i64, i64* %10, align 8
  %108 = call i32 @spin_lock_irqsave(i32* %106, i64 %107)
  %109 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %7, align 8
  %110 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %8, align 8
  %111 = call i32 @mlx5_ib_lock_cqs(%struct.mlx5_ib_cq* %109, %struct.mlx5_ib_cq* %110)
  %112 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %113 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %112, i32 0, i32 6
  %114 = call i32 @list_del(i32* %113)
  %115 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %7, align 8
  %116 = icmp ne %struct.mlx5_ib_cq* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %91
  %118 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %119 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %118, i32 0, i32 5
  %120 = call i32 @list_del(i32* %119)
  br label %121

121:                                              ; preds = %117, %91
  %122 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %8, align 8
  %123 = icmp ne %struct.mlx5_ib_cq* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %126 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %125, i32 0, i32 4
  %127 = call i32 @list_del(i32* %126)
  br label %128

128:                                              ; preds = %124, %121
  %129 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %130 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @MLX5_QP_KERNEL, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %166

134:                                              ; preds = %128
  %135 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %8, align 8
  %136 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %9, align 8
  %137 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %141 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %134
  %146 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %147 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call i32* @to_msrq(i64 %149)
  br label %152

151:                                              ; preds = %134
  br label %152

152:                                              ; preds = %151, %145
  %153 = phi i32* [ %150, %145 ], [ null, %151 ]
  %154 = call i32 @__mlx5_ib_cq_clean(%struct.mlx5_ib_cq* %135, i32 %139, i32* %153)
  %155 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %7, align 8
  %156 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %8, align 8
  %157 = icmp ne %struct.mlx5_ib_cq* %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %152
  %159 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %7, align 8
  %160 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %9, align 8
  %161 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @__mlx5_ib_cq_clean(%struct.mlx5_ib_cq* %159, i32 %163, i32* null)
  br label %165

165:                                              ; preds = %158, %152
  br label %166

166:                                              ; preds = %165, %128
  %167 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %7, align 8
  %168 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %8, align 8
  %169 = call i32 @mlx5_ib_unlock_cqs(%struct.mlx5_ib_cq* %167, %struct.mlx5_ib_cq* %168)
  %170 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %171 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %170, i32 0, i32 1
  %172 = load i64, i64* %10, align 8
  %173 = call i32 @spin_unlock_irqrestore(i32* %171, i64 %172)
  %174 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %175 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @IB_QPT_RAW_PACKET, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %187, label %180

180:                                              ; preds = %166
  %181 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %182 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @MLX5_IB_QP_UNDERLAY, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %180, %166
  %188 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %189 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %190 = call i32 @destroy_raw_packet_qp(%struct.mlx5_ib_dev* %188, %struct.mlx5_ib_qp* %189)
  br label %208

191:                                              ; preds = %180
  %192 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %193 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %9, align 8
  %196 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %195, i32 0, i32 0
  %197 = call i32 @mlx5_core_destroy_qp(i32 %194, %struct.TYPE_12__* %196)
  store i32 %197, i32* %11, align 4
  %198 = load i32, i32* %11, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %191
  %201 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %202 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %9, align 8
  %203 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %201, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %205)
  br label %207

207:                                              ; preds = %200, %191
  br label %208

208:                                              ; preds = %207, %187
  %209 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %210 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @MLX5_QP_KERNEL, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %208
  %215 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %216 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %217 = call i32 @destroy_qp_kernel(%struct.mlx5_ib_dev* %215, %struct.mlx5_ib_qp* %216)
  br label %234

218:                                              ; preds = %208
  %219 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %220 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @MLX5_QP_USER, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %233

224:                                              ; preds = %218
  %225 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %226 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %227 = call %struct.TYPE_13__* @get_pd(%struct.mlx5_ib_qp* %226)
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 0
  %229 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %230 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %9, align 8
  %231 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %232 = call i32 @destroy_qp_user(%struct.mlx5_ib_dev* %225, i32* %228, %struct.mlx5_ib_qp* %229, %struct.mlx5_ib_qp_base* %230, %struct.ib_udata* %231)
  br label %233

233:                                              ; preds = %224, %218
  br label %234

234:                                              ; preds = %18, %233, %214
  ret void
}

declare dso_local i32 @destroy_rss_raw_qp_tir(%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*) #1

declare dso_local i32 @mlx5_core_qp_modify(i32, i32, i32, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @modify_raw_packet_qp(%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*, %struct.mlx5_modify_raw_qp_param*, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i32 @get_cqs(i64, i32, i32, %struct.mlx5_ib_cq**, %struct.mlx5_ib_cq**) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mlx5_ib_lock_cqs(%struct.mlx5_ib_cq*, %struct.mlx5_ib_cq*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @__mlx5_ib_cq_clean(%struct.mlx5_ib_cq*, i32, i32*) #1

declare dso_local i32* @to_msrq(i64) #1

declare dso_local i32 @mlx5_ib_unlock_cqs(%struct.mlx5_ib_cq*, %struct.mlx5_ib_cq*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @destroy_raw_packet_qp(%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*) #1

declare dso_local i32 @mlx5_core_destroy_qp(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @destroy_qp_kernel(%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*) #1

declare dso_local i32 @destroy_qp_user(%struct.mlx5_ib_dev*, i32*, %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp_base*, %struct.ib_udata*) #1

declare dso_local %struct.TYPE_13__* @get_pd(%struct.mlx5_ib_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
