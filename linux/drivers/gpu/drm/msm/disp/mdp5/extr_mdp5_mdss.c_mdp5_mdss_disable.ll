; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_mdss.c_mdp5_mdss_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_mdss.c_mdp5_mdss_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_mdss = type { i32 }
%struct.mdp5_mdss = type { i64, i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_mdss*)* @mdp5_mdss_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdp5_mdss_disable(%struct.msm_mdss* %0) #0 {
  %2 = alloca %struct.msm_mdss*, align 8
  %3 = alloca %struct.mdp5_mdss*, align 8
  store %struct.msm_mdss* %0, %struct.msm_mdss** %2, align 8
  %4 = load %struct.msm_mdss*, %struct.msm_mdss** %2, align 8
  %5 = call %struct.mdp5_mdss* @to_mdp5_mdss(%struct.msm_mdss* %4)
  store %struct.mdp5_mdss* %5, %struct.mdp5_mdss** %3, align 8
  %6 = call i32 @DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %3, align 8
  %8 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %3, align 8
  %13 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @clk_disable_unprepare(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %3, align 8
  %18 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %3, align 8
  %23 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @clk_disable_unprepare(i64 %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %3, align 8
  %28 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @clk_disable_unprepare(i64 %29)
  ret i32 0
}

declare dso_local %struct.mdp5_mdss* @to_mdp5_mdss(%struct.msm_mdss*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
