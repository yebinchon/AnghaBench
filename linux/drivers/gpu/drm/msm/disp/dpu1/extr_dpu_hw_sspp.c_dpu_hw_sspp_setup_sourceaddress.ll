; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c_dpu_hw_sspp_setup_sourceaddress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c_dpu_hw_sspp_setup_sourceaddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_pipe = type { i32 }
%struct.dpu_hw_pipe_cfg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@DPU_SSPP_SRC = common dso_local global i32 0, align 4
@DPU_SSPP_RECT_SOLO = common dso_local global i32 0, align 4
@SSPP_SRC0_ADDR = common dso_local global i64 0, align 8
@DPU_SSPP_RECT_0 = common dso_local global i32 0, align 4
@SSPP_SRC2_ADDR = common dso_local global i64 0, align 8
@SSPP_SRC1_ADDR = common dso_local global i64 0, align 8
@SSPP_SRC3_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_pipe*, %struct.dpu_hw_pipe_cfg*, i32)* @dpu_hw_sspp_setup_sourceaddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_sspp_setup_sourceaddress(%struct.dpu_hw_pipe* %0, %struct.dpu_hw_pipe_cfg* %1, i32 %2) #0 {
  %4 = alloca %struct.dpu_hw_pipe*, align 8
  %5 = alloca %struct.dpu_hw_pipe_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.dpu_hw_pipe* %0, %struct.dpu_hw_pipe** %4, align 8
  store %struct.dpu_hw_pipe_cfg* %1, %struct.dpu_hw_pipe_cfg** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %4, align 8
  %10 = load i32, i32* @DPU_SSPP_SRC, align 4
  %11 = call i64 @_sspp_subblk_offset(%struct.dpu_hw_pipe* %9, i32 %10, i64* %8)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %105

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @DPU_SSPP_RECT_SOLO, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %46, %18
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %5, align 8
  %22 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %19
  %28 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %4, align 8
  %29 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %28, i32 0, i32 0
  %30 = load i64, i64* @SSPP_SRC0_ADDR, align 8
  %31 = load i64, i64* %8, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %33, 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %5, align 8
  %38 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @DPU_REG_WRITE(i32* %29, i64 %36, i32 %44)
  br label %46

46:                                               ; preds = %27
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %19

49:                                               ; preds = %19
  br label %105

50:                                               ; preds = %14
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @DPU_SSPP_RECT_0, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %50
  %55 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %4, align 8
  %56 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %55, i32 0, i32 0
  %57 = load i64, i64* @SSPP_SRC0_ADDR, align 8
  %58 = load i64, i64* %8, align 8
  %59 = add nsw i64 %57, %58
  %60 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %5, align 8
  %61 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @DPU_REG_WRITE(i32* %56, i64 %59, i32 %65)
  %67 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %4, align 8
  %68 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %67, i32 0, i32 0
  %69 = load i64, i64* @SSPP_SRC2_ADDR, align 8
  %70 = load i64, i64* %8, align 8
  %71 = add nsw i64 %69, %70
  %72 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %5, align 8
  %73 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @DPU_REG_WRITE(i32* %68, i64 %71, i32 %77)
  br label %104

79:                                               ; preds = %50
  %80 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %4, align 8
  %81 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %80, i32 0, i32 0
  %82 = load i64, i64* @SSPP_SRC1_ADDR, align 8
  %83 = load i64, i64* %8, align 8
  %84 = add nsw i64 %82, %83
  %85 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %5, align 8
  %86 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @DPU_REG_WRITE(i32* %81, i64 %84, i32 %90)
  %92 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %4, align 8
  %93 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %92, i32 0, i32 0
  %94 = load i64, i64* @SSPP_SRC3_ADDR, align 8
  %95 = load i64, i64* %8, align 8
  %96 = add nsw i64 %94, %95
  %97 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %5, align 8
  %98 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @DPU_REG_WRITE(i32* %93, i64 %96, i32 %102)
  br label %104

104:                                              ; preds = %79, %54
  br label %105

105:                                              ; preds = %13, %104, %49
  ret void
}

declare dso_local i64 @_sspp_subblk_offset(%struct.dpu_hw_pipe*, i32, i64*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @DPU_REG_WRITE(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
