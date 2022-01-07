; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_mdss.c_dpu_mdss_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_mdss.c_dpu_mdss_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_mdss = type { i32 }
%struct.dpu_mdss = type { i32, i32*, %struct.dss_module_power }
%struct.dss_module_power = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"clock disable failed, ret:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_mdss*)* @dpu_mdss_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_mdss_disable(%struct.msm_mdss* %0) #0 {
  %2 = alloca %struct.msm_mdss*, align 8
  %3 = alloca %struct.dpu_mdss*, align 8
  %4 = alloca %struct.dss_module_power*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.msm_mdss* %0, %struct.msm_mdss** %2, align 8
  %7 = load %struct.msm_mdss*, %struct.msm_mdss** %2, align 8
  %8 = call %struct.dpu_mdss* @to_dpu_mdss(%struct.msm_mdss* %7)
  store %struct.dpu_mdss* %8, %struct.dpu_mdss** %3, align 8
  %9 = load %struct.dpu_mdss*, %struct.dpu_mdss** %3, align 8
  %10 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %9, i32 0, i32 2
  store %struct.dss_module_power* %10, %struct.dss_module_power** %4, align 8
  %11 = load %struct.dss_module_power*, %struct.dss_module_power** %4, align 8
  %12 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.dss_module_power*, %struct.dss_module_power** %4, align 8
  %15 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @msm_dss_enable_clk(i32 %13, i32 %16, i32 0)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %1
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.dpu_mdss*, %struct.dpu_mdss** %3, align 8
  %27 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load %struct.dpu_mdss*, %struct.dpu_mdss** %3, align 8
  %32 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @icc_set_bw(i32 %37, i32 0, i32 0)
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %24

42:                                               ; preds = %24
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.dpu_mdss* @to_dpu_mdss(%struct.msm_mdss*) #1

declare dso_local i32 @msm_dss_enable_clk(i32, i32, i32) #1

declare dso_local i32 @DPU_ERROR(i8*, i32) #1

declare dso_local i32 @icc_set_bw(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
