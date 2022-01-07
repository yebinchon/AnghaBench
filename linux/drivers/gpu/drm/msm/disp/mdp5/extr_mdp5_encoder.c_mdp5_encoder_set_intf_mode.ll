; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_encoder.c_mdp5_encoder_set_intf_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_encoder.c_mdp5_encoder_set_intf_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.mdp5_encoder = type { %struct.mdp5_interface* }
%struct.mdp5_interface = type { i64, i32 }

@INTF_DSI = common dso_local global i64 0, align 8
@MDP5_INTF_DSI_MODE_COMMAND = common dso_local global i32 0, align 4
@MDP5_INTF_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@MDP5_INTF_MODE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdp5_encoder_set_intf_mode(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mdp5_encoder*, align 8
  %6 = alloca %struct.mdp5_interface*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %8 = call %struct.mdp5_encoder* @to_mdp5_encoder(%struct.drm_encoder* %7)
  store %struct.mdp5_encoder* %8, %struct.mdp5_encoder** %5, align 8
  %9 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %5, align 8
  %10 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %9, i32 0, i32 0
  %11 = load %struct.mdp5_interface*, %struct.mdp5_interface** %10, align 8
  store %struct.mdp5_interface* %11, %struct.mdp5_interface** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.mdp5_interface*, %struct.mdp5_interface** %6, align 8
  %16 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @INTF_DSI, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load i32, i32* @MDP5_INTF_DSI_MODE_COMMAND, align 4
  %23 = load %struct.mdp5_interface*, %struct.mdp5_interface** %6, align 8
  %24 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  br label %40

25:                                               ; preds = %2
  %26 = load %struct.mdp5_interface*, %struct.mdp5_interface** %6, align 8
  %27 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @INTF_DSI, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @MDP5_INTF_DSI_MODE_VIDEO, align 4
  %33 = load %struct.mdp5_interface*, %struct.mdp5_interface** %6, align 8
  %34 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  br label %39

35:                                               ; preds = %25
  %36 = load i32, i32* @MDP5_INTF_MODE_NONE, align 4
  %37 = load %struct.mdp5_interface*, %struct.mdp5_interface** %6, align 8
  %38 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %35, %31
  br label %40

40:                                               ; preds = %39, %14
  ret void
}

declare dso_local %struct.mdp5_encoder* @to_mdp5_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
