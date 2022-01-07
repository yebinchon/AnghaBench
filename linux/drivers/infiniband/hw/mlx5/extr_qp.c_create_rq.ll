; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_create_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_create_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.mlx5_ib_rwq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ib_wq_init_attr = type { i32, i32 }
%struct.mlx5_ib_dev = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@create_rq_in = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uid = common dso_local global %struct.ib_pd* null, align 8
@ctx = common dso_local global i8* null, align 8
@mem_rq_type = common dso_local global %struct.ib_pd* null, align 8
@MLX5_RQC_MEM_RQ_TYPE_MEMORY_RQ_INLINE = common dso_local global i32 0, align 4
@user_index = common dso_local global %struct.ib_pd* null, align 8
@cqn = common dso_local global %struct.ib_pd* null, align 8
@state = common dso_local global %struct.ib_pd* null, align 8
@MLX5_RQC_STATE_RST = common dso_local global i32 0, align 4
@flush_in_error_en = common dso_local global %struct.ib_pd* null, align 8
@wq_type = common dso_local global %struct.ib_pd* null, align 8
@MLX5_IB_WQ_FLAGS_STRIDING_RQ = common dso_local global i32 0, align 4
@MLX5_WQ_TYPE_CYCLIC_STRIDING_RQ = common dso_local global i32 0, align 4
@MLX5_WQ_TYPE_CYCLIC = common dso_local global i32 0, align 4
@IB_WQ_FLAGS_PCI_WRITE_END_PADDING = common dso_local global i32 0, align 4
@end_pad = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Scatter end padding is not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@end_padding_mode = common dso_local global %struct.ib_pd* null, align 8
@MLX5_WQ_END_PAD_MODE_ALIGN = common dso_local global i32 0, align 4
@log_wq_stride = common dso_local global %struct.ib_pd* null, align 8
@two_byte_shift_en = common dso_local global %struct.ib_pd* null, align 8
@log_wqe_stride_size = common dso_local global %struct.ib_pd* null, align 8
@MLX5_MIN_SINGLE_STRIDE_LOG_NUM_BYTES = common dso_local global i32 0, align 4
@log_wqe_num_of_strides = common dso_local global %struct.ib_pd* null, align 8
@MLX5_MIN_SINGLE_WQE_LOG_NUM_STRIDES = common dso_local global i32 0, align 4
@log_wq_sz = common dso_local global %struct.ib_pd* null, align 8
@page_offset = common dso_local global %struct.ib_pd* null, align 8
@log_wq_pg_sz = common dso_local global %struct.ib_pd* null, align 8
@wq_signature = common dso_local global %struct.ib_pd* null, align 8
@dbr_addr = common dso_local global i32 0, align 4
@eth_net_offloads = common dso_local global i32 0, align 4
@IB_WQ_FLAGS_CVLAN_STRIPPING = common dso_local global i32 0, align 4
@vlan_cap = common dso_local global %struct.ib_pd* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"VLAN offloads are not supported\0A\00", align 1
@vsd = common dso_local global %struct.ib_pd* null, align 8
@IB_WQ_FLAGS_SCATTER_FCS = common dso_local global i32 0, align 4
@scatter_fcs = common dso_local global %struct.ib_pd* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Scatter FCS is not supported\0A\00", align 1
@IB_WQ_FLAGS_DELAY_DROP = common dso_local global i32 0, align 4
@IB_RAW_PACKET_CAP_DELAY_DROP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Delay drop is not supported\0A\00", align 1
@delay_drop_en = common dso_local global %struct.ib_pd* null, align 8
@pas = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to enable delay drop err=%d\0A\00", align 1
@MLX5_IB_WQ_FLAGS_DELAY_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_rwq*, %struct.ib_pd*, %struct.ib_wq_init_attr*)* @create_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_rq(%struct.mlx5_ib_rwq* %0, %struct.ib_pd* %1, %struct.ib_wq_init_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_rwq*, align 8
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca %struct.ib_wq_init_attr*, align 8
  %8 = alloca %struct.mlx5_ib_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx5_ib_rwq* %0, %struct.mlx5_ib_rwq** %5, align 8
  store %struct.ib_pd* %1, %struct.ib_pd** %6, align 8
  store %struct.ib_wq_init_attr* %2, %struct.ib_wq_init_attr** %7, align 8
  %16 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %17 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.mlx5_ib_dev* @to_mdev(i32 %18)
  store %struct.mlx5_ib_dev* %19, %struct.mlx5_ib_dev** %8, align 8
  %20 = load i8*, i8** @create_rq_in, align 8
  %21 = call i32 @MLX5_ST_SZ_BYTES(i8* %20)
  %22 = sext i32 %21 to i64
  %23 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = add i64 %22, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kvzalloc(i32 %30, i32 %31)
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %357

38:                                               ; preds = %3
  %39 = load i8*, i8** @create_rq_in, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load %struct.ib_pd*, %struct.ib_pd** @uid, align 8
  %42 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %43 = call %struct.TYPE_11__* @to_mpd(%struct.ib_pd* %42)
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @MLX5_SET(i8* %39, i8* %40, %struct.ib_pd* %41, i32 %45)
  %47 = load i8*, i8** @create_rq_in, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i8*, i8** @ctx, align 8
  %50 = call i8* @MLX5_ADDR_OF(i8* %47, i8* %48, i8* %49)
  store i8* %50, i8** %12, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load %struct.ib_pd*, %struct.ib_pd** @mem_rq_type, align 8
  %54 = load i32, i32* @MLX5_RQC_MEM_RQ_TYPE_MEMORY_RQ_INLINE, align 4
  %55 = call i32 @MLX5_SET(i8* %51, i8* %52, %struct.ib_pd* %53, i32 %54)
  %56 = load i8*, i8** %12, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load %struct.ib_pd*, %struct.ib_pd** @user_index, align 8
  %59 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %60 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @MLX5_SET(i8* %56, i8* %57, %struct.ib_pd* %58, i32 %61)
  %63 = load i8*, i8** %12, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load %struct.ib_pd*, %struct.ib_pd** @cqn, align 8
  %66 = load %struct.ib_wq_init_attr*, %struct.ib_wq_init_attr** %7, align 8
  %67 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.TYPE_12__* @to_mcq(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @MLX5_SET(i8* %63, i8* %64, %struct.ib_pd* %65, i32 %72)
  %74 = load i8*, i8** %12, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = load %struct.ib_pd*, %struct.ib_pd** @state, align 8
  %77 = load i32, i32* @MLX5_RQC_STATE_RST, align 4
  %78 = call i32 @MLX5_SET(i8* %74, i8* %75, %struct.ib_pd* %76, i32 %77)
  %79 = load i8*, i8** %12, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load %struct.ib_pd*, %struct.ib_pd** @flush_in_error_en, align 8
  %82 = call i32 @MLX5_SET(i8* %79, i8* %80, %struct.ib_pd* %81, i32 1)
  %83 = load i8*, i8** %12, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = call i8* @MLX5_ADDR_OF(i8* %83, i8* %84, i8* %85)
  store i8* %86, i8** %13, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = load %struct.ib_pd*, %struct.ib_pd** @wq_type, align 8
  %90 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %91 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MLX5_IB_WQ_FLAGS_STRIDING_RQ, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %38
  %97 = load i32, i32* @MLX5_WQ_TYPE_CYCLIC_STRIDING_RQ, align 4
  br label %100

98:                                               ; preds = %38
  %99 = load i32, i32* @MLX5_WQ_TYPE_CYCLIC, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = call i32 @MLX5_SET(i8* %87, i8* %88, %struct.ib_pd* %89, i32 %101)
  %103 = load %struct.ib_wq_init_attr*, %struct.ib_wq_init_attr** %7, align 8
  %104 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @IB_WQ_FLAGS_PCI_WRITE_END_PADDING, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %100
  %110 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %111 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @end_pad, align 4
  %114 = call i32 @MLX5_CAP_GEN(i32 %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %109
  %117 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %118 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %117, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %119 = load i32, i32* @EOPNOTSUPP, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %15, align 4
  br label %353

121:                                              ; preds = %109
  %122 = load i8*, i8** %13, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = load %struct.ib_pd*, %struct.ib_pd** @end_padding_mode, align 8
  %125 = load i32, i32* @MLX5_WQ_END_PAD_MODE_ALIGN, align 4
  %126 = call i32 @MLX5_SET(i8* %122, i8* %123, %struct.ib_pd* %124, i32 %125)
  br label %127

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127, %100
  %129 = load i8*, i8** %13, align 8
  %130 = load i8*, i8** %13, align 8
  %131 = load %struct.ib_pd*, %struct.ib_pd** @log_wq_stride, align 8
  %132 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %133 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @MLX5_SET(i8* %129, i8* %130, %struct.ib_pd* %131, i32 %134)
  %136 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %137 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @MLX5_IB_WQ_FLAGS_STRIDING_RQ, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %168

142:                                              ; preds = %128
  %143 = load i8*, i8** %13, align 8
  %144 = load i8*, i8** %13, align 8
  %145 = load %struct.ib_pd*, %struct.ib_pd** @two_byte_shift_en, align 8
  %146 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %147 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @MLX5_SET(i8* %143, i8* %144, %struct.ib_pd* %145, i32 %148)
  %150 = load i8*, i8** %13, align 8
  %151 = load i8*, i8** %13, align 8
  %152 = load %struct.ib_pd*, %struct.ib_pd** @log_wqe_stride_size, align 8
  %153 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %154 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @MLX5_MIN_SINGLE_STRIDE_LOG_NUM_BYTES, align 4
  %157 = sub nsw i32 %155, %156
  %158 = call i32 @MLX5_SET(i8* %150, i8* %151, %struct.ib_pd* %152, i32 %157)
  %159 = load i8*, i8** %13, align 8
  %160 = load i8*, i8** %13, align 8
  %161 = load %struct.ib_pd*, %struct.ib_pd** @log_wqe_num_of_strides, align 8
  %162 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %163 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @MLX5_MIN_SINGLE_WQE_LOG_NUM_STRIDES, align 4
  %166 = sub nsw i32 %164, %165
  %167 = call i32 @MLX5_SET(i8* %159, i8* %160, %struct.ib_pd* %161, i32 %166)
  br label %168

168:                                              ; preds = %142, %128
  %169 = load i8*, i8** %13, align 8
  %170 = load i8*, i8** %13, align 8
  %171 = load %struct.ib_pd*, %struct.ib_pd** @log_wq_sz, align 8
  %172 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %173 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %172, i32 0, i32 7
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @MLX5_SET(i8* %169, i8* %170, %struct.ib_pd* %171, i32 %174)
  %176 = load i8*, i8** %13, align 8
  %177 = load i8*, i8** %13, align 8
  %178 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %179 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %180 = call %struct.TYPE_11__* @to_mpd(%struct.ib_pd* %179)
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @MLX5_SET(i8* %176, i8* %177, %struct.ib_pd* %178, i32 %182)
  %184 = load i8*, i8** %13, align 8
  %185 = load i8*, i8** %13, align 8
  %186 = load %struct.ib_pd*, %struct.ib_pd** @page_offset, align 8
  %187 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %188 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %187, i32 0, i32 8
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @MLX5_SET(i8* %184, i8* %185, %struct.ib_pd* %186, i32 %189)
  %191 = load i8*, i8** %13, align 8
  %192 = load i8*, i8** %13, align 8
  %193 = load %struct.ib_pd*, %struct.ib_pd** @log_wq_pg_sz, align 8
  %194 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %195 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %194, i32 0, i32 9
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @MLX5_SET(i8* %191, i8* %192, %struct.ib_pd* %193, i32 %196)
  %198 = load i8*, i8** %13, align 8
  %199 = load i8*, i8** %13, align 8
  %200 = load %struct.ib_pd*, %struct.ib_pd** @wq_signature, align 8
  %201 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %202 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %201, i32 0, i32 10
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @MLX5_SET(i8* %198, i8* %199, %struct.ib_pd* %200, i32 %203)
  %205 = load i8*, i8** %13, align 8
  %206 = load i8*, i8** %13, align 8
  %207 = load i32, i32* @dbr_addr, align 4
  %208 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %209 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %208, i32 0, i32 14
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @MLX5_SET64(i8* %205, i8* %206, i32 %207, i32 %211)
  %213 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %214 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @eth_net_offloads, align 4
  %217 = call i32 @MLX5_CAP_GEN(i32 %215, i32 %216)
  store i32 %217, i32* %9, align 4
  %218 = load %struct.ib_wq_init_attr*, %struct.ib_wq_init_attr** %7, align 8
  %219 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @IB_WQ_FLAGS_CVLAN_STRIPPING, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %240

224:                                              ; preds = %168
  %225 = load i32, i32* %9, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %224
  %228 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %229 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.ib_pd*, %struct.ib_pd** @vlan_cap, align 8
  %232 = call i64 @MLX5_CAP_ETH(i32 %230, %struct.ib_pd* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %239, label %234

234:                                              ; preds = %227, %224
  %235 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %236 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %235, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %237 = load i32, i32* @EOPNOTSUPP, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %15, align 4
  br label %353

239:                                              ; preds = %227
  br label %245

240:                                              ; preds = %168
  %241 = load i8*, i8** %12, align 8
  %242 = load i8*, i8** %12, align 8
  %243 = load %struct.ib_pd*, %struct.ib_pd** @vsd, align 8
  %244 = call i32 @MLX5_SET(i8* %241, i8* %242, %struct.ib_pd* %243, i32 1)
  br label %245

245:                                              ; preds = %240, %239
  %246 = load %struct.ib_wq_init_attr*, %struct.ib_wq_init_attr** %7, align 8
  %247 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @IB_WQ_FLAGS_SCATTER_FCS, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %272

252:                                              ; preds = %245
  %253 = load i32, i32* %9, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %252
  %256 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %257 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.ib_pd*, %struct.ib_pd** @scatter_fcs, align 8
  %260 = call i64 @MLX5_CAP_ETH(i32 %258, %struct.ib_pd* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %267, label %262

262:                                              ; preds = %255, %252
  %263 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %264 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %263, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %265 = load i32, i32* @EOPNOTSUPP, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %15, align 4
  br label %353

267:                                              ; preds = %255
  %268 = load i8*, i8** %12, align 8
  %269 = load i8*, i8** %12, align 8
  %270 = load %struct.ib_pd*, %struct.ib_pd** @scatter_fcs, align 8
  %271 = call i32 @MLX5_SET(i8* %268, i8* %269, %struct.ib_pd* %270, i32 1)
  br label %272

272:                                              ; preds = %267, %245
  %273 = load %struct.ib_wq_init_attr*, %struct.ib_wq_init_attr** %7, align 8
  %274 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @IB_WQ_FLAGS_DELAY_DROP, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %298

279:                                              ; preds = %272
  %280 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %281 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @IB_RAW_PACKET_CAP_DELAY_DROP, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %293, label %288

288:                                              ; preds = %279
  %289 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %290 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %289, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %291 = load i32, i32* @EOPNOTSUPP, align 4
  %292 = sub nsw i32 0, %291
  store i32 %292, i32* %15, align 4
  br label %353

293:                                              ; preds = %279
  %294 = load i8*, i8** %12, align 8
  %295 = load i8*, i8** %12, align 8
  %296 = load %struct.ib_pd*, %struct.ib_pd** @delay_drop_en, align 8
  %297 = call i32 @MLX5_SET(i8* %294, i8* %295, %struct.ib_pd* %296, i32 1)
  br label %298

298:                                              ; preds = %293, %272
  %299 = load i8*, i8** %13, align 8
  %300 = load i8*, i8** %13, align 8
  %301 = load i8*, i8** @pas, align 8
  %302 = call i8* @MLX5_ADDR_OF(i8* %299, i8* %300, i8* %301)
  %303 = bitcast i8* %302 to i32*
  store i32* %303, i32** %10, align 8
  %304 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %305 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %306 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %305, i32 0, i32 13
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %309 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %308, i32 0, i32 12
  %310 = load i32, i32* %309, align 4
  %311 = load i32*, i32** %10, align 8
  %312 = call i32 @mlx5_ib_populate_pas(%struct.mlx5_ib_dev* %304, i32 %307, i32 %310, i32* %311, i32 0)
  %313 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %314 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = load i8*, i8** %11, align 8
  %317 = load i32, i32* %14, align 4
  %318 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %319 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %318, i32 0, i32 11
  %320 = call i32 @mlx5_core_create_rq_tracked(i32 %315, i8* %316, i32 %317, i32* %319)
  store i32 %320, i32* %15, align 4
  %321 = load i32, i32* %15, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %352, label %323

323:                                              ; preds = %298
  %324 = load %struct.ib_wq_init_attr*, %struct.ib_wq_init_attr** %7, align 8
  %325 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @IB_WQ_FLAGS_DELAY_DROP, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %352

330:                                              ; preds = %323
  %331 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %332 = call i32 @set_delay_drop(%struct.mlx5_ib_dev* %331)
  store i32 %332, i32* %15, align 4
  %333 = load i32, i32* %15, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %345

335:                                              ; preds = %330
  %336 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %337 = load i32, i32* %15, align 4
  %338 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %336, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %337)
  %339 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %340 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %343 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %342, i32 0, i32 11
  %344 = call i32 @mlx5_core_destroy_rq_tracked(i32 %341, i32* %343)
  br label %351

345:                                              ; preds = %330
  %346 = load i32, i32* @MLX5_IB_WQ_FLAGS_DELAY_DROP, align 4
  %347 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %348 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 4
  %350 = or i32 %349, %346
  store i32 %350, i32* %348, align 4
  br label %351

351:                                              ; preds = %345, %335
  br label %352

352:                                              ; preds = %351, %323, %298
  br label %353

353:                                              ; preds = %352, %288, %262, %234, %116
  %354 = load i8*, i8** %11, align 8
  %355 = call i32 @kvfree(i8* %354)
  %356 = load i32, i32* %15, align 4
  store i32 %356, i32* %4, align 4
  br label %357

357:                                              ; preds = %353, %35
  %358 = load i32, i32* %4, align 4
  ret i32 %358
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, %struct.ib_pd*, i32) #1

declare dso_local %struct.TYPE_11__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_12__* @to_mcq(i32) #1

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local i64 @MLX5_CAP_ETH(i32, %struct.ib_pd*) #1

declare dso_local i32 @mlx5_ib_populate_pas(%struct.mlx5_ib_dev*, i32, i32, i32*, i32) #1

declare dso_local i32 @mlx5_core_create_rq_tracked(i32, i8*, i32, i32*) #1

declare dso_local i32 @set_delay_drop(%struct.mlx5_ib_dev*) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_core_destroy_rq_tracked(i32, i32*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
