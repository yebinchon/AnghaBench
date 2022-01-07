; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_program_bit_depth_reduction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_program_bit_depth_reduction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { i32 }
%struct.bit_depth_reduction_params = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64, i64 }

@COLOR_DEPTH_121212 = common dso_local global i32 0, align 4
@DCP_OUT_TRUNC_ROUND_DEPTH_12BIT = common dso_local global i32 0, align 4
@DCP_OUT_TRUNC_ROUND_MODE_TRUNCATE = common dso_local global i32 0, align 4
@DCP_OUT_TRUNC_ROUND_MODE_ROUND = common dso_local global i32 0, align 4
@DCP_OUT_TRUNC_ROUND_DEPTH_8BIT = common dso_local global i32 0, align 4
@DCP_OUT_TRUNC_ROUND_DEPTH_10BIT = common dso_local global i32 0, align 4
@DCP_SPATIAL_DITHER_MODE_A_AA_A = common dso_local global i32 0, align 4
@DCP_SPATIAL_DITHER_DEPTH_30BPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_transform*, i32, %struct.bit_depth_reduction_params*)* @program_bit_depth_reduction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_bit_depth_reduction(%struct.dce_transform* %0, i32 %1, %struct.bit_depth_reduction_params* %2) #0 {
  %4 = alloca %struct.dce_transform*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bit_depth_reduction_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dce_transform* %0, %struct.dce_transform** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bit_depth_reduction_params* %2, %struct.bit_depth_reduction_params** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @COLOR_DEPTH_121212, align 4
  %12 = icmp ult i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %6, align 8
  %16 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @DCP_OUT_TRUNC_ROUND_DEPTH_12BIT, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @DCP_OUT_TRUNC_ROUND_MODE_TRUNCATE, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %6, align 8
  %22 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %64

26:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %27 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %6, align 8
  %28 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @DCP_OUT_TRUNC_ROUND_MODE_ROUND, align 4
  br label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @DCP_OUT_TRUNC_ROUND_MODE_TRUNCATE, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %8, align 4
  %38 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %6, align 8
  %39 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %36
  %44 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %6, align 8
  %45 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %43, %36
  %50 = load i32, i32* @DCP_OUT_TRUNC_ROUND_DEPTH_8BIT, align 4
  store i32 %50, i32* %7, align 4
  br label %63

51:                                               ; preds = %43
  %52 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %6, align 8
  %53 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @DCP_OUT_TRUNC_ROUND_DEPTH_10BIT, align 4
  store i32 %58, i32* %7, align 4
  br label %62

59:                                               ; preds = %51
  %60 = load i32, i32* @DCP_OUT_TRUNC_ROUND_DEPTH_12BIT, align 4
  store i32 %60, i32* %7, align 4
  %61 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %62

62:                                               ; preds = %59, %57
  br label %63

63:                                               ; preds = %62, %49
  br label %64

64:                                               ; preds = %63, %3
  %65 = load %struct.dce_transform*, %struct.dce_transform** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @set_clamp(%struct.dce_transform* %65, i32 %66)
  %68 = load %struct.dce_transform*, %struct.dce_transform** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @set_round(%struct.dce_transform* %68, i32 %69, i32 %70)
  %72 = load %struct.dce_transform*, %struct.dce_transform** %4, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @DCP_SPATIAL_DITHER_MODE_A_AA_A, align 4
  %75 = load i32, i32* @DCP_SPATIAL_DITHER_DEPTH_30BPP, align 4
  %76 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %6, align 8
  %77 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %6, align 8
  %81 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %6, align 8
  %85 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @set_dither(%struct.dce_transform* %72, i32 %73, i32 %74, i32 %75, i32 %79, i32 %83, i32 %87)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @set_clamp(%struct.dce_transform*, i32) #1

declare dso_local i32 @set_round(%struct.dce_transform*, i32, i32) #1

declare dso_local i32 @set_dither(%struct.dce_transform*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
