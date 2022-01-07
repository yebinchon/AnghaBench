; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c__sspp_setup_opmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c__sspp_setup_opmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_pipe = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DPU_SSPP_SCALER_QSEED2 = common dso_local global i32 0, align 4
@DPU_SSPP_CSC = common dso_local global i32 0, align 4
@SSPP_VIG_OP_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_pipe*, i64, i64)* @_sspp_setup_opmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_sspp_setup_opmode(%struct.dpu_hw_pipe* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.dpu_hw_pipe*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.dpu_hw_pipe* %0, %struct.dpu_hw_pipe** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @DPU_SSPP_SCALER_QSEED2, align 4
  %10 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %4, align 8
  %11 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @test_bit(i32 %9, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %4, align 8
  %18 = load i32, i32* @DPU_SSPP_SCALER_QSEED2, align 4
  %19 = call i64 @_sspp_subblk_offset(%struct.dpu_hw_pipe* %17, i32 %18, i64* %7)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @DPU_SSPP_CSC, align 4
  %23 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %4, align 8
  %24 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @test_bit(i32 %22, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21, %16, %3
  br label %56

30:                                               ; preds = %21
  %31 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %4, align 8
  %32 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %31, i32 0, i32 0
  %33 = load i64, i64* @SSPP_VIG_OP_MODE, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i64 @DPU_REG_READ(i32* %32, i64 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %8, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %8, align 8
  br label %48

43:                                               ; preds = %30
  %44 = load i64, i64* %5, align 8
  %45 = xor i64 %44, -1
  %46 = load i64, i64* %8, align 8
  %47 = and i64 %46, %45
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %43, %39
  %49 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %4, align 8
  %50 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %49, i32 0, i32 0
  %51 = load i64, i64* @SSPP_VIG_OP_MODE, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @DPU_REG_WRITE(i32* %50, i64 %53, i64 %54)
  br label %56

56:                                               ; preds = %48, %29
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @_sspp_subblk_offset(%struct.dpu_hw_pipe*, i32, i64*) #1

declare dso_local i64 @DPU_REG_READ(i32*, i64) #1

declare dso_local i32 @DPU_REG_WRITE(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
