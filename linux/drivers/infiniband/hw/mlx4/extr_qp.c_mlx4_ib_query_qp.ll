; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_mlx4_ib_query_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_mlx4_ib_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i64, i32 }
%struct.ib_qp_attr = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_9__, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32 }
%struct.ib_qp_init_attr = type { i32, i32, %struct.TYPE_9__ }
%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_qp = type { i64, i32, i32, i64, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.mlx4_qp_context = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@IB_QPS_RESET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i64 0, align 8
@IB_QPT_UC = common dso_local global i64 0, align 8
@IB_QPS_INIT = common dso_local global i64 0, align 8
@MLX4_QP_STATE_SQ_DRAINING = common dso_local global i32 0, align 4
@MLX4_IB_QP_BLOCK_MULTICAST_LOOPBACK = common dso_local global i32 0, align 4
@IB_QP_CREATE_BLOCK_MULTICAST_LOOPBACK = common dso_local global i32 0, align 4
@MLX4_IB_QP_LSO = common dso_local global i32 0, align 4
@IB_QP_CREATE_IPOIB_UD_LSO = common dso_local global i32 0, align 4
@MLX4_IB_QP_NETIF = common dso_local global i32 0, align 4
@IB_QP_CREATE_NETIF_QP = common dso_local global i32 0, align 4
@MLX4_WQE_CTRL_CQ_UPDATE = common dso_local global i32 0, align 4
@IB_SIGNAL_ALL_WR = common dso_local global i32 0, align 4
@IB_SIGNAL_REQ_WR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_query_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_qp_init_attr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca %struct.ib_qp_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_qp_init_attr*, align 8
  %10 = alloca %struct.mlx4_ib_dev*, align 8
  %11 = alloca %struct.mlx4_ib_qp*, align 8
  %12 = alloca %struct.mlx4_qp_context, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %6, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_qp_init_attr* %3, %struct.ib_qp_init_attr** %9, align 8
  %15 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %16 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.mlx4_ib_dev* @to_mdev(i32 %17)
  store %struct.mlx4_ib_dev* %18, %struct.mlx4_ib_dev** %10, align 8
  %19 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %20 = call %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp* %19)
  store %struct.mlx4_ib_qp* %20, %struct.mlx4_ib_qp** %11, align 8
  store i32 0, i32* %14, align 4
  %21 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %22 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %344

28:                                               ; preds = %4
  %29 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %30 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %29, i32 0, i32 4
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %33 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IB_QPS_RESET, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i64, i64* @IB_QPS_RESET, align 8
  %39 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %40 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %228

41:                                               ; preds = %28
  %42 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %43 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %46 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %45, i32 0, i32 8
  %47 = call i32 @mlx4_qp_query(i32 %44, i32* %46, %struct.mlx4_qp_context* %12)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %14, align 4
  br label %339

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %12, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be32_to_cpu(i32 %55)
  %57 = ashr i32 %56, 28
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i64 @to_ib_qp_state(i32 %58)
  %60 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %61 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %63 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %66 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %12, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 5
  %70 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %71 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %12, i32 0, i32 9
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @be32_to_cpu(i32 %73)
  %75 = ashr i32 %74, 11
  %76 = and i32 %75, 3
  %77 = call i32 @to_ib_mig_state(i32 %76)
  %78 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %79 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %78, i32 0, i32 23
  store i32 %77, i32* %79, align 8
  %80 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %12, i32 0, i32 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @be32_to_cpu(i32 %81)
  %83 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %84 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %12, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @be32_to_cpu(i32 %86)
  %88 = and i32 %87, 16777215
  %89 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %90 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %12, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @be32_to_cpu(i32 %92)
  %94 = and i32 %93, 16777215
  %95 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %96 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  %97 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %12, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @be32_to_cpu(i32 %98)
  %100 = and i32 %99, 16777215
  %101 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %102 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 8
  %103 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %12, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @be32_to_cpu(i32 %104)
  %106 = call i32 @to_ib_qp_access_flags(i32 %105)
  %107 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %108 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %107, i32 0, i32 22
  store i32 %106, i32* %108, align 4
  %109 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %110 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %109, i32 0, i32 7
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @IB_QPT_RC, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %122, label %115

115:                                              ; preds = %53
  %116 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %117 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %116, i32 0, i32 7
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @IB_QPT_UC, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %144

122:                                              ; preds = %115, %53
  %123 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %124 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %125 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %124, i32 0, i32 21
  %126 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %12, i32 0, i32 3
  %127 = call i32 @to_rdma_ah_attr(%struct.mlx4_ib_dev* %123, i32* %125, %struct.TYPE_10__* %126)
  %128 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %129 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %130 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %129, i32 0, i32 19
  %131 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %12, i32 0, i32 1
  %132 = call i32 @to_rdma_ah_attr(%struct.mlx4_ib_dev* %128, i32* %130, %struct.TYPE_10__* %131)
  %133 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %12, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 127
  %137 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %138 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %137, i32 0, i32 6
  store i32 %136, i32* %138, align 4
  %139 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %140 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %139, i32 0, i32 19
  %141 = call i32 @rdma_ah_get_port_num(i32* %140)
  %142 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %143 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %142, i32 0, i32 20
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %122, %115
  %145 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %12, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 127
  %149 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %150 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %149, i32 0, i32 7
  store i32 %148, i32* %150, align 8
  %151 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %152 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @IB_QPS_INIT, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %144
  %157 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %158 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %161 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %160, i32 0, i32 8
  store i32 %159, i32* %161, align 4
  br label %172

162:                                              ; preds = %144
  %163 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %12, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 64
  %167 = icmp ne i32 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 2, i32 1
  %170 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %171 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %170, i32 0, i32 8
  store i32 %169, i32* %171, align 4
  br label %172

172:                                              ; preds = %162, %156
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* @MLX4_QP_STATE_SQ_DRAINING, align 4
  %175 = icmp eq i32 %173, %174
  %176 = zext i1 %175 to i32
  %177 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %178 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %177, i32 0, i32 9
  store i32 %176, i32* %178, align 8
  %179 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %12, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @be32_to_cpu(i32 %180)
  %182 = ashr i32 %181, 21
  %183 = and i32 %182, 7
  %184 = shl i32 1, %183
  %185 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %186 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %185, i32 0, i32 10
  store i32 %184, i32* %186, align 4
  %187 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %12, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @be32_to_cpu(i32 %188)
  %190 = ashr i32 %189, 21
  %191 = and i32 %190, 7
  %192 = shl i32 1, %191
  %193 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %194 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %193, i32 0, i32 11
  store i32 %192, i32* %194, align 8
  %195 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %12, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @be32_to_cpu(i32 %196)
  %198 = ashr i32 %197, 24
  %199 = and i32 %198, 31
  %200 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %201 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %200, i32 0, i32 12
  store i32 %199, i32* %201, align 4
  %202 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %12, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = ashr i32 %204, 3
  %206 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %207 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %206, i32 0, i32 13
  store i32 %205, i32* %207, align 8
  %208 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %12, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @be32_to_cpu(i32 %209)
  %211 = ashr i32 %210, 16
  %212 = and i32 %211, 7
  %213 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %214 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %213, i32 0, i32 14
  store i32 %212, i32* %214, align 4
  %215 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %12, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @be32_to_cpu(i32 %216)
  %218 = ashr i32 %217, 13
  %219 = and i32 %218, 7
  %220 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %221 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %220, i32 0, i32 15
  store i32 %219, i32* %221, align 8
  %222 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %12, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = ashr i32 %224, 3
  %226 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %227 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %226, i32 0, i32 16
  store i32 %225, i32* %227, align 4
  br label %228

228:                                              ; preds = %172, %37
  %229 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %230 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %233 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %232, i32 0, i32 17
  store i64 %231, i64* %233, align 8
  %234 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %235 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %234, i32 0, i32 6
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %239 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %238, i32 0, i32 18
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 4
  store i32 %237, i32* %240, align 4
  %241 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %242 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %241, i32 0, i32 6
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %246 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %245, i32 0, i32 18
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 3
  store i32 %244, i32* %247, align 8
  %248 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %249 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %267, label %252

252:                                              ; preds = %228
  %253 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %254 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %253, i32 0, i32 5
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %258 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %257, i32 0, i32 18
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 2
  store i32 %256, i32* %259, align 4
  %260 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %261 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %260, i32 0, i32 5
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %265 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %264, i32 0, i32 18
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 1
  store i32 %263, i32* %266, align 8
  br label %274

267:                                              ; preds = %228
  %268 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %269 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %268, i32 0, i32 18
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 2
  store i32 0, i32* %270, align 4
  %271 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %272 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %271, i32 0, i32 18
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 1
  store i32 0, i32* %273, align 8
  br label %274

274:                                              ; preds = %267, %252
  %275 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %276 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %275, i32 0, i32 18
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 0
  store i64 0, i64* %277, align 8
  %278 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %279 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %278, i32 0, i32 2
  %280 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %281 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %280, i32 0, i32 18
  %282 = bitcast %struct.TYPE_9__* %279 to i8*
  %283 = bitcast %struct.TYPE_9__* %281 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %282, i8* align 8 %283, i64 24, i1 false)
  %284 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %285 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %284, i32 0, i32 1
  store i32 0, i32* %285, align 4
  %286 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %287 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @MLX4_IB_QP_BLOCK_MULTICAST_LOOPBACK, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %274
  %293 = load i32, i32* @IB_QP_CREATE_BLOCK_MULTICAST_LOOPBACK, align 4
  %294 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %295 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = or i32 %296, %293
  store i32 %297, i32* %295, align 4
  br label %298

298:                                              ; preds = %292, %274
  %299 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %300 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @MLX4_IB_QP_LSO, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %311

305:                                              ; preds = %298
  %306 = load i32, i32* @IB_QP_CREATE_IPOIB_UD_LSO, align 4
  %307 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %308 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = or i32 %309, %306
  store i32 %310, i32* %308, align 4
  br label %311

311:                                              ; preds = %305, %298
  %312 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %313 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @MLX4_IB_QP_NETIF, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %324

318:                                              ; preds = %311
  %319 = load i32, i32* @IB_QP_CREATE_NETIF_QP, align 4
  %320 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %321 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = or i32 %322, %319
  store i32 %323, i32* %321, align 4
  br label %324

324:                                              ; preds = %318, %311
  %325 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %326 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %325, i32 0, i32 3
  %327 = load i64, i64* %326, align 8
  %328 = load i32, i32* @MLX4_WQE_CTRL_CQ_UPDATE, align 4
  %329 = call i64 @cpu_to_be32(i32 %328)
  %330 = icmp eq i64 %327, %329
  br i1 %330, label %331, label %333

331:                                              ; preds = %324
  %332 = load i32, i32* @IB_SIGNAL_ALL_WR, align 4
  br label %335

333:                                              ; preds = %324
  %334 = load i32, i32* @IB_SIGNAL_REQ_WR, align 4
  br label %335

335:                                              ; preds = %333, %331
  %336 = phi i32 [ %332, %331 ], [ %334, %333 ]
  %337 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %338 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %337, i32 0, i32 0
  store i32 %336, i32* %338, align 8
  br label %339

339:                                              ; preds = %335, %50
  %340 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %341 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %340, i32 0, i32 4
  %342 = call i32 @mutex_unlock(i32* %341)
  %343 = load i32, i32* %14, align 4
  store i32 %343, i32* %5, align 4
  br label %344

344:                                              ; preds = %339, %25
  %345 = load i32, i32* %5, align 4
  ret i32 %345
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_qp_query(i32, i32*, %struct.mlx4_qp_context*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @to_ib_qp_state(i32) #1

declare dso_local i32 @to_ib_mig_state(i32) #1

declare dso_local i32 @to_ib_qp_access_flags(i32) #1

declare dso_local i32 @to_rdma_ah_attr(%struct.mlx4_ib_dev*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @rdma_ah_get_port_num(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
