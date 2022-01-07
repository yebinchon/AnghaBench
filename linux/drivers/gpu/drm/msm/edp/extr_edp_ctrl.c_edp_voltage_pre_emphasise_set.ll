; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_edp_voltage_pre_emphasise_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_edp_voltage_pre_emphasise_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edp_ctrl = type { i64, i64, i32 }

@.str = private unnamed_addr constant [10 x i8] c"v=%d p=%d\00", align 1
@vm_pre_emphasis = common dso_local global i32** null, align 8
@vm_voltage_swing = common dso_local global i32** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edp_ctrl*)* @edp_voltage_pre_emphasise_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edp_voltage_pre_emphasise_set(%struct.edp_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.edp_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.edp_ctrl* %0, %struct.edp_ctrl** %3, align 8
  %6 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %7 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %10 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %8, i64 %11)
  %13 = load i32**, i32*** @vm_pre_emphasis, align 8
  %14 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %15 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %13, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %22 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %20, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %4, align 4
  %28 = load i32**, i32*** @vm_voltage_swing, align 8
  %29 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %30 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %28, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %37 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 255
  br i1 %44, label %45, label %63

45:                                               ; preds = %1
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 255
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %50 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @msm_edp_phy_vm_pe_cfg(i32 %51, i32 %52, i32 %53)
  %55 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %56 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %57 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %60 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @edp_lane_set_write(%struct.edp_ctrl* %55, i64 %58, i64 %61)
  store i32 %62, i32* %2, align 4
  br label %66

63:                                               ; preds = %45, %1
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %63, %48
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @DBG(i8*, i64, i64) #1

declare dso_local i32 @msm_edp_phy_vm_pe_cfg(i32, i32, i32) #1

declare dso_local i32 @edp_lane_set_write(%struct.edp_ctrl*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
