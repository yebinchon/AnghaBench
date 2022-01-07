; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_srcctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_srcctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@DP0_SRCCTRL_NOTP = common dso_local global i32 0, align 4
@DP0_SRCCTRL_LANESKEW = common dso_local global i32 0, align 4
@DP0_SRCCTRL_EN810B = common dso_local global i32 0, align 4
@DP0_SRCCTRL_SCRMBLDIS = common dso_local global i32 0, align 4
@DP0_SRCCTRL_SSCG = common dso_local global i32 0, align 4
@DP0_SRCCTRL_LANES_2 = common dso_local global i32 0, align 4
@DP0_SRCCTRL_BW27 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc_data*)* @tc_srcctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_srcctrl(%struct.tc_data* %0) #0 {
  %2 = alloca %struct.tc_data*, align 8
  %3 = alloca i32, align 4
  store %struct.tc_data* %0, %struct.tc_data** %2, align 8
  %4 = load i32, i32* @DP0_SRCCTRL_NOTP, align 4
  %5 = load i32, i32* @DP0_SRCCTRL_LANESKEW, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @DP0_SRCCTRL_EN810B, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.tc_data*, %struct.tc_data** %2, align 8
  %10 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @DP0_SRCCTRL_SCRMBLDIS, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.tc_data*, %struct.tc_data** %2, align 8
  %20 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @DP0_SRCCTRL_SSCG, align 4
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %18
  %29 = load %struct.tc_data*, %struct.tc_data** %2, align 8
  %30 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @DP0_SRCCTRL_LANES_2, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %28
  %40 = load %struct.tc_data*, %struct.tc_data** %2, align 8
  %41 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 162000
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* @DP0_SRCCTRL_BW27, align 4
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %39
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
