; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_start_signal_needed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_start_signal_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_ctl = type { i32 }
%struct.mdp5_pipeline = type { %struct.mdp5_interface* }
%struct.mdp5_interface = type { i32, i32 }

@MDP5_INTF_DSI_MODE_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdp5_ctl*, %struct.mdp5_pipeline*)* @start_signal_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_signal_needed(%struct.mdp5_ctl* %0, %struct.mdp5_pipeline* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mdp5_ctl*, align 8
  %5 = alloca %struct.mdp5_pipeline*, align 8
  %6 = alloca %struct.mdp5_interface*, align 8
  store %struct.mdp5_ctl* %0, %struct.mdp5_ctl** %4, align 8
  store %struct.mdp5_pipeline* %1, %struct.mdp5_pipeline** %5, align 8
  %7 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %5, align 8
  %8 = getelementptr inbounds %struct.mdp5_pipeline, %struct.mdp5_pipeline* %7, i32 0, i32 0
  %9 = load %struct.mdp5_interface*, %struct.mdp5_interface** %8, align 8
  store %struct.mdp5_interface* %9, %struct.mdp5_interface** %6, align 8
  %10 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %4, align 8
  %11 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.mdp5_interface*, %struct.mdp5_interface** %6, align 8
  %17 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %27 [
    i32 128, label %19
    i32 129, label %20
  ]

19:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %28

20:                                               ; preds = %15
  %21 = load %struct.mdp5_interface*, %struct.mdp5_interface** %6, align 8
  %22 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MDP5_INTF_DSI_MODE_COMMAND, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %20, %19, %14
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
