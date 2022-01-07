; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_mdss.c_mdp5_mdss_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_mdss.c_mdp5_mdss_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_mdss = type { i32 }
%struct.mdp5_mdss = type { i64, i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_mdss*)* @mdp5_mdss_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdp5_mdss_enable(%struct.msm_mdss* %0) #0 {
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
  %10 = call i32 @clk_prepare_enable(i64 %9)
  %11 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %3, align 8
  %12 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %3, align 8
  %17 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @clk_prepare_enable(i64 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %3, align 8
  %22 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %3, align 8
  %27 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @clk_prepare_enable(i64 %28)
  br label %30

30:                                               ; preds = %25, %20
  ret i32 0
}

declare dso_local %struct.mdp5_mdss* @to_mdp5_mdss(%struct.msm_mdss*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
