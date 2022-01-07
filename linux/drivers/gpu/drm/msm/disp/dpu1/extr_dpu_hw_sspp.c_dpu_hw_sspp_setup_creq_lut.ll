; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c_dpu_hw_sspp_setup_creq_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c_dpu_hw_sspp_setup_creq_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_pipe = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dpu_hw_pipe_qos_cfg = type { i32 }

@DPU_SSPP_SRC = common dso_local global i32 0, align 4
@DPU_SSPP_QOS_8LVL = common dso_local global i32 0, align 4
@SSPP_CREQ_LUT_0 = common dso_local global i64 0, align 8
@SSPP_CREQ_LUT_1 = common dso_local global i64 0, align 8
@SSPP_CREQ_LUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_pipe*, %struct.dpu_hw_pipe_qos_cfg*)* @dpu_hw_sspp_setup_creq_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_sspp_setup_creq_lut(%struct.dpu_hw_pipe* %0, %struct.dpu_hw_pipe_qos_cfg* %1) #0 {
  %3 = alloca %struct.dpu_hw_pipe*, align 8
  %4 = alloca %struct.dpu_hw_pipe_qos_cfg*, align 8
  %5 = alloca i64, align 8
  store %struct.dpu_hw_pipe* %0, %struct.dpu_hw_pipe** %3, align 8
  store %struct.dpu_hw_pipe_qos_cfg* %1, %struct.dpu_hw_pipe_qos_cfg** %4, align 8
  %6 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %7 = load i32, i32* @DPU_SSPP_SRC, align 4
  %8 = call i64 @_sspp_subblk_offset(%struct.dpu_hw_pipe* %6, i32 %7, i64* %5)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %54

11:                                               ; preds = %2
  %12 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %13 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %44

16:                                               ; preds = %11
  %17 = load i32, i32* @DPU_SSPP_QOS_8LVL, align 4
  %18 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %19 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %17, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %16
  %25 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %26 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %25, i32 0, i32 0
  %27 = load i64, i64* @SSPP_CREQ_LUT_0, align 8
  %28 = load i64, i64* %5, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.dpu_hw_pipe_qos_cfg*, %struct.dpu_hw_pipe_qos_cfg** %4, align 8
  %31 = getelementptr inbounds %struct.dpu_hw_pipe_qos_cfg, %struct.dpu_hw_pipe_qos_cfg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DPU_REG_WRITE(i32* %26, i64 %29, i32 %32)
  %34 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %35 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %34, i32 0, i32 0
  %36 = load i64, i64* @SSPP_CREQ_LUT_1, align 8
  %37 = load i64, i64* %5, align 8
  %38 = add nsw i64 %36, %37
  %39 = load %struct.dpu_hw_pipe_qos_cfg*, %struct.dpu_hw_pipe_qos_cfg** %4, align 8
  %40 = getelementptr inbounds %struct.dpu_hw_pipe_qos_cfg, %struct.dpu_hw_pipe_qos_cfg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 32
  %43 = call i32 @DPU_REG_WRITE(i32* %35, i64 %38, i32 %42)
  br label %54

44:                                               ; preds = %16, %11
  %45 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %46 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %45, i32 0, i32 0
  %47 = load i64, i64* @SSPP_CREQ_LUT, align 8
  %48 = load i64, i64* %5, align 8
  %49 = add nsw i64 %47, %48
  %50 = load %struct.dpu_hw_pipe_qos_cfg*, %struct.dpu_hw_pipe_qos_cfg** %4, align 8
  %51 = getelementptr inbounds %struct.dpu_hw_pipe_qos_cfg, %struct.dpu_hw_pipe_qos_cfg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @DPU_REG_WRITE(i32* %46, i64 %49, i32 %52)
  br label %54

54:                                               ; preds = %10, %44, %24
  ret void
}

declare dso_local i64 @_sspp_subblk_offset(%struct.dpu_hw_pipe*, i32, i64*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @DPU_REG_WRITE(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
