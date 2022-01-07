; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_platform.c_set_qsfp_high_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_platform.c_set_qsfp_high_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64* }

@QSFP_MOD_PWR_OFFS = common dso_local global i64 0, align 8
@QSFP_POWER_CLASS_1 = common dso_local global i64 0, align 8
@QSFP_PWR_CTRL_BYTE_OFFS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@QSFP_POWER_CLASS_4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_pportdata*)* @set_qsfp_high_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_qsfp_high_power(%struct.hfi1_pportdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_pportdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %9 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  store i64* %11, i64** %6, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = load i64, i64* @QSFP_MOD_PWR_OFFS, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @get_qsfp_power_class(i64 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @QSFP_POWER_CLASS_1, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %65

20:                                               ; preds = %1
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* @QSFP_PWR_CTRL_BYTE_OFFS, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = or i64 %25, 1
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = and i64 %27, -3
  store i64 %28, i64* %5, align 8
  %29 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %30 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %31 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @QSFP_PWR_CTRL_BYTE_OFFS, align 8
  %36 = call i32 @qsfp_write(%struct.hfi1_pportdata* %29, i32 %34, i64 %35, i64* %5, i32 1)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %20
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %66

42:                                               ; preds = %20
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @QSFP_POWER_CLASS_4, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load i64, i64* %5, align 8
  %48 = or i64 %47, 4
  store i64 %48, i64* %5, align 8
  %49 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %50 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %51 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* @QSFP_PWR_CTRL_BYTE_OFFS, align 8
  %56 = call i32 @qsfp_write(%struct.hfi1_pportdata* %49, i32 %54, i64 %55, i64* %5, i32 1)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %66

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62, %42
  %64 = call i32 @msleep(i32 300)
  br label %65

65:                                               ; preds = %63, %1
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %59, %39
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @get_qsfp_power_class(i64) #1

declare dso_local i32 @qsfp_write(%struct.hfi1_pportdata*, i32, i64, i64*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
