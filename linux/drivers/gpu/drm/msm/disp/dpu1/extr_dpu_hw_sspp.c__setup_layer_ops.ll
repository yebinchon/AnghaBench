; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c__setup_layer_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c__setup_layer_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_pipe = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@DPU_SSPP_SRC = common dso_local global i32 0, align 4
@dpu_hw_sspp_setup_format = common dso_local global i32 0, align 4
@dpu_hw_sspp_setup_rects = common dso_local global i32 0, align 4
@dpu_hw_sspp_setup_sourceaddress = common dso_local global i32 0, align 4
@dpu_hw_sspp_setup_solidfill = common dso_local global i32 0, align 4
@dpu_hw_sspp_setup_pe_config = common dso_local global i32 0, align 4
@DPU_SSPP_QOS = common dso_local global i32 0, align 4
@dpu_hw_sspp_setup_danger_safe_lut = common dso_local global i32 0, align 4
@dpu_hw_sspp_setup_creq_lut = common dso_local global i32 0, align 4
@dpu_hw_sspp_setup_qos_ctrl = common dso_local global i32 0, align 4
@DPU_SSPP_CSC = common dso_local global i32 0, align 4
@DPU_SSPP_CSC_10BIT = common dso_local global i32 0, align 4
@dpu_hw_sspp_setup_csc = common dso_local global i32 0, align 4
@DPU_SSPP_SMART_DMA_V1 = common dso_local global i32 0, align 4
@DPU_SSPP_SMART_DMA_V2 = common dso_local global i32 0, align 4
@dpu_hw_sspp_setup_multirect = common dso_local global i32 0, align 4
@DPU_SSPP_SCALER_QSEED3 = common dso_local global i32 0, align 4
@_dpu_hw_sspp_setup_scaler3 = common dso_local global i32 0, align 4
@_dpu_hw_sspp_get_scaler3_ver = common dso_local global i32 0, align 4
@DPU_SSPP_CDP = common dso_local global i32 0, align 4
@dpu_hw_sspp_setup_cdp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_pipe*, i64)* @_setup_layer_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_setup_layer_ops(%struct.dpu_hw_pipe* %0, i64 %1) #0 {
  %3 = alloca %struct.dpu_hw_pipe*, align 8
  %4 = alloca i64, align 8
  store %struct.dpu_hw_pipe* %0, %struct.dpu_hw_pipe** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @DPU_SSPP_SRC, align 4
  %6 = call i64 @test_bit(i32 %5, i64* %4)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %2
  %9 = load i32, i32* @dpu_hw_sspp_setup_format, align 4
  %10 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %11 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 12
  store i32 %9, i32* %12, align 8
  %13 = load i32, i32* @dpu_hw_sspp_setup_rects, align 4
  %14 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %15 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 11
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @dpu_hw_sspp_setup_sourceaddress, align 4
  %18 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %19 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 10
  store i32 %17, i32* %20, align 8
  %21 = load i32, i32* @dpu_hw_sspp_setup_solidfill, align 4
  %22 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %23 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 9
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @dpu_hw_sspp_setup_pe_config, align 4
  %26 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %27 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 8
  store i32 %25, i32* %28, align 8
  br label %29

29:                                               ; preds = %8, %2
  %30 = load i32, i32* @DPU_SSPP_QOS, align 4
  %31 = call i64 @test_bit(i32 %30, i64* %4)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i32, i32* @dpu_hw_sspp_setup_danger_safe_lut, align 4
  %35 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %36 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 7
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @dpu_hw_sspp_setup_creq_lut, align 4
  %39 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %40 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 6
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @dpu_hw_sspp_setup_qos_ctrl, align 4
  %43 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %44 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 5
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %33, %29
  %47 = load i32, i32* @DPU_SSPP_CSC, align 4
  %48 = call i64 @test_bit(i32 %47, i64* %4)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @DPU_SSPP_CSC_10BIT, align 4
  %52 = call i64 @test_bit(i32 %51, i64* %4)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50, %46
  %55 = load i32, i32* @dpu_hw_sspp_setup_csc, align 4
  %56 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %57 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  store i32 %55, i32* %58, align 8
  br label %59

59:                                               ; preds = %54, %50
  %60 = load i32, i32* @DPU_SSPP_SMART_DMA_V1, align 4
  %61 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %62 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = call i64 @test_bit(i32 %60, i64* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %59
  %68 = load i32, i32* @DPU_SSPP_SMART_DMA_V2, align 4
  %69 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %70 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = call i64 @test_bit(i32 %68, i64* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %67, %59
  %76 = load i32, i32* @dpu_hw_sspp_setup_multirect, align 4
  %77 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %78 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  store i32 %76, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %67
  %81 = load i32, i32* @DPU_SSPP_SCALER_QSEED3, align 4
  %82 = call i64 @test_bit(i32 %81, i64* %4)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i32, i32* @_dpu_hw_sspp_setup_scaler3, align 4
  %86 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %87 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 8
  %89 = load i32, i32* @_dpu_hw_sspp_get_scaler3_ver, align 4
  %90 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %91 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  br label %93

93:                                               ; preds = %84, %80
  %94 = load i32, i32* @DPU_SSPP_CDP, align 4
  %95 = call i64 @test_bit(i32 %94, i64* %4)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i32, i32* @dpu_hw_sspp_setup_cdp, align 4
  %99 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %100 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  br label %102

102:                                              ; preds = %97, %93
  ret void
}

declare dso_local i64 @test_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
