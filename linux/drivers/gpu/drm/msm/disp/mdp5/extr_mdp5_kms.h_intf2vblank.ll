; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.h_intf2vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.h_intf2vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_hw_mixer = type { i32 }
%struct.mdp5_interface = type { i64, i64, i32 }

@INTF_DSI = common dso_local global i64 0, align 8
@MDP5_INTF_DSI_MODE_COMMAND = common dso_local global i64 0, align 8
@MDP5_IRQ_PING_PONG_0_RD_PTR = common dso_local global i32 0, align 4
@INTF_WB = common dso_local global i64 0, align 8
@MDP5_IRQ_WB_2_DONE = common dso_local global i32 0, align 4
@MDP5_IRQ_INTF0_VSYNC = common dso_local global i32 0, align 4
@MDP5_IRQ_INTF1_VSYNC = common dso_local global i32 0, align 4
@MDP5_IRQ_INTF2_VSYNC = common dso_local global i32 0, align 4
@MDP5_IRQ_INTF3_VSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdp5_hw_mixer*, %struct.mdp5_interface*)* @intf2vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intf2vblank(%struct.mdp5_hw_mixer* %0, %struct.mdp5_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mdp5_hw_mixer*, align 8
  %5 = alloca %struct.mdp5_interface*, align 8
  store %struct.mdp5_hw_mixer* %0, %struct.mdp5_hw_mixer** %4, align 8
  store %struct.mdp5_interface* %1, %struct.mdp5_interface** %5, align 8
  %6 = load %struct.mdp5_interface*, %struct.mdp5_interface** %5, align 8
  %7 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @INTF_DSI, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load %struct.mdp5_interface*, %struct.mdp5_interface** %5, align 8
  %13 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MDP5_INTF_DSI_MODE_COMMAND, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load i32, i32* @MDP5_IRQ_PING_PONG_0_RD_PTR, align 4
  %19 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %4, align 8
  %20 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %18, %21
  store i32 %22, i32* %3, align 4
  br label %44

23:                                               ; preds = %11, %2
  %24 = load %struct.mdp5_interface*, %struct.mdp5_interface** %5, align 8
  %25 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @INTF_WB, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @MDP5_IRQ_WB_2_DONE, align 4
  store i32 %30, i32* %3, align 4
  br label %44

31:                                               ; preds = %23
  %32 = load %struct.mdp5_interface*, %struct.mdp5_interface** %5, align 8
  %33 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %43 [
    i32 0, label %35
    i32 1, label %37
    i32 2, label %39
    i32 3, label %41
  ]

35:                                               ; preds = %31
  %36 = load i32, i32* @MDP5_IRQ_INTF0_VSYNC, align 4
  store i32 %36, i32* %3, align 4
  br label %44

37:                                               ; preds = %31
  %38 = load i32, i32* @MDP5_IRQ_INTF1_VSYNC, align 4
  store i32 %38, i32* %3, align 4
  br label %44

39:                                               ; preds = %31
  %40 = load i32, i32* @MDP5_IRQ_INTF2_VSYNC, align 4
  store i32 %40, i32* %3, align 4
  br label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @MDP5_IRQ_INTF3_VSYNC, align 4
  store i32 %42, i32* %3, align 4
  br label %44

43:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %41, %39, %37, %35, %29, %17
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
