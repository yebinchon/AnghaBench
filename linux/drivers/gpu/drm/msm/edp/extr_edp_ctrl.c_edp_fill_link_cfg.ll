; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_edp_fill_link_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_edp_fill_link_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edp_ctrl = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"rate=%d lane=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edp_ctrl*)* @edp_fill_link_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edp_fill_link_cfg(%struct.edp_ctrl* %0) #0 {
  %2 = alloca %struct.edp_ctrl*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.edp_ctrl* %0, %struct.edp_ctrl** %2, align 8
  %8 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %9 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %13 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  %15 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %16 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 3
  store i32 %18, i32* %5, align 4
  %19 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %20 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @drm_dp_link_rate_to_bw_code(i32 %22)
  %24 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %25 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %3, align 4
  %28 = mul nsw i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = sdiv i32 %29, 8
  store i32 %30, i32* %3, align 4
  store i32 270000, i32* %4, align 4
  %31 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %32 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = mul nsw i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = sdiv i32 %36, 10
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %7, align 4
  br label %38

38:                                               ; preds = %50, %1
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %53

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = shl i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = shl i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %38

53:                                               ; preds = %46, %38
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %56 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %58 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %61 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62)
  ret void
}

declare dso_local i32 @drm_dp_link_rate_to_bw_code(i32) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
