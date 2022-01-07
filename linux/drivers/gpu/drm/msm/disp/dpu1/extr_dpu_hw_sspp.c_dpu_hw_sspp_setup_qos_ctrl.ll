; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c_dpu_hw_sspp_setup_qos_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c_dpu_hw_sspp_setup_qos_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_pipe = type { i32 }
%struct.dpu_hw_pipe_qos_cfg = type { i32, i32, i64, i64 }

@DPU_SSPP_SRC = common dso_local global i32 0, align 4
@SSPP_QOS_CTRL_CREQ_VBLANK_MASK = common dso_local global i32 0, align 4
@SSPP_QOS_CTRL_CREQ_VBLANK_OFF = common dso_local global i32 0, align 4
@SSPP_QOS_CTRL_DANGER_VBLANK_MASK = common dso_local global i32 0, align 4
@SSPP_QOS_CTRL_DANGER_VBLANK_OFF = common dso_local global i32 0, align 4
@SSPP_QOS_CTRL_VBLANK_EN = common dso_local global i32 0, align 4
@SSPP_QOS_CTRL_DANGER_SAFE_EN = common dso_local global i32 0, align 4
@SSPP_QOS_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_pipe*, %struct.dpu_hw_pipe_qos_cfg*)* @dpu_hw_sspp_setup_qos_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_sspp_setup_qos_ctrl(%struct.dpu_hw_pipe* %0, %struct.dpu_hw_pipe_qos_cfg* %1) #0 {
  %3 = alloca %struct.dpu_hw_pipe*, align 8
  %4 = alloca %struct.dpu_hw_pipe_qos_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dpu_hw_pipe* %0, %struct.dpu_hw_pipe** %3, align 8
  store %struct.dpu_hw_pipe_qos_cfg* %1, %struct.dpu_hw_pipe_qos_cfg** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %8 = load i32, i32* @DPU_SSPP_SRC, align 4
  %9 = call i64 @_sspp_subblk_offset(%struct.dpu_hw_pipe* %7, i32 %8, i32* %5)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %56

12:                                               ; preds = %2
  %13 = load %struct.dpu_hw_pipe_qos_cfg*, %struct.dpu_hw_pipe_qos_cfg** %4, align 8
  %14 = getelementptr inbounds %struct.dpu_hw_pipe_qos_cfg, %struct.dpu_hw_pipe_qos_cfg* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %12
  %18 = load %struct.dpu_hw_pipe_qos_cfg*, %struct.dpu_hw_pipe_qos_cfg** %4, align 8
  %19 = getelementptr inbounds %struct.dpu_hw_pipe_qos_cfg, %struct.dpu_hw_pipe_qos_cfg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SSPP_QOS_CTRL_CREQ_VBLANK_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @SSPP_QOS_CTRL_CREQ_VBLANK_OFF, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load %struct.dpu_hw_pipe_qos_cfg*, %struct.dpu_hw_pipe_qos_cfg** %4, align 8
  %28 = getelementptr inbounds %struct.dpu_hw_pipe_qos_cfg, %struct.dpu_hw_pipe_qos_cfg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SSPP_QOS_CTRL_DANGER_VBLANK_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @SSPP_QOS_CTRL_DANGER_VBLANK_OFF, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @SSPP_QOS_CTRL_VBLANK_EN, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %17, %12
  %40 = load %struct.dpu_hw_pipe_qos_cfg*, %struct.dpu_hw_pipe_qos_cfg** %4, align 8
  %41 = getelementptr inbounds %struct.dpu_hw_pipe_qos_cfg, %struct.dpu_hw_pipe_qos_cfg* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @SSPP_QOS_CTRL_DANGER_SAFE_EN, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %50 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %49, i32 0, i32 0
  %51 = load i32, i32* @SSPP_QOS_CTRL, align 4
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @DPU_REG_WRITE(i32* %50, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %48, %11
  ret void
}

declare dso_local i64 @_sspp_subblk_offset(%struct.dpu_hw_pipe*, i32, i32*) #1

declare dso_local i32 @DPU_REG_WRITE(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
