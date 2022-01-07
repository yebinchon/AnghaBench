; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cong.c_mlx5_get_cc_param_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cong.c_mlx5_get_cc_param_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cong_control_r_roce_ecn_rp = common dso_local global i32 0, align 4
@clamp_tgt_rate = common dso_local global i32 0, align 4
@clamp_tgt_rate_after_time_inc = common dso_local global i32 0, align 4
@rpg_time_reset = common dso_local global i32 0, align 4
@rpg_byte_reset = common dso_local global i32 0, align 4
@rpg_threshold = common dso_local global i32 0, align 4
@rpg_ai_rate = common dso_local global i32 0, align 4
@rpg_hai_rate = common dso_local global i32 0, align 4
@rpg_min_dec_fac = common dso_local global i32 0, align 4
@rpg_min_rate = common dso_local global i32 0, align 4
@rate_to_set_on_first_cnp = common dso_local global i32 0, align 4
@dce_tcp_g = common dso_local global i32 0, align 4
@dce_tcp_rtt = common dso_local global i32 0, align 4
@rate_reduce_monitor_period = common dso_local global i32 0, align 4
@initial_alpha_value = common dso_local global i32 0, align 4
@rpg_gd = common dso_local global i32 0, align 4
@cong_control_r_roce_ecn_np = common dso_local global i32 0, align 4
@cnp_dscp = common dso_local global i32 0, align 4
@cnp_prio_mode = common dso_local global i32 0, align 4
@cnp_802p_prio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @mlx5_get_cc_param_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_get_cc_param_val(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %97 [
    i32 140, label %7
    i32 139, label %12
    i32 128, label %17
    i32 141, label %22
    i32 129, label %27
    i32 142, label %32
    i32 135, label %37
    i32 133, label %42
    i32 132, label %47
    i32 130, label %52
    i32 138, label %57
    i32 137, label %62
    i32 131, label %67
    i32 134, label %72
    i32 136, label %77
    i32 145, label %82
    i32 143, label %87
    i32 144, label %92
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @clamp_tgt_rate, align 4
  %11 = call i32 @MLX5_GET(i32 %8, i8* %9, i32 %10)
  store i32 %11, i32* %3, align 4
  br label %98

12:                                               ; preds = %2
  %13 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* @clamp_tgt_rate_after_time_inc, align 4
  %16 = call i32 @MLX5_GET(i32 %13, i8* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  br label %98

17:                                               ; preds = %2
  %18 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @rpg_time_reset, align 4
  %21 = call i32 @MLX5_GET(i32 %18, i8* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %98

22:                                               ; preds = %2
  %23 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* @rpg_byte_reset, align 4
  %26 = call i32 @MLX5_GET(i32 %23, i8* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %98

27:                                               ; preds = %2
  %28 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* @rpg_threshold, align 4
  %31 = call i32 @MLX5_GET(i32 %28, i8* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %98

32:                                               ; preds = %2
  %33 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* @rpg_ai_rate, align 4
  %36 = call i32 @MLX5_GET(i32 %33, i8* %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %98

37:                                               ; preds = %2
  %38 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* @rpg_hai_rate, align 4
  %41 = call i32 @MLX5_GET(i32 %38, i8* %39, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %98

42:                                               ; preds = %2
  %43 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* @rpg_min_dec_fac, align 4
  %46 = call i32 @MLX5_GET(i32 %43, i8* %44, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %98

47:                                               ; preds = %2
  %48 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* @rpg_min_rate, align 4
  %51 = call i32 @MLX5_GET(i32 %48, i8* %49, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %98

52:                                               ; preds = %2
  %53 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* @rate_to_set_on_first_cnp, align 4
  %56 = call i32 @MLX5_GET(i32 %53, i8* %54, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %98

57:                                               ; preds = %2
  %58 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* @dce_tcp_g, align 4
  %61 = call i32 @MLX5_GET(i32 %58, i8* %59, i32 %60)
  store i32 %61, i32* %3, align 4
  br label %98

62:                                               ; preds = %2
  %63 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* @dce_tcp_rtt, align 4
  %66 = call i32 @MLX5_GET(i32 %63, i8* %64, i32 %65)
  store i32 %66, i32* %3, align 4
  br label %98

67:                                               ; preds = %2
  %68 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* @rate_reduce_monitor_period, align 4
  %71 = call i32 @MLX5_GET(i32 %68, i8* %69, i32 %70)
  store i32 %71, i32* %3, align 4
  br label %98

72:                                               ; preds = %2
  %73 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* @initial_alpha_value, align 4
  %76 = call i32 @MLX5_GET(i32 %73, i8* %74, i32 %75)
  store i32 %76, i32* %3, align 4
  br label %98

77:                                               ; preds = %2
  %78 = load i32, i32* @cong_control_r_roce_ecn_rp, align 4
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* @rpg_gd, align 4
  %81 = call i32 @MLX5_GET(i32 %78, i8* %79, i32 %80)
  store i32 %81, i32* %3, align 4
  br label %98

82:                                               ; preds = %2
  %83 = load i32, i32* @cong_control_r_roce_ecn_np, align 4
  %84 = load i8*, i8** %4, align 8
  %85 = load i32, i32* @cnp_dscp, align 4
  %86 = call i32 @MLX5_GET(i32 %83, i8* %84, i32 %85)
  store i32 %86, i32* %3, align 4
  br label %98

87:                                               ; preds = %2
  %88 = load i32, i32* @cong_control_r_roce_ecn_np, align 4
  %89 = load i8*, i8** %4, align 8
  %90 = load i32, i32* @cnp_prio_mode, align 4
  %91 = call i32 @MLX5_GET(i32 %88, i8* %89, i32 %90)
  store i32 %91, i32* %3, align 4
  br label %98

92:                                               ; preds = %2
  %93 = load i32, i32* @cong_control_r_roce_ecn_np, align 4
  %94 = load i8*, i8** %4, align 8
  %95 = load i32, i32* @cnp_802p_prio, align 4
  %96 = call i32 @MLX5_GET(i32 %93, i8* %94, i32 %95)
  store i32 %96, i32* %3, align 4
  br label %98

97:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %92, %87, %82, %77, %72, %67, %62, %57, %52, %47, %42, %37, %32, %27, %22, %17, %12, %7
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @MLX5_GET(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
