; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_edp_link_rate_down_shift.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_edp_link_rate_down_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edp_ctrl = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DP_LINK_BW_1_62 = common dso_local global i32 0, align 4
@EDP_LINK_BW_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"new lrate=%u prate=%u(kHz) rate=%d lane=%d p=%u b=%d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"new rate=%d %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edp_ctrl*)* @edp_link_rate_down_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edp_link_rate_down_shift(%struct.edp_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.edp_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.edp_ctrl* %0, %struct.edp_ctrl** %3, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %12 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %15 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %18 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %22 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 3
  store i32 %24, i32* %6, align 4
  %25 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %26 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = mul nsw i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = sdiv i32 %31, 8
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @DP_LINK_BW_1_62, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %1
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @EDP_LINK_BW_MAX, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %41, 4
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %40, %36, %1
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %90

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = icmp sge i32 %49, 1
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = shl i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %55, %51, %48
  store i32 270000, i32* %5, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %5, align 4
  %61 = mul nsw i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = sdiv i32 %62, 10
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %5, align 4
  %66 = mul nsw i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %72 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 (i8*, i32, i32, ...) @DBG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68, i32 %69, i32 %70, i32 %73, i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %58
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %82 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %85 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 (i8*, i32, i32, ...) @DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87)
  store i32 0, i32* %2, align 4
  br label %93

89:                                               ; preds = %58
  br label %90

90:                                               ; preds = %89, %45
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %90, %79
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @DBG(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
