; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_create_raw_packet_qp_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_create_raw_packet_qp_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_rq = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.mlx5_ib_qp* }
%struct.mlx5_ib_qp = type { i32 }
%struct.TYPE_4__ = type { i32 }

@create_qp_in = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@create_rq_in = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uid = common dso_local global %struct.ib_pd* null, align 8
@ctx = common dso_local global i8* null, align 8
@MLX5_IB_RQ_CVLAN_STRIPPING = common dso_local global i32 0, align 4
@vsd = common dso_local global %struct.ib_pd* null, align 8
@mem_rq_type = common dso_local global %struct.ib_pd* null, align 8
@MLX5_RQC_MEM_RQ_TYPE_MEMORY_RQ_INLINE = common dso_local global i32 0, align 4
@state = common dso_local global %struct.ib_pd* null, align 8
@MLX5_RQC_STATE_RST = common dso_local global i32 0, align 4
@flush_in_error_en = common dso_local global %struct.ib_pd* null, align 8
@user_index = common dso_local global %struct.ib_pd* null, align 8
@cqn = common dso_local global %struct.ib_pd* null, align 8
@cqn_rcv = common dso_local global %struct.ib_pd* null, align 8
@MLX5_IB_QP_CAP_SCATTER_FCS = common dso_local global i32 0, align 4
@scatter_fcs = common dso_local global %struct.ib_pd* null, align 8
@wq_type = common dso_local global %struct.ib_pd* null, align 8
@MLX5_WQ_TYPE_CYCLIC = common dso_local global i32 0, align 4
@MLX5_IB_RQ_PCI_WRITE_END_PADDING = common dso_local global i32 0, align 4
@end_padding_mode = common dso_local global %struct.ib_pd* null, align 8
@MLX5_WQ_END_PAD_MODE_ALIGN = common dso_local global i32 0, align 4
@page_offset = common dso_local global %struct.ib_pd* null, align 8
@dbr_addr = common dso_local global i32 0, align 4
@log_wq_stride = common dso_local global %struct.ib_pd* null, align 8
@log_rq_stride = common dso_local global %struct.ib_pd* null, align 8
@log_wq_pg_sz = common dso_local global %struct.ib_pd* null, align 8
@log_page_size = common dso_local global %struct.ib_pd* null, align 8
@log_wq_sz = common dso_local global %struct.ib_pd* null, align 8
@log_rq_size = common dso_local global %struct.ib_pd* null, align 8
@qpc = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_rq*, i8*, i64, %struct.ib_pd*)* @create_raw_packet_qp_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_raw_packet_qp_rq(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_rq* %1, i8* %2, i64 %3, %struct.ib_pd* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_ib_dev*, align 8
  %8 = alloca %struct.mlx5_ib_rq*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ib_pd*, align 8
  %12 = alloca %struct.mlx5_ib_qp*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %7, align 8
  store %struct.mlx5_ib_rq* %1, %struct.mlx5_ib_rq** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.ib_pd* %4, %struct.ib_pd** %11, align 8
  %22 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %8, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_rq, %struct.mlx5_ib_rq* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %24, align 8
  store %struct.mlx5_ib_qp* %25, %struct.mlx5_ib_qp** %12, align 8
  %26 = load i8*, i8** @create_qp_in, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %18, align 8
  %29 = call i8* @MLX5_ADDR_OF(i8* %26, i8* %27, i8* %28)
  store i8* %29, i8** %18, align 8
  %30 = load i8*, i8** %18, align 8
  %31 = call i64 @get_rq_pas_size(i8* %30)
  store i64 %31, i64* %19, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %19, align 8
  %34 = load i8*, i8** @create_qp_in, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = call i64 @MLX5_BYTE_OFF(i8* %34, i8* %35)
  %37 = add i64 %33, %36
  %38 = icmp ult i64 %32, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %5
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %217

42:                                               ; preds = %5
  %43 = load i8*, i8** @create_rq_in, align 8
  %44 = call i64 @MLX5_ST_SZ_BYTES(i8* %43)
  %45 = load i64, i64* %19, align 8
  %46 = add i64 %44, %45
  store i64 %46, i64* %20, align 8
  %47 = load i64, i64* %20, align 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i8* @kvzalloc(i64 %47, i32 %48)
  store i8* %49, i8** %15, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %217

55:                                               ; preds = %42
  %56 = load i8*, i8** @create_rq_in, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = load %struct.ib_pd*, %struct.ib_pd** @uid, align 8
  %59 = load %struct.ib_pd*, %struct.ib_pd** %11, align 8
  %60 = call %struct.TYPE_4__* @to_mpd(%struct.ib_pd* %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @MLX5_SET(i8* %56, i8* %57, %struct.ib_pd* %58, i32 %62)
  %64 = load i8*, i8** @create_rq_in, align 8
  %65 = load i8*, i8** %15, align 8
  %66 = load i8*, i8** @ctx, align 8
  %67 = call i8* @MLX5_ADDR_OF(i8* %64, i8* %65, i8* %66)
  store i8* %67, i8** %16, align 8
  %68 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %8, align 8
  %69 = getelementptr inbounds %struct.mlx5_ib_rq, %struct.mlx5_ib_rq* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @MLX5_IB_RQ_CVLAN_STRIPPING, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %55
  %75 = load i8*, i8** %16, align 8
  %76 = load i8*, i8** %16, align 8
  %77 = load %struct.ib_pd*, %struct.ib_pd** @vsd, align 8
  %78 = call i32 @MLX5_SET(i8* %75, i8* %76, %struct.ib_pd* %77, i32 1)
  br label %79

79:                                               ; preds = %74, %55
  %80 = load i8*, i8** %16, align 8
  %81 = load i8*, i8** %16, align 8
  %82 = load %struct.ib_pd*, %struct.ib_pd** @mem_rq_type, align 8
  %83 = load i32, i32* @MLX5_RQC_MEM_RQ_TYPE_MEMORY_RQ_INLINE, align 4
  %84 = call i32 @MLX5_SET(i8* %80, i8* %81, %struct.ib_pd* %82, i32 %83)
  %85 = load i8*, i8** %16, align 8
  %86 = load i8*, i8** %16, align 8
  %87 = load %struct.ib_pd*, %struct.ib_pd** @state, align 8
  %88 = load i32, i32* @MLX5_RQC_STATE_RST, align 4
  %89 = call i32 @MLX5_SET(i8* %85, i8* %86, %struct.ib_pd* %87, i32 %88)
  %90 = load i8*, i8** %16, align 8
  %91 = load i8*, i8** %16, align 8
  %92 = load %struct.ib_pd*, %struct.ib_pd** @flush_in_error_en, align 8
  %93 = call i32 @MLX5_SET(i8* %90, i8* %91, %struct.ib_pd* %92, i32 1)
  %94 = load i8*, i8** %16, align 8
  %95 = load i8*, i8** %16, align 8
  %96 = load %struct.ib_pd*, %struct.ib_pd** @user_index, align 8
  %97 = load i8*, i8** %18, align 8
  %98 = load i8*, i8** %18, align 8
  %99 = load %struct.ib_pd*, %struct.ib_pd** @user_index, align 8
  %100 = call i32 @MLX5_GET(i8* %97, i8* %98, %struct.ib_pd* %99)
  %101 = call i32 @MLX5_SET(i8* %94, i8* %95, %struct.ib_pd* %96, i32 %100)
  %102 = load i8*, i8** %16, align 8
  %103 = load i8*, i8** %16, align 8
  %104 = load %struct.ib_pd*, %struct.ib_pd** @cqn, align 8
  %105 = load i8*, i8** %18, align 8
  %106 = load i8*, i8** %18, align 8
  %107 = load %struct.ib_pd*, %struct.ib_pd** @cqn_rcv, align 8
  %108 = call i32 @MLX5_GET(i8* %105, i8* %106, %struct.ib_pd* %107)
  %109 = call i32 @MLX5_SET(i8* %102, i8* %103, %struct.ib_pd* %104, i32 %108)
  %110 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %111 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @MLX5_IB_QP_CAP_SCATTER_FCS, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %79
  %117 = load i8*, i8** %16, align 8
  %118 = load i8*, i8** %16, align 8
  %119 = load %struct.ib_pd*, %struct.ib_pd** @scatter_fcs, align 8
  %120 = call i32 @MLX5_SET(i8* %117, i8* %118, %struct.ib_pd* %119, i32 1)
  br label %121

121:                                              ; preds = %116, %79
  %122 = load i8*, i8** %16, align 8
  %123 = load i8*, i8** %16, align 8
  %124 = load i8*, i8** %17, align 8
  %125 = call i8* @MLX5_ADDR_OF(i8* %122, i8* %123, i8* %124)
  store i8* %125, i8** %17, align 8
  %126 = load i8*, i8** %17, align 8
  %127 = load i8*, i8** %17, align 8
  %128 = load %struct.ib_pd*, %struct.ib_pd** @wq_type, align 8
  %129 = load i32, i32* @MLX5_WQ_TYPE_CYCLIC, align 4
  %130 = call i32 @MLX5_SET(i8* %126, i8* %127, %struct.ib_pd* %128, i32 %129)
  %131 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %8, align 8
  %132 = getelementptr inbounds %struct.mlx5_ib_rq, %struct.mlx5_ib_rq* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @MLX5_IB_RQ_PCI_WRITE_END_PADDING, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %121
  %138 = load i8*, i8** %17, align 8
  %139 = load i8*, i8** %17, align 8
  %140 = load %struct.ib_pd*, %struct.ib_pd** @end_padding_mode, align 8
  %141 = load i32, i32* @MLX5_WQ_END_PAD_MODE_ALIGN, align 4
  %142 = call i32 @MLX5_SET(i8* %138, i8* %139, %struct.ib_pd* %140, i32 %141)
  br label %143

143:                                              ; preds = %137, %121
  %144 = load i8*, i8** %17, align 8
  %145 = load i8*, i8** %17, align 8
  %146 = load %struct.ib_pd*, %struct.ib_pd** @page_offset, align 8
  %147 = load i8*, i8** %18, align 8
  %148 = load i8*, i8** %18, align 8
  %149 = load %struct.ib_pd*, %struct.ib_pd** @page_offset, align 8
  %150 = call i32 @MLX5_GET(i8* %147, i8* %148, %struct.ib_pd* %149)
  %151 = call i32 @MLX5_SET(i8* %144, i8* %145, %struct.ib_pd* %146, i32 %150)
  %152 = load i8*, i8** %17, align 8
  %153 = load i8*, i8** %17, align 8
  %154 = load %struct.ib_pd*, %struct.ib_pd** %11, align 8
  %155 = load i8*, i8** %18, align 8
  %156 = load i8*, i8** %18, align 8
  %157 = load %struct.ib_pd*, %struct.ib_pd** %11, align 8
  %158 = call i32 @MLX5_GET(i8* %155, i8* %156, %struct.ib_pd* %157)
  %159 = call i32 @MLX5_SET(i8* %152, i8* %153, %struct.ib_pd* %154, i32 %158)
  %160 = load i8*, i8** %17, align 8
  %161 = load i8*, i8** %17, align 8
  %162 = load i32, i32* @dbr_addr, align 4
  %163 = load i8*, i8** %18, align 8
  %164 = load i8*, i8** %18, align 8
  %165 = load i32, i32* @dbr_addr, align 4
  %166 = call i32 @MLX5_GET64(i8* %163, i8* %164, i32 %165)
  %167 = call i32 @MLX5_SET64(i8* %160, i8* %161, i32 %162, i32 %166)
  %168 = load i8*, i8** %17, align 8
  %169 = load i8*, i8** %17, align 8
  %170 = load %struct.ib_pd*, %struct.ib_pd** @log_wq_stride, align 8
  %171 = load i8*, i8** %18, align 8
  %172 = load i8*, i8** %18, align 8
  %173 = load %struct.ib_pd*, %struct.ib_pd** @log_rq_stride, align 8
  %174 = call i32 @MLX5_GET(i8* %171, i8* %172, %struct.ib_pd* %173)
  %175 = add nsw i32 %174, 4
  %176 = call i32 @MLX5_SET(i8* %168, i8* %169, %struct.ib_pd* %170, i32 %175)
  %177 = load i8*, i8** %17, align 8
  %178 = load i8*, i8** %17, align 8
  %179 = load %struct.ib_pd*, %struct.ib_pd** @log_wq_pg_sz, align 8
  %180 = load i8*, i8** %18, align 8
  %181 = load i8*, i8** %18, align 8
  %182 = load %struct.ib_pd*, %struct.ib_pd** @log_page_size, align 8
  %183 = call i32 @MLX5_GET(i8* %180, i8* %181, %struct.ib_pd* %182)
  %184 = call i32 @MLX5_SET(i8* %177, i8* %178, %struct.ib_pd* %179, i32 %183)
  %185 = load i8*, i8** %17, align 8
  %186 = load i8*, i8** %17, align 8
  %187 = load %struct.ib_pd*, %struct.ib_pd** @log_wq_sz, align 8
  %188 = load i8*, i8** %18, align 8
  %189 = load i8*, i8** %18, align 8
  %190 = load %struct.ib_pd*, %struct.ib_pd** @log_rq_size, align 8
  %191 = call i32 @MLX5_GET(i8* %188, i8* %189, %struct.ib_pd* %190)
  %192 = call i32 @MLX5_SET(i8* %185, i8* %186, %struct.ib_pd* %187, i32 %191)
  %193 = load i8*, i8** %17, align 8
  %194 = load i8*, i8** %17, align 8
  %195 = load i8*, i8** %13, align 8
  %196 = call i8* @MLX5_ADDR_OF(i8* %193, i8* %194, i8* %195)
  store i8* %196, i8** %13, align 8
  %197 = load i8*, i8** @create_qp_in, align 8
  %198 = load i8*, i8** %9, align 8
  %199 = load i8*, i8** %13, align 8
  %200 = call i8* @MLX5_ADDR_OF(i8* %197, i8* %198, i8* %199)
  store i8* %200, i8** %14, align 8
  %201 = load i8*, i8** %13, align 8
  %202 = load i8*, i8** %14, align 8
  %203 = load i64, i64* %19, align 8
  %204 = call i32 @memcpy(i8* %201, i8* %202, i64 %203)
  %205 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %206 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i8*, i8** %15, align 8
  %209 = load i64, i64* %20, align 8
  %210 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %8, align 8
  %211 = getelementptr inbounds %struct.mlx5_ib_rq, %struct.mlx5_ib_rq* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 0
  %213 = call i32 @mlx5_core_create_rq_tracked(i32 %207, i8* %208, i64 %209, i32* %212)
  store i32 %213, i32* %21, align 4
  %214 = load i8*, i8** %15, align 8
  %215 = call i32 @kvfree(i8* %214)
  %216 = load i32, i32* %21, align 4
  store i32 %216, i32* %6, align 4
  br label %217

217:                                              ; preds = %143, %52, %39
  %218 = load i32, i32* %6, align 4
  ret i32 %218
}

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i8*) #1

declare dso_local i64 @get_rq_pas_size(i8*) #1

declare dso_local i64 @MLX5_BYTE_OFF(i8*, i8*) #1

declare dso_local i64 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @kvzalloc(i64, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, %struct.ib_pd*, i32) #1

declare dso_local %struct.TYPE_4__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @MLX5_GET(i8*, i8*, %struct.ib_pd*) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local i32 @MLX5_GET64(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @mlx5_core_create_rq_tracked(i32, i8*, i64, i32*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
