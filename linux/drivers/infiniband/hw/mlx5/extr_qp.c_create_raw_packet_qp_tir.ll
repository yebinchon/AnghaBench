; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_create_raw_packet_qp_tir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_create_raw_packet_qp_tir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32, i64 }
%struct.mlx5_ib_rq = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ib_pd = type { i32 }
%struct.TYPE_6__ = type { i32 }

@create_tir_in = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uid = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@disp_type = common dso_local global i32 0, align 4
@MLX5_TIRC_DISP_TYPE_DIRECT = common dso_local global i32 0, align 4
@inline_rqn = common dso_local global i32 0, align 4
@transport_domain = common dso_local global i32 0, align 4
@MLX5_QP_FLAG_TUNNEL_OFFLOADS = common dso_local global i32 0, align 4
@tunneled_offload_en = common dso_local global i32 0, align 4
@MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_UC = common dso_local global i32 0, align 4
@MLX5_TIRC_SELF_LB_BLOCK_BLOCK_UNICAST = common dso_local global i32 0, align 4
@MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_MC = common dso_local global i32 0, align 4
@MLX5_TIRC_SELF_LB_BLOCK_BLOCK_MULTICAST = common dso_local global i32 0, align 4
@self_lb_block = common dso_local global i32 0, align 4
@create_tir_out = common dso_local global i32 0, align 4
@tirn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_rq*, i32, i32*, %struct.ib_pd*, i32*, i32)* @create_raw_packet_qp_tir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_raw_packet_qp_tir(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_rq* %1, i32 %2, i32* %3, %struct.ib_pd* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_ib_dev*, align 8
  %10 = alloca %struct.mlx5_ib_rq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ib_pd*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %9, align 8
  store %struct.mlx5_ib_rq* %1, %struct.mlx5_ib_rq** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store %struct.ib_pd* %4, %struct.ib_pd** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %21 = load i32, i32* @create_tir_in, align 4
  %22 = call i32 @MLX5_ST_SZ_BYTES(i32 %21)
  store i32 %22, i32* %19, align 4
  %23 = load i32, i32* %19, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32* @kvzalloc(i32 %23, i32 %24)
  store i32* %25, i32** %17, align 8
  %26 = load i32*, i32** %17, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %7
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %155

31:                                               ; preds = %7
  %32 = load i32, i32* @create_tir_in, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = load i32*, i32** %17, align 8
  %36 = bitcast i32* %35 to i8*
  %37 = load i32, i32* @uid, align 4
  %38 = load %struct.ib_pd*, %struct.ib_pd** %13, align 8
  %39 = call %struct.TYPE_6__* @to_mpd(%struct.ib_pd* %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @MLX5_SET(i8* %34, i8* %36, i32 %37, i32 %41)
  %43 = load i32, i32* @create_tir_in, align 4
  %44 = load i32*, i32** %17, align 8
  %45 = load i32, i32* @ctx, align 4
  %46 = call i8* @MLX5_ADDR_OF(i32 %43, i32* %44, i32 %45)
  store i8* %46, i8** %18, align 8
  %47 = load i8*, i8** %18, align 8
  %48 = load i8*, i8** %18, align 8
  %49 = load i32, i32* @disp_type, align 4
  %50 = load i32, i32* @MLX5_TIRC_DISP_TYPE_DIRECT, align 4
  %51 = call i32 @MLX5_SET(i8* %47, i8* %48, i32 %49, i32 %50)
  %52 = load i8*, i8** %18, align 8
  %53 = load i8*, i8** %18, align 8
  %54 = load i32, i32* @inline_rqn, align 4
  %55 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %10, align 8
  %56 = getelementptr inbounds %struct.mlx5_ib_rq, %struct.mlx5_ib_rq* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @MLX5_SET(i8* %52, i8* %53, i32 %54, i32 %59)
  %61 = load i8*, i8** %18, align 8
  %62 = load i8*, i8** %18, align 8
  %63 = load i32, i32* @transport_domain, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @MLX5_SET(i8* %61, i8* %62, i32 %63, i32 %64)
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MLX5_QP_FLAG_TUNNEL_OFFLOADS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %31
  %72 = load i8*, i8** %18, align 8
  %73 = load i8*, i8** %18, align 8
  %74 = load i32, i32* @tunneled_offload_en, align 4
  %75 = call i32 @MLX5_SET(i8* %72, i8* %73, i32 %74, i32 1)
  br label %76

76:                                               ; preds = %71, %31
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_UC, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* @MLX5_TIRC_SELF_LB_BLOCK_BLOCK_UNICAST, align 4
  %84 = load i32, i32* %16, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %16, align 4
  br label %86

86:                                               ; preds = %82, %76
  %87 = load i32*, i32** %12, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_MC, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i32, i32* @MLX5_TIRC_SELF_LB_BLOCK_BLOCK_MULTICAST, align 4
  %94 = load i32, i32* %16, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %16, align 4
  br label %96

96:                                               ; preds = %92, %86
  %97 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %98 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load i32, i32* @MLX5_TIRC_SELF_LB_BLOCK_BLOCK_UNICAST, align 4
  %103 = load i32, i32* %16, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* @MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_UC, align 4
  %106 = load i32*, i32** %12, align 8
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %105
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %101, %96
  %110 = load i8*, i8** %18, align 8
  %111 = load i8*, i8** %18, align 8
  %112 = load i32, i32* @self_lb_block, align 4
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @MLX5_SET(i8* %110, i8* %111, i32 %112, i32 %113)
  %115 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %116 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32*, i32** %17, align 8
  %119 = load i32, i32* %19, align 4
  %120 = load i32*, i32** %14, align 8
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @mlx5_core_create_tir_out(i32 %117, i32* %118, i32 %119, i32* %120, i32 %121)
  store i32 %122, i32* %20, align 4
  %123 = load i32, i32* @create_tir_out, align 4
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i8*
  %126 = load i32*, i32** %14, align 8
  %127 = bitcast i32* %126 to i8*
  %128 = load i32, i32* @tirn, align 4
  %129 = call i64 @MLX5_GET(i8* %125, i8* %127, i32 %128)
  %130 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %10, align 8
  %131 = getelementptr inbounds %struct.mlx5_ib_rq, %struct.mlx5_ib_rq* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load i32, i32* %20, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %151, label %134

134:                                              ; preds = %109
  %135 = load i8*, i8** %18, align 8
  %136 = load i8*, i8** %18, align 8
  %137 = load i32, i32* @self_lb_block, align 4
  %138 = call i64 @MLX5_GET(i8* %135, i8* %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %134
  %141 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %142 = call i32 @mlx5_ib_enable_lb(%struct.mlx5_ib_dev* %141, i32 0, i32 1)
  store i32 %142, i32* %20, align 4
  %143 = load i32, i32* %20, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %147 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %10, align 8
  %148 = load %struct.ib_pd*, %struct.ib_pd** %13, align 8
  %149 = call i32 @destroy_raw_packet_qp_tir(%struct.mlx5_ib_dev* %146, %struct.mlx5_ib_rq* %147, i32 0, %struct.ib_pd* %148)
  br label %150

150:                                              ; preds = %145, %140
  br label %151

151:                                              ; preds = %150, %134, %109
  %152 = load i32*, i32** %17, align 8
  %153 = call i32 @kvfree(i32* %152)
  %154 = load i32, i32* %20, align 4
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %151, %28
  %156 = load i32, i32* %8, align 4
  ret i32 %156
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32* @kvzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @mlx5_core_create_tir_out(i32, i32*, i32, i32*, i32) #1

declare dso_local i64 @MLX5_GET(i8*, i8*, i32) #1

declare dso_local i32 @mlx5_ib_enable_lb(%struct.mlx5_ib_dev*, i32, i32) #1

declare dso_local i32 @destroy_raw_packet_qp_tir(%struct.mlx5_ib_dev*, %struct.mlx5_ib_rq*, i32, %struct.ib_pd*) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
