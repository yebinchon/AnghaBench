; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c_dpu_hw_sspp_setup_cdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c_dpu_hw_sspp_setup_cdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_pipe = type { i32 }
%struct.dpu_hw_pipe_cdp_cfg = type { i64, i64, i64, i64 }

@DPU_SSPP_SRC = common dso_local global i32 0, align 4
@DPU_SSPP_CDP_PRELOAD_AHEAD_64 = common dso_local global i64 0, align 8
@SSPP_CDP_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_pipe*, %struct.dpu_hw_pipe_cdp_cfg*)* @dpu_hw_sspp_setup_cdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_sspp_setup_cdp(%struct.dpu_hw_pipe* %0, %struct.dpu_hw_pipe_cdp_cfg* %1) #0 {
  %3 = alloca %struct.dpu_hw_pipe*, align 8
  %4 = alloca %struct.dpu_hw_pipe_cdp_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dpu_hw_pipe* %0, %struct.dpu_hw_pipe** %3, align 8
  store %struct.dpu_hw_pipe_cdp_cfg* %1, %struct.dpu_hw_pipe_cdp_cfg** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %8 = icmp ne %struct.dpu_hw_pipe* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.dpu_hw_pipe_cdp_cfg*, %struct.dpu_hw_pipe_cdp_cfg** %4, align 8
  %11 = icmp ne %struct.dpu_hw_pipe_cdp_cfg* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  br label %62

13:                                               ; preds = %9
  %14 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %15 = load i32, i32* @DPU_SSPP_SRC, align 4
  %16 = call i64 @_sspp_subblk_offset(%struct.dpu_hw_pipe* %14, i32 %15, i32* %5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %62

19:                                               ; preds = %13
  %20 = load %struct.dpu_hw_pipe_cdp_cfg*, %struct.dpu_hw_pipe_cdp_cfg** %4, align 8
  %21 = getelementptr inbounds %struct.dpu_hw_pipe_cdp_cfg, %struct.dpu_hw_pipe_cdp_cfg* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = call i32 @BIT(i32 0)
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %24, %19
  %29 = load %struct.dpu_hw_pipe_cdp_cfg*, %struct.dpu_hw_pipe_cdp_cfg** %4, align 8
  %30 = getelementptr inbounds %struct.dpu_hw_pipe_cdp_cfg, %struct.dpu_hw_pipe_cdp_cfg* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = call i32 @BIT(i32 1)
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.dpu_hw_pipe_cdp_cfg*, %struct.dpu_hw_pipe_cdp_cfg** %4, align 8
  %39 = getelementptr inbounds %struct.dpu_hw_pipe_cdp_cfg, %struct.dpu_hw_pipe_cdp_cfg* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = call i32 @BIT(i32 2)
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load %struct.dpu_hw_pipe_cdp_cfg*, %struct.dpu_hw_pipe_cdp_cfg** %4, align 8
  %48 = getelementptr inbounds %struct.dpu_hw_pipe_cdp_cfg, %struct.dpu_hw_pipe_cdp_cfg* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DPU_SSPP_CDP_PRELOAD_AHEAD_64, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = call i32 @BIT(i32 3)
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %52, %46
  %57 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %58 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %57, i32 0, i32 0
  %59 = load i32, i32* @SSPP_CDP_CNTL, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @DPU_REG_WRITE(i32* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %18, %12
  ret void
}

declare dso_local i64 @_sspp_subblk_offset(%struct.dpu_hw_pipe*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DPU_REG_WRITE(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
