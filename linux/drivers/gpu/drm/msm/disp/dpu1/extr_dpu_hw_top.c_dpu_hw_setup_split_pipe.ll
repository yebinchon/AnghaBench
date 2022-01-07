; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_top.c_dpu_hw_setup_split_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_top.c_dpu_hw_setup_split_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_mdp = type { %struct.dpu_hw_blk_reg_map }
%struct.dpu_hw_blk_reg_map = type { i32 }
%struct.split_pipe_cfg = type { i32, i64, i64, i64 }

@INTF_MODE_CMD = common dso_local global i64 0, align 8
@FLD_SPLIT_DISPLAY_CMD = common dso_local global i32 0, align 4
@INTF_2 = common dso_local global i64 0, align 8
@FLD_INTF_1_SW_TRG_MUX = common dso_local global i32 0, align 4
@FLD_INTF_2_SW_TRG_MUX = common dso_local global i32 0, align 4
@SSPP_SPARE = common dso_local global i32 0, align 4
@SPLIT_DISPLAY_LOWER_PIPE_CTRL = common dso_local global i32 0, align 4
@SPLIT_DISPLAY_UPPER_PIPE_CTRL = common dso_local global i32 0, align 4
@SPLIT_DISPLAY_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_mdp*, %struct.split_pipe_cfg*)* @dpu_hw_setup_split_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_setup_split_pipe(%struct.dpu_hw_mdp* %0, %struct.split_pipe_cfg* %1) #0 {
  %3 = alloca %struct.dpu_hw_mdp*, align 8
  %4 = alloca %struct.split_pipe_cfg*, align 8
  %5 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dpu_hw_mdp* %0, %struct.dpu_hw_mdp** %3, align 8
  store %struct.split_pipe_cfg* %1, %struct.split_pipe_cfg** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %3, align 8
  %9 = icmp ne %struct.dpu_hw_mdp* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.split_pipe_cfg*, %struct.split_pipe_cfg** %4, align 8
  %12 = icmp ne %struct.split_pipe_cfg* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %2
  br label %83

14:                                               ; preds = %10
  %15 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %3, align 8
  %16 = getelementptr inbounds %struct.dpu_hw_mdp, %struct.dpu_hw_mdp* %15, i32 0, i32 0
  store %struct.dpu_hw_blk_reg_map* %16, %struct.dpu_hw_blk_reg_map** %5, align 8
  %17 = load %struct.split_pipe_cfg*, %struct.split_pipe_cfg** %4, align 8
  %18 = getelementptr inbounds %struct.split_pipe_cfg, %struct.split_pipe_cfg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %14
  %22 = load %struct.split_pipe_cfg*, %struct.split_pipe_cfg** %4, align 8
  %23 = getelementptr inbounds %struct.split_pipe_cfg, %struct.split_pipe_cfg* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @INTF_MODE_CMD, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load i32, i32* @FLD_SPLIT_DISPLAY_CMD, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.split_pipe_cfg*, %struct.split_pipe_cfg** %4, align 8
  %30 = getelementptr inbounds %struct.split_pipe_cfg, %struct.split_pipe_cfg* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @INTF_2, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @FLD_INTF_1_SW_TRG_MUX, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %42

38:                                               ; preds = %27
  %39 = load i32, i32* @FLD_INTF_2_SW_TRG_MUX, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %6, align 4
  br label %57

44:                                               ; preds = %21
  %45 = load %struct.split_pipe_cfg*, %struct.split_pipe_cfg** %4, align 8
  %46 = getelementptr inbounds %struct.split_pipe_cfg, %struct.split_pipe_cfg* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @INTF_2, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @FLD_INTF_1_SW_TRG_MUX, align 4
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @FLD_INTF_2_SW_TRG_MUX, align 4
  store i32 %52, i32* %6, align 4
  br label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @FLD_INTF_2_SW_TRG_MUX, align 4
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @FLD_INTF_1_SW_TRG_MUX, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %42
  br label %58

58:                                               ; preds = %57, %14
  %59 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %60 = load i32, i32* @SSPP_SPARE, align 4
  %61 = load %struct.split_pipe_cfg*, %struct.split_pipe_cfg** %4, align 8
  %62 = getelementptr inbounds %struct.split_pipe_cfg, %struct.split_pipe_cfg* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  %67 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %59, i32 %60, i32 %66)
  %68 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %69 = load i32, i32* @SPLIT_DISPLAY_LOWER_PIPE_CTRL, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %68, i32 %69, i32 %70)
  %72 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %73 = load i32, i32* @SPLIT_DISPLAY_UPPER_PIPE_CTRL, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %72, i32 %73, i32 %74)
  %76 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %77 = load i32, i32* @SPLIT_DISPLAY_EN, align 4
  %78 = load %struct.split_pipe_cfg*, %struct.split_pipe_cfg** %4, align 8
  %79 = getelementptr inbounds %struct.split_pipe_cfg, %struct.split_pipe_cfg* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, 1
  %82 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %76, i32 %77, i32 %81)
  br label %83

83:                                               ; preds = %58, %13
  ret void
}

declare dso_local i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
