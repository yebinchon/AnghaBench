; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_opp.c_set_truncation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_opp.c_set_truncation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_opp = type { i32 }
%struct.bit_depth_reduction_params = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }

@FMT_BIT_DEPTH_CONTROL = common dso_local global i32 0, align 4
@FMT_TRUNCATE_EN = common dso_local global i32 0, align 4
@FMT_TRUNCATE_DEPTH = common dso_local global i32 0, align 4
@FMT_TRUNCATE_MODE = common dso_local global i32 0, align 4
@PIXEL_ENCODING_YCBCR422 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce110_opp*, %struct.bit_depth_reduction_params*)* @set_truncation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_truncation(%struct.dce110_opp* %0, %struct.bit_depth_reduction_params* %1) #0 {
  %3 = alloca %struct.dce110_opp*, align 8
  %4 = alloca %struct.bit_depth_reduction_params*, align 8
  store %struct.dce110_opp* %0, %struct.dce110_opp** %3, align 8
  store %struct.bit_depth_reduction_params* %1, %struct.bit_depth_reduction_params** %4, align 8
  %5 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %6 = load i32, i32* @FMT_TRUNCATE_EN, align 4
  %7 = load i32, i32* @FMT_TRUNCATE_DEPTH, align 4
  %8 = load i32, i32* @FMT_TRUNCATE_MODE, align 4
  %9 = call i32 @REG_UPDATE_3(i32 %5, i32 %6, i32 0, i32 %7, i32 0, i32 %8, i32 0)
  %10 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %11 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PIXEL_ENCODING_YCBCR422, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %2
  %16 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %17 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %23 = load i32, i32* @FMT_TRUNCATE_EN, align 4
  %24 = load i32, i32* @FMT_TRUNCATE_DEPTH, align 4
  %25 = load i32, i32* @FMT_TRUNCATE_MODE, align 4
  %26 = call i32 @REG_UPDATE_3(i32 %22, i32 %23, i32 1, i32 %24, i32 1, i32 %25, i32 0)
  br label %40

27:                                               ; preds = %15
  %28 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %29 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %35 = load i32, i32* @FMT_TRUNCATE_EN, align 4
  %36 = load i32, i32* @FMT_TRUNCATE_DEPTH, align 4
  %37 = load i32, i32* @FMT_TRUNCATE_MODE, align 4
  %38 = call i32 @REG_UPDATE_3(i32 %34, i32 %35, i32 1, i32 %36, i32 2, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %33, %27
  br label %40

40:                                               ; preds = %39, %21
  br label %62

41:                                               ; preds = %2
  %42 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %43 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %62

48:                                               ; preds = %41
  %49 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %50 = load i32, i32* @FMT_TRUNCATE_EN, align 4
  %51 = load i32, i32* @FMT_TRUNCATE_DEPTH, align 4
  %52 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %53 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @FMT_TRUNCATE_MODE, align 4
  %57 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %58 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @REG_UPDATE_3(i32 %49, i32 %50, i32 1, i32 %51, i32 %55, i32 %56, i32 %60)
  br label %62

62:                                               ; preds = %48, %47, %40
  ret void
}

declare dso_local i32 @REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
