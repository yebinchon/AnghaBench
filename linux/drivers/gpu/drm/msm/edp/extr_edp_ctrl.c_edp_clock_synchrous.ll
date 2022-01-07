; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_edp_clock_synchrous.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_edp_clock_synchrous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edp_ctrl = type { i32, i64 }

@REG_EDP_MISC1_MISC0 = common dso_local global i64 0, align 8
@EDP_MISC1_MISC0_SYNC = common dso_local global i32 0, align 4
@EDP_6BIT = common dso_local global i32 0, align 4
@EDP_8BIT = common dso_local global i32 0, align 4
@EDP_10BIT = common dso_local global i32 0, align 4
@EDP_12BIT = common dso_local global i32 0, align 4
@EDP_16BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edp_ctrl*, i32)* @edp_clock_synchrous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edp_clock_synchrous(%struct.edp_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.edp_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.edp_ctrl* %0, %struct.edp_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %8 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @REG_EDP_MISC1_MISC0, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @edp_read(i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @EDP_MISC1_MISC0_SYNC, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @EDP_MISC1_MISC0_SYNC, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i32, i32* @EDP_6BIT, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %27 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 8
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @EDP_8BIT, align 4
  store i32 %31, i32* %6, align 4
  br label %56

32:                                               ; preds = %24
  %33 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %34 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @EDP_10BIT, align 4
  store i32 %38, i32* %6, align 4
  br label %55

39:                                               ; preds = %32
  %40 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %41 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 12
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @EDP_12BIT, align 4
  store i32 %45, i32* %6, align 4
  br label %54

46:                                               ; preds = %39
  %47 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %48 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 16
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @EDP_16BIT, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %46
  br label %54

54:                                               ; preds = %53, %44
  br label %55

55:                                               ; preds = %54, %37
  br label %56

56:                                               ; preds = %55, %30
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @EDP_MISC1_MISC0_COLOR(i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %62 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @REG_EDP_MISC1_MISC0, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @edp_write(i64 %65, i32 %66)
  ret void
}

declare dso_local i32 @edp_read(i64) #1

declare dso_local i32 @EDP_MISC1_MISC0_COLOR(i32) #1

declare dso_local i32 @edp_write(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
