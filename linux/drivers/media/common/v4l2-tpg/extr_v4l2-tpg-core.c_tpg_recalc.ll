; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_recalc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg_data = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32 }

@V4L2_XFER_FUNC_DEFAULT = common dso_local global i64 0, align 8
@V4L2_YCBCR_ENC_DEFAULT = common dso_local global i64 0, align 8
@V4L2_QUANTIZATION_DEFAULT = common dso_local global i64 0, align 8
@TGP_COLOR_ENC_YCBCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpg_data*)* @tpg_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpg_recalc(%struct.tpg_data* %0) #0 {
  %2 = alloca %struct.tpg_data*, align 8
  store %struct.tpg_data* %0, %struct.tpg_data** %2, align 8
  %3 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %4 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %82

7:                                                ; preds = %1
  %8 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %9 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %11 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %10, i32 0, i32 1
  store i32 1, i32* %11, align 4
  %12 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %13 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %16 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %15, i32 0, i32 2
  store i64 %14, i64* %16, align 8
  %17 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %18 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %21 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %20, i32 0, i32 4
  store i64 %19, i64* %21, align 8
  %22 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %23 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %22, i32 0, i32 11
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %26 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %25, i32 0, i32 12
  store i32 %24, i32* %26, align 4
  %27 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %28 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %31 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %30, i32 0, i32 6
  store i64 %29, i64* %31, align 8
  %32 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %33 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @V4L2_XFER_FUNC_DEFAULT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %7
  %38 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %39 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @V4L2_MAP_XFER_FUNC_DEFAULT(i32 %40)
  %42 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %43 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %37, %7
  %45 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %46 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @V4L2_YCBCR_ENC_DEFAULT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %52 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %51, i32 0, i32 10
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @V4L2_MAP_YCBCR_ENC_DEFAULT(i32 %53)
  %55 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %56 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %55, i32 0, i32 4
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %50, %44
  %58 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %59 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %58, i32 0, i32 7
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @V4L2_QUANTIZATION_DEFAULT, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %65 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %64, i32 0, i32 8
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TGP_COLOR_ENC_YCBCR, align 8
  %68 = icmp ne i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %71 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %74 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @V4L2_MAP_QUANTIZATION_DEFAULT(i32 %69, i32 %72, i64 %75)
  %77 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %78 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %77, i32 0, i32 6
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %63, %57
  %80 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %81 = call i32 @tpg_precalculate_colors(%struct.tpg_data* %80)
  br label %82

82:                                               ; preds = %79, %1
  %83 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %84 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %89 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %88, i32 0, i32 9
  store i32 0, i32* %89, align 8
  %90 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %91 = call i32 @tpg_calculate_square_border(%struct.tpg_data* %90)
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %94 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %99 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  %100 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %101 = call i32 @tpg_precalculate_line(%struct.tpg_data* %100)
  br label %102

102:                                              ; preds = %97, %92
  ret void
}

declare dso_local i64 @V4L2_MAP_XFER_FUNC_DEFAULT(i32) #1

declare dso_local i64 @V4L2_MAP_YCBCR_ENC_DEFAULT(i32) #1

declare dso_local i64 @V4L2_MAP_QUANTIZATION_DEFAULT(i32, i32, i64) #1

declare dso_local i32 @tpg_precalculate_colors(%struct.tpg_data*) #1

declare dso_local i32 @tpg_calculate_square_border(%struct.tpg_data*) #1

declare dso_local i32 @tpg_precalculate_line(%struct.tpg_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
