; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_edp_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_edp_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edp_ctrl = type { i32, i32, i32, i32, i32 }

@EDP_CLK_MASK_MDP_CORE = common dso_local global i32 0, align 4
@EDP_CLK_MASK_PIXEL = common dso_local global i32 0, align 4
@EDP_CLK_MASK_LINK = common dso_local global i32 0, align 4
@EDP_CLK_MASK_AUX = common dso_local global i32 0, align 4
@EDP_CLK_MASK_AHB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edp_ctrl*, i32)* @edp_clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edp_clk_disable(%struct.edp_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.edp_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.edp_ctrl* %0, %struct.edp_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @EDP_CLK_MASK_MDP_CORE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %11 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clk_disable_unprepare(i32 %12)
  br label %14

14:                                               ; preds = %9, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @EDP_CLK_MASK_PIXEL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %21 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_disable_unprepare(i32 %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @EDP_CLK_MASK_LINK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %31 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_disable_unprepare(i32 %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @EDP_CLK_MASK_AUX, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %41 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @clk_disable_unprepare(i32 %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @EDP_CLK_MASK_AHB, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %51 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @clk_disable_unprepare(i32 %52)
  br label %54

54:                                               ; preds = %49, %44
  ret void
}

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
