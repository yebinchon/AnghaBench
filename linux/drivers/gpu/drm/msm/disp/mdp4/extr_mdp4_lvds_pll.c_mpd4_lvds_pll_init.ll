; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_lvds_pll.c_mpd4_lvds_pll_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_lvds_pll.c_mpd4_lvds_pll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.drm_device = type { i32 }
%struct.mdp4_lvds_pll = type { %struct.TYPE_2__, %struct.drm_device* }
%struct.TYPE_2__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pll_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk* @mpd4_lvds_pll_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.mdp4_lvds_pll*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mdp4_lvds_pll* @devm_kzalloc(i32 %9, i32 16, i32 %10)
  store %struct.mdp4_lvds_pll* %11, %struct.mdp4_lvds_pll** %4, align 8
  %12 = load %struct.mdp4_lvds_pll*, %struct.mdp4_lvds_pll** %4, align 8
  %13 = icmp ne %struct.mdp4_lvds_pll* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  br label %38

17:                                               ; preds = %1
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = load %struct.mdp4_lvds_pll*, %struct.mdp4_lvds_pll** %4, align 8
  %20 = getelementptr inbounds %struct.mdp4_lvds_pll, %struct.mdp4_lvds_pll* %19, i32 0, i32 1
  store %struct.drm_device* %18, %struct.drm_device** %20, align 8
  %21 = load %struct.mdp4_lvds_pll*, %struct.mdp4_lvds_pll** %4, align 8
  %22 = getelementptr inbounds %struct.mdp4_lvds_pll, %struct.mdp4_lvds_pll* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32* @pll_init, i32** %23, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mdp4_lvds_pll*, %struct.mdp4_lvds_pll** %4, align 8
  %28 = getelementptr inbounds %struct.mdp4_lvds_pll, %struct.mdp4_lvds_pll* %27, i32 0, i32 0
  %29 = call %struct.clk* @devm_clk_register(i32 %26, %struct.TYPE_2__* %28)
  store %struct.clk* %29, %struct.clk** %5, align 8
  %30 = load %struct.clk*, %struct.clk** %5, align 8
  %31 = call i64 @IS_ERR(%struct.clk* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load %struct.clk*, %struct.clk** %5, align 8
  %35 = call i32 @PTR_ERR(%struct.clk* %34)
  store i32 %35, i32* %6, align 4
  br label %38

36:                                               ; preds = %17
  %37 = load %struct.clk*, %struct.clk** %5, align 8
  store %struct.clk* %37, %struct.clk** %2, align 8
  br label %41

38:                                               ; preds = %33, %14
  %39 = load i32, i32* %6, align 4
  %40 = call %struct.clk* @ERR_PTR(i32 %39)
  store %struct.clk* %40, %struct.clk** %2, align 8
  br label %41

41:                                               ; preds = %38, %36
  %42 = load %struct.clk*, %struct.clk** %2, align 8
  ret %struct.clk* %42
}

declare dso_local %struct.mdp4_lvds_pll* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.clk* @devm_clk_register(i32, %struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
