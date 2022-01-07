; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cong.c_mlx5_ib_set_cc_param_mask_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cong.c_mlx5_ib_set_cc_param_mask_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MLX5_IB_RP_CLAMP_TGT_RATE_ATTR = common dso_local global i32 0, align 4
@cong_control_r_roce_ecn_rp = common dso_local global i32 0, align 4
@clamp_tgt_rate = common dso_local global i32 0, align 4
@MLX5_IB_RP_CLAMP_TGT_RATE_ATI_ATTR = common dso_local global i32 0, align 4
@clamp_tgt_rate_after_time_inc = common dso_local global i32 0, align 4
@MLX5_IB_RP_TIME_RESET_ATTR = common dso_local global i32 0, align 4
@rpg_time_reset = common dso_local global i32 0, align 4
@MLX5_IB_RP_BYTE_RESET_ATTR = common dso_local global i32 0, align 4
@rpg_byte_reset = common dso_local global i32 0, align 4
@MLX5_IB_RP_THRESHOLD_ATTR = common dso_local global i32 0, align 4
@rpg_threshold = common dso_local global i32 0, align 4
@MLX5_IB_RP_AI_RATE_ATTR = common dso_local global i32 0, align 4
@rpg_ai_rate = common dso_local global i32 0, align 4
@MLX5_IB_RP_HAI_RATE_ATTR = common dso_local global i32 0, align 4
@rpg_hai_rate = common dso_local global i32 0, align 4
@MLX5_IB_RP_MIN_DEC_FAC_ATTR = common dso_local global i32 0, align 4
@rpg_min_dec_fac = common dso_local global i32 0, align 4
@MLX5_IB_RP_MIN_RATE_ATTR = common dso_local global i32 0, align 4
@rpg_min_rate = common dso_local global i32 0, align 4
@MLX5_IB_RP_RATE_TO_SET_ON_FIRST_CNP_ATTR = common dso_local global i32 0, align 4
@rate_to_set_on_first_cnp = common dso_local global i32 0, align 4
@MLX5_IB_RP_DCE_TCP_G_ATTR = common dso_local global i32 0, align 4
@dce_tcp_g = common dso_local global i32 0, align 4
@MLX5_IB_RP_DCE_TCP_RTT_ATTR = common dso_local global i32 0, align 4
@dce_tcp_rtt = common dso_local global i32 0, align 4
@MLX5_IB_RP_RATE_REDUCE_MONITOR_PERIOD_ATTR = common dso_local global i32 0, align 4
@rate_reduce_monitor_period = common dso_local global i32 0, align 4
@MLX5_IB_RP_INITIAL_ALPHA_VALUE_ATTR = common dso_local global i32 0, align 4
@initial_alpha_value = common dso_local global i32 0, align 4
@MLX5_IB_RP_GD_ATTR = common dso_local global i32 0, align 4
@rpg_gd = common dso_local global i32 0, align 4
@MLX5_IB_NP_CNP_DSCP_ATTR = common dso_local global i32 0, align 4
@cong_control_r_roce_ecn_np = common dso_local global i32 0, align 4
@cnp_dscp = common dso_local global i32 0, align 4
@MLX5_IB_NP_CNP_PRIO_MODE_ATTR = common dso_local global i32 0, align 4
@cnp_prio_mode = common dso_local global i32 0, align 4
@cnp_802p_prio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32*)* @mlx5_ib_set_cc_param_mask_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_ib_set_cc_param_mask_val(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %194 [
    i32 140, label %10
    i32 139, label %20
    i32 128, label %30
    i32 141, label %40
    i32 129, label %50
    i32 142, label %60
    i32 135, label %70
    i32 133, label %80
    i32 132, label %90
    i32 130, label %100
    i32 138, label %110
    i32 137, label %120
    i32 131, label %130
    i32 134, label %140
    i32 136, label %150
    i32 145, label %160
    i32 143, label %170
    i32 144, label %180
  ]

10:                                               ; preds = %4
  %11 = load i32, i32* @MLX5_IB_RP_CLAMP_TGT_RATE_ATTR, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %11
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @clamp_tgt_rate, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @MLX5_SET(i32 %15, i8* %16, i32 %17, i32 %18)
  br label %194

20:                                               ; preds = %4
  %21 = load i32, i32* @MLX5_IB_RP_CLAMP_TGT_RATE_ATI_ATTR, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* @clamp_tgt_rate_after_time_inc, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @MLX5_SET(i32 %25, i8* %26, i32 %27, i32 %28)
  br label %194

30:                                               ; preds = %4
  %31 = load i32, i32* @MLX5_IB_RP_TIME_RESET_ATTR, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* @rpg_time_reset, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @MLX5_SET(i32 %35, i8* %36, i32 %37, i32 %38)
  br label %194

40:                                               ; preds = %4
  %41 = load i32, i32* @MLX5_IB_RP_BYTE_RESET_ATTR, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* @rpg_byte_reset, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @MLX5_SET(i32 %45, i8* %46, i32 %47, i32 %48)
  br label %194

50:                                               ; preds = %4
  %51 = load i32, i32* @MLX5_IB_RP_THRESHOLD_ATTR, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* @rpg_threshold, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @MLX5_SET(i32 %55, i8* %56, i32 %57, i32 %58)
  br label %194

60:                                               ; preds = %4
  %61 = load i32, i32* @MLX5_IB_RP_AI_RATE_ATTR, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* @rpg_ai_rate, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @MLX5_SET(i32 %65, i8* %66, i32 %67, i32 %68)
  br label %194

70:                                               ; preds = %4
  %71 = load i32, i32* @MLX5_IB_RP_HAI_RATE_ATTR, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %71
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* @rpg_hai_rate, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @MLX5_SET(i32 %75, i8* %76, i32 %77, i32 %78)
  br label %194

80:                                               ; preds = %4
  %81 = load i32, i32* @MLX5_IB_RP_MIN_DEC_FAC_ATTR, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %81
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %86 = load i8*, i8** %5, align 8
  %87 = load i32, i32* @rpg_min_dec_fac, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @MLX5_SET(i32 %85, i8* %86, i32 %87, i32 %88)
  br label %194

90:                                               ; preds = %4
  %91 = load i32, i32* @MLX5_IB_RP_MIN_RATE_ATTR, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %96 = load i8*, i8** %5, align 8
  %97 = load i32, i32* @rpg_min_rate, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @MLX5_SET(i32 %95, i8* %96, i32 %97, i32 %98)
  br label %194

100:                                              ; preds = %4
  %101 = load i32, i32* @MLX5_IB_RP_RATE_TO_SET_ON_FIRST_CNP_ATTR, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %101
  store i32 %104, i32* %102, align 4
  %105 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %106 = load i8*, i8** %5, align 8
  %107 = load i32, i32* @rate_to_set_on_first_cnp, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @MLX5_SET(i32 %105, i8* %106, i32 %107, i32 %108)
  br label %194

110:                                              ; preds = %4
  %111 = load i32, i32* @MLX5_IB_RP_DCE_TCP_G_ATTR, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %111
  store i32 %114, i32* %112, align 4
  %115 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %116 = load i8*, i8** %5, align 8
  %117 = load i32, i32* @dce_tcp_g, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @MLX5_SET(i32 %115, i8* %116, i32 %117, i32 %118)
  br label %194

120:                                              ; preds = %4
  %121 = load i32, i32* @MLX5_IB_RP_DCE_TCP_RTT_ATTR, align 4
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %121
  store i32 %124, i32* %122, align 4
  %125 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %126 = load i8*, i8** %5, align 8
  %127 = load i32, i32* @dce_tcp_rtt, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @MLX5_SET(i32 %125, i8* %126, i32 %127, i32 %128)
  br label %194

130:                                              ; preds = %4
  %131 = load i32, i32* @MLX5_IB_RP_RATE_REDUCE_MONITOR_PERIOD_ATTR, align 4
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %131
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %136 = load i8*, i8** %5, align 8
  %137 = load i32, i32* @rate_reduce_monitor_period, align 4
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @MLX5_SET(i32 %135, i8* %136, i32 %137, i32 %138)
  br label %194

140:                                              ; preds = %4
  %141 = load i32, i32* @MLX5_IB_RP_INITIAL_ALPHA_VALUE_ATTR, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %141
  store i32 %144, i32* %142, align 4
  %145 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %146 = load i8*, i8** %5, align 8
  %147 = load i32, i32* @initial_alpha_value, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @MLX5_SET(i32 %145, i8* %146, i32 %147, i32 %148)
  br label %194

150:                                              ; preds = %4
  %151 = load i32, i32* @MLX5_IB_RP_GD_ATTR, align 4
  %152 = load i32*, i32** %8, align 8
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %151
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %156 = load i8*, i8** %5, align 8
  %157 = load i32, i32* @rpg_gd, align 4
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @MLX5_SET(i32 %155, i8* %156, i32 %157, i32 %158)
  br label %194

160:                                              ; preds = %4
  %161 = load i32, i32* @MLX5_IB_NP_CNP_DSCP_ATTR, align 4
  %162 = load i32*, i32** %8, align 8
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %161
  store i32 %164, i32* %162, align 4
  %165 = load i32, i32* @cong_control_r_roce_ecn_np, align 4
  %166 = load i8*, i8** %5, align 8
  %167 = load i32, i32* @cnp_dscp, align 4
  %168 = load i32, i32* %7, align 4
  %169 = call i32 @MLX5_SET(i32 %165, i8* %166, i32 %167, i32 %168)
  br label %194

170:                                              ; preds = %4
  %171 = load i32, i32* @MLX5_IB_NP_CNP_PRIO_MODE_ATTR, align 4
  %172 = load i32*, i32** %8, align 8
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %171
  store i32 %174, i32* %172, align 4
  %175 = load i32, i32* @cong_control_r_roce_ecn_np, align 4
  %176 = load i8*, i8** %5, align 8
  %177 = load i32, i32* @cnp_prio_mode, align 4
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @MLX5_SET(i32 %175, i8* %176, i32 %177, i32 %178)
  br label %194

180:                                              ; preds = %4
  %181 = load i32, i32* @MLX5_IB_NP_CNP_PRIO_MODE_ATTR, align 4
  %182 = load i32*, i32** %8, align 8
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %181
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* @cong_control_r_roce_ecn_np, align 4
  %186 = load i8*, i8** %5, align 8
  %187 = load i32, i32* @cnp_prio_mode, align 4
  %188 = call i32 @MLX5_SET(i32 %185, i8* %186, i32 %187, i32 0)
  %189 = load i32, i32* @cong_control_r_roce_ecn_np, align 4
  %190 = load i8*, i8** %5, align 8
  %191 = load i32, i32* @cnp_802p_prio, align 4
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @MLX5_SET(i32 %189, i8* %190, i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %4, %180, %170, %160, %150, %140, %130, %120, %110, %100, %90, %80, %70, %60, %50, %40, %30, %20, %10
  ret void
}

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
