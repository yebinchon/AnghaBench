; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_mdp_ctl_flush_mask_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_mdp_ctl_flush_mask_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_interface = type { i64, i32 }

@INTF_WB = common dso_local global i64 0, align 8
@MDP5_CTL_FLUSH_WB = common dso_local global i32 0, align 4
@MDP5_CTL_FLUSH_TIMING_0 = common dso_local global i32 0, align 4
@MDP5_CTL_FLUSH_TIMING_1 = common dso_local global i32 0, align 4
@MDP5_CTL_FLUSH_TIMING_2 = common dso_local global i32 0, align 4
@MDP5_CTL_FLUSH_TIMING_3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdp_ctl_flush_mask_encoder(%struct.mdp5_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdp5_interface*, align 8
  store %struct.mdp5_interface* %0, %struct.mdp5_interface** %3, align 8
  %4 = load %struct.mdp5_interface*, %struct.mdp5_interface** %3, align 8
  %5 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @INTF_WB, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @MDP5_CTL_FLUSH_WB, align 4
  store i32 %10, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.mdp5_interface*, %struct.mdp5_interface** %3, align 8
  %13 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %23 [
    i32 0, label %15
    i32 1, label %17
    i32 2, label %19
    i32 3, label %21
  ]

15:                                               ; preds = %11
  %16 = load i32, i32* @MDP5_CTL_FLUSH_TIMING_0, align 4
  store i32 %16, i32* %2, align 4
  br label %24

17:                                               ; preds = %11
  %18 = load i32, i32* @MDP5_CTL_FLUSH_TIMING_1, align 4
  store i32 %18, i32* %2, align 4
  br label %24

19:                                               ; preds = %11
  %20 = load i32, i32* @MDP5_CTL_FLUSH_TIMING_2, align 4
  store i32 %20, i32* %2, align 4
  br label %24

21:                                               ; preds = %11
  %22 = load i32, i32* @MDP5_CTL_FLUSH_TIMING_3, align 4
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %21, %19, %17, %15, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
