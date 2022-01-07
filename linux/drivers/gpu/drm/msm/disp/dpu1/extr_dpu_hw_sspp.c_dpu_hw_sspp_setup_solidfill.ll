; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c_dpu_hw_sspp_setup_solidfill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c_dpu_hw_sspp_setup_solidfill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_pipe = type { i32 }

@DPU_SSPP_SRC = common dso_local global i32 0, align 4
@DPU_SSPP_RECT_SOLO = common dso_local global i32 0, align 4
@DPU_SSPP_RECT_0 = common dso_local global i32 0, align 4
@SSPP_SRC_CONSTANT_COLOR = common dso_local global i64 0, align 8
@SSPP_SRC_CONSTANT_COLOR_REC1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_pipe*, i64, i32)* @dpu_hw_sspp_setup_solidfill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_sspp_setup_solidfill(%struct.dpu_hw_pipe* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.dpu_hw_pipe*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.dpu_hw_pipe* %0, %struct.dpu_hw_pipe** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %4, align 8
  %9 = load i32, i32* @DPU_SSPP_SRC, align 4
  %10 = call i64 @_sspp_subblk_offset(%struct.dpu_hw_pipe* %8, i32 %9, i64* %7)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %37

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @DPU_SSPP_RECT_SOLO, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @DPU_SSPP_RECT_0, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17, %13
  %22 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %4, align 8
  %23 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %22, i32 0, i32 0
  %24 = load i64, i64* @SSPP_SRC_CONSTANT_COLOR, align 8
  %25 = load i64, i64* %7, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @DPU_REG_WRITE(i32* %23, i64 %26, i64 %27)
  br label %37

29:                                               ; preds = %17
  %30 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %4, align 8
  %31 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %30, i32 0, i32 0
  %32 = load i64, i64* @SSPP_SRC_CONSTANT_COLOR_REC1, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @DPU_REG_WRITE(i32* %31, i64 %34, i64 %35)
  br label %37

37:                                               ; preds = %12, %29, %21
  ret void
}

declare dso_local i64 @_sspp_subblk_offset(%struct.dpu_hw_pipe*, i32, i64*) #1

declare dso_local i32 @DPU_REG_WRITE(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
