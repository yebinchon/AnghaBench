; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_mdss.c_dpu_mdss_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_mdss.c_dpu_mdss_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_mdss = type { i32 }
%struct.dpu_mdss = type { %struct.dss_module_power }
%struct.dss_module_power = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"clock enable failed, ret:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_mdss*)* @dpu_mdss_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_mdss_enable(%struct.msm_mdss* %0) #0 {
  %2 = alloca %struct.msm_mdss*, align 8
  %3 = alloca %struct.dpu_mdss*, align 8
  %4 = alloca %struct.dss_module_power*, align 8
  %5 = alloca i32, align 4
  store %struct.msm_mdss* %0, %struct.msm_mdss** %2, align 8
  %6 = load %struct.msm_mdss*, %struct.msm_mdss** %2, align 8
  %7 = call %struct.dpu_mdss* @to_dpu_mdss(%struct.msm_mdss* %6)
  store %struct.dpu_mdss* %7, %struct.dpu_mdss** %3, align 8
  %8 = load %struct.dpu_mdss*, %struct.dpu_mdss** %3, align 8
  %9 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %8, i32 0, i32 0
  store %struct.dss_module_power* %9, %struct.dss_module_power** %4, align 8
  %10 = load %struct.msm_mdss*, %struct.msm_mdss** %2, align 8
  %11 = call i32 @dpu_mdss_icc_request_bw(%struct.msm_mdss* %10)
  %12 = load %struct.dss_module_power*, %struct.dss_module_power** %4, align 8
  %13 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dss_module_power*, %struct.dss_module_power** %4, align 8
  %16 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @msm_dss_enable_clk(i32 %14, i32 %17, i32 1)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local %struct.dpu_mdss* @to_dpu_mdss(%struct.msm_mdss*) #1

declare dso_local i32 @dpu_mdss_icc_request_bw(%struct.msm_mdss*) #1

declare dso_local i32 @msm_dss_enable_clk(i32, i32, i32) #1

declare dso_local i32 @DPU_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
