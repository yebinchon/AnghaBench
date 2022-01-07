; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_run_relock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_run_relock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_chip_specific = type { i32, i32, %struct.qib_devdata* }
%struct.qib_devdata = type { i32, %struct.qib_pportdata* }
%struct.qib_pportdata = type { i32 }
%struct.timer_list = type { i32 }

@relock_timer = common dso_local global i32 0, align 4
@QIB_INITTED = common dso_local global i32 0, align 4
@QIBL_IB_AUTONEG_INPROG = common dso_local global i32 0, align 4
@QIBL_LINKINIT = common dso_local global i32 0, align 4
@QIBL_LINKARMED = common dso_local global i32 0, align 4
@QIBL_LINKACTIVE = common dso_local global i32 0, align 4
@qib_relock_by_timer = common dso_local global i64 0, align 8
@QIBL_IB_LINK_DISABLED = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@cs = common dso_local global %struct.qib_chip_specific* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @qib_run_relock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_run_relock(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.qib_chip_specific*, align 8
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca %struct.qib_pportdata*, align 8
  %6 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %8 = ptrtoint %struct.qib_chip_specific* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @relock_timer, align 4
  %11 = call %struct.qib_chip_specific* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.qib_chip_specific* %11, %struct.qib_chip_specific** %3, align 8
  %12 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %13 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %12, i32 0, i32 2
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %13, align 8
  store %struct.qib_devdata* %14, %struct.qib_devdata** %4, align 8
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 1
  %17 = load %struct.qib_pportdata*, %struct.qib_pportdata** %16, align 8
  store %struct.qib_pportdata* %17, %struct.qib_pportdata** %5, align 8
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @QIB_INITTED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %1
  %25 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %26 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @QIBL_IB_AUTONEG_INPROG, align 4
  %29 = load i32, i32* @QIBL_LINKINIT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @QIBL_LINKARMED, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %27, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %24
  %38 = load i64, i64* @qib_relock_by_timer, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %42 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @QIBL_IB_LINK_DISABLED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %49 = call i32 @toggle_7220_rclkrls(%struct.qib_devdata* %48)
  br label %50

50:                                               ; preds = %47, %40
  br label %51

51:                                               ; preds = %50, %37
  %52 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %53 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = shl i32 %54, 1
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @HZ, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @HZ, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %59, %51
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %64 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %67

65:                                               ; preds = %24, %1
  %66 = load i32, i32* @HZ, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %61
  %68 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %69 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %68, i32 0, i32 1
  %70 = load i64, i64* @jiffies, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = call i32 @mod_timer(i32* %69, i64 %73)
  ret void
}

declare dso_local %struct.qib_chip_specific* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @toggle_7220_rclkrls(%struct.qib_devdata*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
