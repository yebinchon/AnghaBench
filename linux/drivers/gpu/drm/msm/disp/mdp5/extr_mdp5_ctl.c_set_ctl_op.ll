; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_set_ctl_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_set_ctl_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_ctl = type { i32, i32 }
%struct.mdp5_pipeline = type { i64, %struct.mdp5_interface* }
%struct.mdp5_interface = type { i32, i32, i64 }

@INTF0 = common dso_local global i64 0, align 8
@MDP5_INTF_DSI_MODE_COMMAND = common dso_local global i32 0, align 4
@MDP5_CTL_OP_CMD_MODE = common dso_local global i32 0, align 4
@MDP5_INTF_WB_MODE_LINE = common dso_local global i32 0, align 4
@MODE_WB_2_LINE = common dso_local global i32 0, align 4
@MDP5_CTL_OP_PACK_3D_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdp5_ctl*, %struct.mdp5_pipeline*)* @set_ctl_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ctl_op(%struct.mdp5_ctl* %0, %struct.mdp5_pipeline* %1) #0 {
  %3 = alloca %struct.mdp5_ctl*, align 8
  %4 = alloca %struct.mdp5_pipeline*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mdp5_interface*, align 8
  %7 = alloca i32, align 4
  store %struct.mdp5_ctl* %0, %struct.mdp5_ctl** %3, align 8
  store %struct.mdp5_pipeline* %1, %struct.mdp5_pipeline** %4, align 8
  %8 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %4, align 8
  %9 = getelementptr inbounds %struct.mdp5_pipeline, %struct.mdp5_pipeline* %8, i32 0, i32 1
  %10 = load %struct.mdp5_interface*, %struct.mdp5_interface** %9, align 8
  store %struct.mdp5_interface* %10, %struct.mdp5_interface** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.mdp5_interface*, %struct.mdp5_interface** %6, align 8
  %12 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @mdp5_cfg_intf_is_virtual(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* @INTF0, align 8
  %18 = load %struct.mdp5_interface*, %struct.mdp5_interface** %6, align 8
  %19 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = call i32 @MDP5_CTL_OP_INTF_NUM(i64 %21)
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %16, %2
  %26 = load %struct.mdp5_interface*, %struct.mdp5_interface** %6, align 8
  %27 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %52 [
    i32 129, label %29
    i32 128, label %40
  ]

29:                                               ; preds = %25
  %30 = load %struct.mdp5_interface*, %struct.mdp5_interface** %6, align 8
  %31 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MDP5_INTF_DSI_MODE_COMMAND, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @MDP5_CTL_OP_CMD_MODE, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %35, %29
  br label %53

40:                                               ; preds = %25
  %41 = load %struct.mdp5_interface*, %struct.mdp5_interface** %6, align 8
  %42 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MDP5_INTF_WB_MODE_LINE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i32, i32* @MODE_WB_2_LINE, align 4
  %48 = call i32 @MDP5_CTL_OP_MODE(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %46, %40
  br label %53

52:                                               ; preds = %25
  br label %53

53:                                               ; preds = %52, %51, %39
  %54 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %4, align 8
  %55 = getelementptr inbounds %struct.mdp5_pipeline, %struct.mdp5_pipeline* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* @MDP5_CTL_OP_PACK_3D_ENABLE, align 4
  %60 = call i32 @MDP5_CTL_OP_PACK_3D(i32 1)
  %61 = or i32 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %3, align 8
  %66 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %65, i32 0, i32 0
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %3, align 8
  %70 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %3, align 8
  %71 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @REG_MDP5_CTL_OP(i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @ctl_write(%struct.mdp5_ctl* %69, i32 %73, i32 %74)
  %76 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %3, align 8
  %77 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %76, i32 0, i32 0
  %78 = load i64, i64* %5, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  ret void
}

declare dso_local i32 @mdp5_cfg_intf_is_virtual(i32) #1

declare dso_local i32 @MDP5_CTL_OP_INTF_NUM(i64) #1

declare dso_local i32 @MDP5_CTL_OP_MODE(i32) #1

declare dso_local i32 @MDP5_CTL_OP_PACK_3D(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ctl_write(%struct.mdp5_ctl*, i32, i32) #1

declare dso_local i32 @REG_MDP5_CTL_OP(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
