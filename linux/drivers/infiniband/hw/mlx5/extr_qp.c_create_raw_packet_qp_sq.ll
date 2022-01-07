; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_create_raw_packet_qp_sq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_create_raw_packet_qp_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx5_ib_sq = type { i32, %struct.mlx5_ib_ubuffer, %struct.TYPE_3__ }
%struct.mlx5_ib_ubuffer = type { i32*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@create_qp_in = common dso_local global i8* null, align 8
@create_sq_in = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uid = common dso_local global %struct.ib_pd* null, align 8
@ctx = common dso_local global i8* null, align 8
@flush_in_error_en = common dso_local global %struct.ib_pd* null, align 8
@multi_pkt_send_wqe = common dso_local global i32 0, align 4
@allow_multi_pkt_send_wqe = common dso_local global %struct.ib_pd* null, align 8
@state = common dso_local global %struct.ib_pd* null, align 8
@MLX5_SQC_STATE_RST = common dso_local global i32 0, align 4
@user_index = common dso_local global %struct.ib_pd* null, align 8
@cqn = common dso_local global %struct.ib_pd* null, align 8
@cqn_snd = common dso_local global %struct.ib_pd* null, align 8
@tis_lst_sz = common dso_local global %struct.ib_pd* null, align 8
@tis_num_0 = common dso_local global %struct.ib_pd* null, align 8
@eth_net_offloads = common dso_local global i32 0, align 4
@swp = common dso_local global i32 0, align 4
@allow_swp = common dso_local global %struct.ib_pd* null, align 8
@wq_type = common dso_local global %struct.ib_pd* null, align 8
@MLX5_WQ_TYPE_CYCLIC = common dso_local global i32 0, align 4
@uar_page = common dso_local global %struct.ib_pd* null, align 8
@dbr_addr = common dso_local global i32 0, align 4
@log_wq_stride = common dso_local global %struct.ib_pd* null, align 8
@MLX5_SEND_WQE_BB = common dso_local global i32 0, align 4
@log_wq_sz = common dso_local global %struct.ib_pd* null, align 8
@log_sq_size = common dso_local global %struct.ib_pd* null, align 8
@log_wq_pg_sz = common dso_local global %struct.ib_pd* null, align 8
@MLX5_ADAPTER_PAGE_SHIFT = common dso_local global i32 0, align 4
@page_offset = common dso_local global %struct.ib_pd* null, align 8
@qpc = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.ib_udata*, %struct.mlx5_ib_sq*, i8*, %struct.ib_pd*)* @create_raw_packet_qp_sq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_raw_packet_qp_sq(%struct.mlx5_ib_dev* %0, %struct.ib_udata* %1, %struct.mlx5_ib_sq* %2, i8* %3, %struct.ib_pd* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_ib_dev*, align 8
  %8 = alloca %struct.ib_udata*, align 8
  %9 = alloca %struct.mlx5_ib_sq*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ib_pd*, align 8
  %12 = alloca %struct.mlx5_ib_ubuffer*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %7, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %8, align 8
  store %struct.mlx5_ib_sq* %2, %struct.mlx5_ib_sq** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.ib_pd* %4, %struct.ib_pd** %11, align 8
  %24 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %9, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %24, i32 0, i32 1
  store %struct.mlx5_ib_ubuffer* %25, %struct.mlx5_ib_ubuffer** %12, align 8
  %26 = load i8*, i8** @create_qp_in, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %16, align 8
  %29 = call i8* @MLX5_ADDR_OF(i8* %26, i8* %27, i8* %28)
  store i8* %29, i8** %16, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %30 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %31 = load %struct.ib_udata*, %struct.ib_udata** %8, align 8
  %32 = load %struct.mlx5_ib_ubuffer*, %struct.mlx5_ib_ubuffer** %12, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_ubuffer, %struct.mlx5_ib_ubuffer* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlx5_ib_ubuffer*, %struct.mlx5_ib_ubuffer** %12, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_ubuffer, %struct.mlx5_ib_ubuffer* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %9, align 8
  %39 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.mlx5_ib_ubuffer, %struct.mlx5_ib_ubuffer* %39, i32 0, i32 0
  %41 = call i32 @mlx5_ib_umem_get(%struct.mlx5_ib_dev* %30, %struct.ib_udata* %31, i32 %34, i32 %37, i32** %40, i32* %21, i32* %20, i32* %22, i32* %23)
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %19, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %5
  %45 = load i32, i32* %19, align 4
  store i32 %45, i32* %6, align 4
  br label %239

46:                                               ; preds = %5
  %47 = load i8*, i8** @create_sq_in, align 8
  %48 = call i32 @MLX5_ST_SZ_BYTES(i8* %47)
  %49 = sext i32 %48 to i64
  %50 = load i32, i32* %22, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 4, %51
  %53 = add i64 %49, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @kvzalloc(i32 %55, i32 %56)
  store i8* %57, i8** %14, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %46
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %19, align 4
  br label %229

63:                                               ; preds = %46
  %64 = load i8*, i8** @create_sq_in, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = load %struct.ib_pd*, %struct.ib_pd** @uid, align 8
  %67 = load %struct.ib_pd*, %struct.ib_pd** %11, align 8
  %68 = call %struct.TYPE_4__* @to_mpd(%struct.ib_pd* %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @MLX5_SET(i8* %64, i8* %65, %struct.ib_pd* %66, i32 %70)
  %72 = load i8*, i8** @create_sq_in, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = load i8*, i8** @ctx, align 8
  %75 = call i8* @MLX5_ADDR_OF(i8* %72, i8* %73, i8* %74)
  store i8* %75, i8** %15, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = load %struct.ib_pd*, %struct.ib_pd** @flush_in_error_en, align 8
  %79 = call i32 @MLX5_SET(i8* %76, i8* %77, %struct.ib_pd* %78, i32 1)
  %80 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %81 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @multi_pkt_send_wqe, align 4
  %84 = call i64 @MLX5_CAP_ETH(i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %63
  %87 = load i8*, i8** %15, align 8
  %88 = load i8*, i8** %15, align 8
  %89 = load %struct.ib_pd*, %struct.ib_pd** @allow_multi_pkt_send_wqe, align 8
  %90 = call i32 @MLX5_SET(i8* %87, i8* %88, %struct.ib_pd* %89, i32 1)
  br label %91

91:                                               ; preds = %86, %63
  %92 = load i8*, i8** %15, align 8
  %93 = load i8*, i8** %15, align 8
  %94 = load %struct.ib_pd*, %struct.ib_pd** @state, align 8
  %95 = load i32, i32* @MLX5_SQC_STATE_RST, align 4
  %96 = call i32 @MLX5_SET(i8* %92, i8* %93, %struct.ib_pd* %94, i32 %95)
  %97 = load i8*, i8** %15, align 8
  %98 = load i8*, i8** %15, align 8
  %99 = load %struct.ib_pd*, %struct.ib_pd** @user_index, align 8
  %100 = load i8*, i8** %16, align 8
  %101 = load i8*, i8** %16, align 8
  %102 = load %struct.ib_pd*, %struct.ib_pd** @user_index, align 8
  %103 = call i32 @MLX5_GET(i8* %100, i8* %101, %struct.ib_pd* %102)
  %104 = call i32 @MLX5_SET(i8* %97, i8* %98, %struct.ib_pd* %99, i32 %103)
  %105 = load i8*, i8** %15, align 8
  %106 = load i8*, i8** %15, align 8
  %107 = load %struct.ib_pd*, %struct.ib_pd** @cqn, align 8
  %108 = load i8*, i8** %16, align 8
  %109 = load i8*, i8** %16, align 8
  %110 = load %struct.ib_pd*, %struct.ib_pd** @cqn_snd, align 8
  %111 = call i32 @MLX5_GET(i8* %108, i8* %109, %struct.ib_pd* %110)
  %112 = call i32 @MLX5_SET(i8* %105, i8* %106, %struct.ib_pd* %107, i32 %111)
  %113 = load i8*, i8** %15, align 8
  %114 = load i8*, i8** %15, align 8
  %115 = load %struct.ib_pd*, %struct.ib_pd** @tis_lst_sz, align 8
  %116 = call i32 @MLX5_SET(i8* %113, i8* %114, %struct.ib_pd* %115, i32 1)
  %117 = load i8*, i8** %15, align 8
  %118 = load i8*, i8** %15, align 8
  %119 = load %struct.ib_pd*, %struct.ib_pd** @tis_num_0, align 8
  %120 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %9, align 8
  %121 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @MLX5_SET(i8* %117, i8* %118, %struct.ib_pd* %119, i32 %122)
  %124 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %125 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @eth_net_offloads, align 4
  %128 = call i64 @MLX5_CAP_GEN(i32 %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %91
  %131 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %132 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @swp, align 4
  %135 = call i64 @MLX5_CAP_ETH(i32 %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %130
  %138 = load i8*, i8** %15, align 8
  %139 = load i8*, i8** %15, align 8
  %140 = load %struct.ib_pd*, %struct.ib_pd** @allow_swp, align 8
  %141 = call i32 @MLX5_SET(i8* %138, i8* %139, %struct.ib_pd* %140, i32 1)
  br label %142

142:                                              ; preds = %137, %130, %91
  %143 = load i8*, i8** %15, align 8
  %144 = load i8*, i8** %15, align 8
  %145 = load i8*, i8** %17, align 8
  %146 = call i8* @MLX5_ADDR_OF(i8* %143, i8* %144, i8* %145)
  store i8* %146, i8** %17, align 8
  %147 = load i8*, i8** %17, align 8
  %148 = load i8*, i8** %17, align 8
  %149 = load %struct.ib_pd*, %struct.ib_pd** @wq_type, align 8
  %150 = load i32, i32* @MLX5_WQ_TYPE_CYCLIC, align 4
  %151 = call i32 @MLX5_SET(i8* %147, i8* %148, %struct.ib_pd* %149, i32 %150)
  %152 = load i8*, i8** %17, align 8
  %153 = load i8*, i8** %17, align 8
  %154 = load %struct.ib_pd*, %struct.ib_pd** %11, align 8
  %155 = load i8*, i8** %16, align 8
  %156 = load i8*, i8** %16, align 8
  %157 = load %struct.ib_pd*, %struct.ib_pd** %11, align 8
  %158 = call i32 @MLX5_GET(i8* %155, i8* %156, %struct.ib_pd* %157)
  %159 = call i32 @MLX5_SET(i8* %152, i8* %153, %struct.ib_pd* %154, i32 %158)
  %160 = load i8*, i8** %17, align 8
  %161 = load i8*, i8** %17, align 8
  %162 = load %struct.ib_pd*, %struct.ib_pd** @uar_page, align 8
  %163 = load i8*, i8** %16, align 8
  %164 = load i8*, i8** %16, align 8
  %165 = load %struct.ib_pd*, %struct.ib_pd** @uar_page, align 8
  %166 = call i32 @MLX5_GET(i8* %163, i8* %164, %struct.ib_pd* %165)
  %167 = call i32 @MLX5_SET(i8* %160, i8* %161, %struct.ib_pd* %162, i32 %166)
  %168 = load i8*, i8** %17, align 8
  %169 = load i8*, i8** %17, align 8
  %170 = load i32, i32* @dbr_addr, align 4
  %171 = load i8*, i8** %16, align 8
  %172 = load i8*, i8** %16, align 8
  %173 = load i32, i32* @dbr_addr, align 4
  %174 = call i32 @MLX5_GET64(i8* %171, i8* %172, i32 %173)
  %175 = call i32 @MLX5_SET64(i8* %168, i8* %169, i32 %170, i32 %174)
  %176 = load i8*, i8** %17, align 8
  %177 = load i8*, i8** %17, align 8
  %178 = load %struct.ib_pd*, %struct.ib_pd** @log_wq_stride, align 8
  %179 = load i32, i32* @MLX5_SEND_WQE_BB, align 4
  %180 = call i32 @ilog2(i32 %179)
  %181 = call i32 @MLX5_SET(i8* %176, i8* %177, %struct.ib_pd* %178, i32 %180)
  %182 = load i8*, i8** %17, align 8
  %183 = load i8*, i8** %17, align 8
  %184 = load %struct.ib_pd*, %struct.ib_pd** @log_wq_sz, align 8
  %185 = load i8*, i8** %16, align 8
  %186 = load i8*, i8** %16, align 8
  %187 = load %struct.ib_pd*, %struct.ib_pd** @log_sq_size, align 8
  %188 = call i32 @MLX5_GET(i8* %185, i8* %186, %struct.ib_pd* %187)
  %189 = call i32 @MLX5_SET(i8* %182, i8* %183, %struct.ib_pd* %184, i32 %188)
  %190 = load i8*, i8** %17, align 8
  %191 = load i8*, i8** %17, align 8
  %192 = load %struct.ib_pd*, %struct.ib_pd** @log_wq_pg_sz, align 8
  %193 = load i32, i32* %20, align 4
  %194 = load i32, i32* @MLX5_ADAPTER_PAGE_SHIFT, align 4
  %195 = sub nsw i32 %193, %194
  %196 = call i32 @MLX5_SET(i8* %190, i8* %191, %struct.ib_pd* %192, i32 %195)
  %197 = load i8*, i8** %17, align 8
  %198 = load i8*, i8** %17, align 8
  %199 = load %struct.ib_pd*, %struct.ib_pd** @page_offset, align 8
  %200 = load i32, i32* %23, align 4
  %201 = call i32 @MLX5_SET(i8* %197, i8* %198, %struct.ib_pd* %199, i32 %200)
  %202 = load i8*, i8** %17, align 8
  %203 = load i8*, i8** %17, align 8
  %204 = load i8*, i8** %13, align 8
  %205 = call i8* @MLX5_ADDR_OF(i8* %202, i8* %203, i8* %204)
  store i8* %205, i8** %13, align 8
  %206 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %207 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %9, align 8
  %208 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.mlx5_ib_ubuffer, %struct.mlx5_ib_ubuffer* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %20, align 4
  %212 = load i8*, i8** %13, align 8
  %213 = call i32 @mlx5_ib_populate_pas(%struct.mlx5_ib_dev* %206, i32* %210, i32 %211, i8* %212, i32 0)
  %214 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %215 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i8*, i8** %14, align 8
  %218 = load i32, i32* %18, align 4
  %219 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %9, align 8
  %220 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 0
  %222 = call i32 @mlx5_core_create_sq_tracked(i32 %216, i8* %217, i32 %218, i32* %221)
  store i32 %222, i32* %19, align 4
  %223 = load i8*, i8** %14, align 8
  %224 = call i32 @kvfree(i8* %223)
  %225 = load i32, i32* %19, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %142
  br label %229

228:                                              ; preds = %142
  store i32 0, i32* %6, align 4
  br label %239

229:                                              ; preds = %227, %60
  %230 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %9, align 8
  %231 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.mlx5_ib_ubuffer, %struct.mlx5_ib_ubuffer* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = call i32 @ib_umem_release(i32* %233)
  %235 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %9, align 8
  %236 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.mlx5_ib_ubuffer, %struct.mlx5_ib_ubuffer* %236, i32 0, i32 0
  store i32* null, i32** %237, align 8
  %238 = load i32, i32* %19, align 4
  store i32 %238, i32* %6, align 4
  br label %239

239:                                              ; preds = %229, %228, %44
  %240 = load i32, i32* %6, align 4
  ret i32 %240
}

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i8*) #1

declare dso_local i32 @mlx5_ib_umem_get(%struct.mlx5_ib_dev*, %struct.ib_udata*, i32, i32, i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, %struct.ib_pd*, i32) #1

declare dso_local %struct.TYPE_4__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i64 @MLX5_CAP_ETH(i32, i32) #1

declare dso_local i32 @MLX5_GET(i8*, i8*, %struct.ib_pd*) #1

declare dso_local i64 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local i32 @MLX5_GET64(i8*, i8*, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @mlx5_ib_populate_pas(%struct.mlx5_ib_dev*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mlx5_core_create_sq_tracked(i32, i8*, i32, i32*) #1

declare dso_local i32 @kvfree(i8*) #1

declare dso_local i32 @ib_umem_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
