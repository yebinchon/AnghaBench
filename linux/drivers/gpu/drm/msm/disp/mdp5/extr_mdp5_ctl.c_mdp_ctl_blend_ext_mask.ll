; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_mdp_ctl_blend_ext_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_mdp_ctl_blend_ext_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STAGE6 = common dso_local global i32 0, align 4
@MDP5_CTL_LAYER_EXT_REG_VIG0_BIT3 = common dso_local global i32 0, align 4
@MDP5_CTL_LAYER_EXT_REG_VIG1_BIT3 = common dso_local global i32 0, align 4
@MDP5_CTL_LAYER_EXT_REG_VIG2_BIT3 = common dso_local global i32 0, align 4
@MDP5_CTL_LAYER_EXT_REG_RGB0_BIT3 = common dso_local global i32 0, align 4
@MDP5_CTL_LAYER_EXT_REG_RGB1_BIT3 = common dso_local global i32 0, align 4
@MDP5_CTL_LAYER_EXT_REG_RGB2_BIT3 = common dso_local global i32 0, align 4
@MDP5_CTL_LAYER_EXT_REG_DMA0_BIT3 = common dso_local global i32 0, align 4
@MDP5_CTL_LAYER_EXT_REG_DMA1_BIT3 = common dso_local global i32 0, align 4
@MDP5_CTL_LAYER_EXT_REG_VIG3_BIT3 = common dso_local global i32 0, align 4
@MDP5_CTL_LAYER_EXT_REG_RGB3_BIT3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mdp_ctl_blend_ext_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdp_ctl_blend_ext_mask(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @STAGE6, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 139
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 138
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %45

16:                                               ; preds = %12, %9, %2
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %44 [
    i32 131, label %18
    i32 130, label %20
    i32 129, label %22
    i32 135, label %24
    i32 134, label %26
    i32 133, label %28
    i32 137, label %30
    i32 136, label %32
    i32 128, label %34
    i32 132, label %36
    i32 139, label %38
    i32 138, label %41
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* @MDP5_CTL_LAYER_EXT_REG_VIG0_BIT3, align 4
  store i32 %19, i32* %3, align 4
  br label %45

20:                                               ; preds = %16
  %21 = load i32, i32* @MDP5_CTL_LAYER_EXT_REG_VIG1_BIT3, align 4
  store i32 %21, i32* %3, align 4
  br label %45

22:                                               ; preds = %16
  %23 = load i32, i32* @MDP5_CTL_LAYER_EXT_REG_VIG2_BIT3, align 4
  store i32 %23, i32* %3, align 4
  br label %45

24:                                               ; preds = %16
  %25 = load i32, i32* @MDP5_CTL_LAYER_EXT_REG_RGB0_BIT3, align 4
  store i32 %25, i32* %3, align 4
  br label %45

26:                                               ; preds = %16
  %27 = load i32, i32* @MDP5_CTL_LAYER_EXT_REG_RGB1_BIT3, align 4
  store i32 %27, i32* %3, align 4
  br label %45

28:                                               ; preds = %16
  %29 = load i32, i32* @MDP5_CTL_LAYER_EXT_REG_RGB2_BIT3, align 4
  store i32 %29, i32* %3, align 4
  br label %45

30:                                               ; preds = %16
  %31 = load i32, i32* @MDP5_CTL_LAYER_EXT_REG_DMA0_BIT3, align 4
  store i32 %31, i32* %3, align 4
  br label %45

32:                                               ; preds = %16
  %33 = load i32, i32* @MDP5_CTL_LAYER_EXT_REG_DMA1_BIT3, align 4
  store i32 %33, i32* %3, align 4
  br label %45

34:                                               ; preds = %16
  %35 = load i32, i32* @MDP5_CTL_LAYER_EXT_REG_VIG3_BIT3, align 4
  store i32 %35, i32* %3, align 4
  br label %45

36:                                               ; preds = %16
  %37 = load i32, i32* @MDP5_CTL_LAYER_EXT_REG_RGB3_BIT3, align 4
  store i32 %37, i32* %3, align 4
  br label %45

38:                                               ; preds = %16
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @MDP5_CTL_LAYER_EXT_REG_CURSOR0(i32 %39)
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %16
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @MDP5_CTL_LAYER_EXT_REG_CURSOR1(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %41, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @MDP5_CTL_LAYER_EXT_REG_CURSOR0(i32) #1

declare dso_local i32 @MDP5_CTL_LAYER_EXT_REG_CURSOR1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
