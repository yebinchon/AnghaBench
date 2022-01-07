; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_devx_is_valid_obj_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_devx_is_valid_obj_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uobject = type { i64 }
%struct.mlx5_ib_dev = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.mlx5_core_srq = type { i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.mlx5_ib_qp = type { i32, %struct.TYPE_18__, %struct.TYPE_17__, %struct.mlx5_ib_raw_packet_qp }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32 }
%struct.mlx5_ib_raw_packet_qp = type { %struct.mlx5_ib_sq, %struct.mlx5_ib_rq }
%struct.mlx5_ib_sq = type { i32, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.mlx5_ib_rq = type { i32, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_20__ = type { %struct.mlx5_core_srq }
%struct.TYPE_22__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.devx_obj = type { i32 }

@MLX5_CMD_OP_CREATE_CQ = common dso_local global i32 0, align 4
@MLX5_CMD_OP_CREATE_XRC_SRQ = common dso_local global i32 0, align 4
@MLX5_CMD_OP_CREATE_XRQ = common dso_local global i32 0, align 4
@MLX5_CMD_OP_CREATE_SRQ = common dso_local global i32 0, align 4
@MLX5_CMD_OP_CREATE_RMP = common dso_local global i32 0, align 4
@IB_QPT_RAW_PACKET = common dso_local global i32 0, align 4
@MLX5_IB_QP_UNDERLAY = common dso_local global i32 0, align 4
@MLX5_CMD_OP_CREATE_RQ = common dso_local global i32 0, align 4
@MLX5_CMD_OP_CREATE_SQ = common dso_local global i32 0, align 4
@MLX5_CMD_OP_CREATE_TIR = common dso_local global i32 0, align 4
@MLX5_CMD_OP_CREATE_TIS = common dso_local global i32 0, align 4
@MLX5_IB_QPT_DCT = common dso_local global i32 0, align 4
@MLX5_CMD_OP_CREATE_DCT = common dso_local global i32 0, align 4
@MLX5_CMD_OP_CREATE_QP = common dso_local global i32 0, align 4
@MLX5_CMD_OP_CREATE_RQT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*, %struct.ib_uobject*, i8*)* @devx_is_valid_obj_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devx_is_valid_obj_id(%struct.uverbs_attr_bundle* %0, %struct.ib_uobject* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uverbs_attr_bundle*, align 8
  %6 = alloca %struct.ib_uobject*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlx5_ib_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_core_srq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5_ib_qp*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx5_ib_raw_packet_qp*, align 8
  %15 = alloca %struct.mlx5_ib_rq*, align 8
  %16 = alloca %struct.mlx5_ib_sq*, align 8
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %5, align 8
  store %struct.ib_uobject* %1, %struct.ib_uobject** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %5, align 8
  %18 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %17, i32 0, i32 0
  %19 = call %struct.mlx5_ib_dev* @mlx5_udata_to_mdev(i32* %18)
  store %struct.mlx5_ib_dev* %19, %struct.mlx5_ib_dev** %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @devx_get_obj_id(i8* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %206

25:                                               ; preds = %3
  %26 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %27 = call i32 @uobj_get_object_id(%struct.ib_uobject* %26)
  switch i32 %27, label %205 [
    i32 132, label %28
    i32 129, label %41
    i32 131, label %80
    i32 128, label %170
    i32 130, label %183
    i32 135, label %195
  ]

28:                                               ; preds = %25
  %29 = load i32, i32* @MLX5_CMD_OP_CREATE_CQ, align 4
  %30 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %31 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.TYPE_23__* @to_mcq(i64 %32)
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @get_enc_obj_id(i32 %29, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %4, align 4
  br label %206

41:                                               ; preds = %25
  %42 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %43 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call %struct.TYPE_20__* @to_msrq(i64 %44)
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  store %struct.mlx5_core_srq* %46, %struct.mlx5_core_srq** %10, align 8
  %47 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %10, align 8
  %48 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %55 [
    i32 133, label %51
    i32 134, label %53
  ]

51:                                               ; preds = %41
  %52 = load i32, i32* @MLX5_CMD_OP_CREATE_XRC_SRQ, align 4
  store i32 %52, i32* %11, align 4
  br label %67

53:                                               ; preds = %41
  %54 = load i32, i32* @MLX5_CMD_OP_CREATE_XRQ, align 4
  store i32 %54, i32* %11, align 4
  br label %67

55:                                               ; preds = %41
  %56 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %57 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* @MLX5_CMD_OP_CREATE_SRQ, align 4
  store i32 %63, i32* %11, align 4
  br label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @MLX5_CMD_OP_CREATE_RMP, align 4
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %64, %62
  br label %67

67:                                               ; preds = %66, %53, %51
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %70 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call %struct.TYPE_20__* @to_msrq(i64 %71)
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @get_enc_obj_id(i32 %68, i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %4, align 4
  br label %206

80:                                               ; preds = %25
  %81 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %82 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call %struct.mlx5_ib_qp* @to_mqp(i64 %83)
  store %struct.mlx5_ib_qp* %84, %struct.mlx5_ib_qp** %12, align 8
  %85 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %86 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @IB_QPT_RAW_PACKET, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %99, label %92

92:                                               ; preds = %80
  %93 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %94 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @MLX5_IB_QP_UNDERLAY, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %144

99:                                               ; preds = %92, %80
  %100 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %101 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %100, i32 0, i32 3
  store %struct.mlx5_ib_raw_packet_qp* %101, %struct.mlx5_ib_raw_packet_qp** %14, align 8
  %102 = load %struct.mlx5_ib_raw_packet_qp*, %struct.mlx5_ib_raw_packet_qp** %14, align 8
  %103 = getelementptr inbounds %struct.mlx5_ib_raw_packet_qp, %struct.mlx5_ib_raw_packet_qp* %102, i32 0, i32 1
  store %struct.mlx5_ib_rq* %103, %struct.mlx5_ib_rq** %15, align 8
  %104 = load %struct.mlx5_ib_raw_packet_qp*, %struct.mlx5_ib_raw_packet_qp** %14, align 8
  %105 = getelementptr inbounds %struct.mlx5_ib_raw_packet_qp, %struct.mlx5_ib_raw_packet_qp* %104, i32 0, i32 0
  store %struct.mlx5_ib_sq* %105, %struct.mlx5_ib_sq** %16, align 8
  %106 = load i32, i32* @MLX5_CMD_OP_CREATE_RQ, align 4
  %107 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %15, align 8
  %108 = getelementptr inbounds %struct.mlx5_ib_rq, %struct.mlx5_ib_rq* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @get_enc_obj_id(i32 %106, i32 %111)
  %113 = load i32, i32* %9, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %141, label %115

115:                                              ; preds = %99
  %116 = load i32, i32* @MLX5_CMD_OP_CREATE_SQ, align 4
  %117 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %16, align 8
  %118 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @get_enc_obj_id(i32 %116, i32 %121)
  %123 = load i32, i32* %9, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %141, label %125

125:                                              ; preds = %115
  %126 = load i32, i32* @MLX5_CMD_OP_CREATE_TIR, align 4
  %127 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %15, align 8
  %128 = getelementptr inbounds %struct.mlx5_ib_rq, %struct.mlx5_ib_rq* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @get_enc_obj_id(i32 %126, i32 %129)
  %131 = load i32, i32* %9, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %141, label %133

133:                                              ; preds = %125
  %134 = load i32, i32* @MLX5_CMD_OP_CREATE_TIS, align 4
  %135 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %16, align 8
  %136 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @get_enc_obj_id(i32 %134, i32 %137)
  %139 = load i32, i32* %9, align 4
  %140 = icmp eq i32 %138, %139
  br label %141

141:                                              ; preds = %133, %125, %115, %99
  %142 = phi i1 [ true, %125 ], [ true, %115 ], [ true, %99 ], [ %140, %133 ]
  %143 = zext i1 %142 to i32
  store i32 %143, i32* %4, align 4
  br label %206

144:                                              ; preds = %92
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* @MLX5_IB_QPT_DCT, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %160

148:                                              ; preds = %144
  %149 = load i32, i32* @MLX5_CMD_OP_CREATE_DCT, align 4
  %150 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %151 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @get_enc_obj_id(i32 %149, i32 %155)
  %157 = load i32, i32* %9, align 4
  %158 = icmp eq i32 %156, %157
  %159 = zext i1 %158 to i32
  store i32 %159, i32* %4, align 4
  br label %206

160:                                              ; preds = %144
  %161 = load i32, i32* @MLX5_CMD_OP_CREATE_QP, align 4
  %162 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %163 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @get_enc_obj_id(i32 %161, i32 %165)
  %167 = load i32, i32* %9, align 4
  %168 = icmp eq i32 %166, %167
  %169 = zext i1 %168 to i32
  store i32 %169, i32* %4, align 4
  br label %206

170:                                              ; preds = %25
  %171 = load i32, i32* @MLX5_CMD_OP_CREATE_RQ, align 4
  %172 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %173 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call %struct.TYPE_22__* @to_mrwq(i64 %174)
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @get_enc_obj_id(i32 %171, i32 %178)
  %180 = load i32, i32* %9, align 4
  %181 = icmp eq i32 %179, %180
  %182 = zext i1 %181 to i32
  store i32 %182, i32* %4, align 4
  br label %206

183:                                              ; preds = %25
  %184 = load i32, i32* @MLX5_CMD_OP_CREATE_RQT, align 4
  %185 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %186 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = call %struct.TYPE_21__* @to_mrwq_ind_table(i64 %187)
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @get_enc_obj_id(i32 %184, i32 %190)
  %192 = load i32, i32* %9, align 4
  %193 = icmp eq i32 %191, %192
  %194 = zext i1 %193 to i32
  store i32 %194, i32* %4, align 4
  br label %206

195:                                              ; preds = %25
  %196 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %197 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = inttoptr i64 %198 to %struct.devx_obj*
  %200 = getelementptr inbounds %struct.devx_obj, %struct.devx_obj* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %9, align 4
  %203 = icmp eq i32 %201, %202
  %204 = zext i1 %203 to i32
  store i32 %204, i32* %4, align 4
  br label %206

205:                                              ; preds = %25
  store i32 0, i32* %4, align 4
  br label %206

206:                                              ; preds = %205, %195, %183, %170, %160, %148, %141, %67, %28, %24
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local %struct.mlx5_ib_dev* @mlx5_udata_to_mdev(i32*) #1

declare dso_local i32 @devx_get_obj_id(i8*) #1

declare dso_local i32 @uobj_get_object_id(%struct.ib_uobject*) #1

declare dso_local i32 @get_enc_obj_id(i32, i32) #1

declare dso_local %struct.TYPE_23__* @to_mcq(i64) #1

declare dso_local %struct.TYPE_20__* @to_msrq(i64) #1

declare dso_local %struct.mlx5_ib_qp* @to_mqp(i64) #1

declare dso_local %struct.TYPE_22__* @to_mrwq(i64) #1

declare dso_local %struct.TYPE_21__* @to_mrwq_ind_table(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
