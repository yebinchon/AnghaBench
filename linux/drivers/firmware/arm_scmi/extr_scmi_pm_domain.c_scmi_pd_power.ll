; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_scmi_pm_domain.c_scmi_pd_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_scmi_pm_domain.c_scmi_pd_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pm_domain = type { i32 }
%struct.scmi_pm_domain = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.scmi_power_ops* }
%struct.scmi_power_ops = type { i32 (%struct.TYPE_3__*, i32, i64)*, i32 (%struct.TYPE_3__*, i32, i64*)* }

@SCMI_POWER_STATE_GENERIC_ON = common dso_local global i64 0, align 8
@SCMI_POWER_STATE_GENERIC_OFF = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.generic_pm_domain*, i32)* @scmi_pd_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_pd_power(%struct.generic_pm_domain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.generic_pm_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.scmi_pm_domain*, align 8
  %10 = alloca %struct.scmi_power_ops*, align 8
  store %struct.generic_pm_domain* %0, %struct.generic_pm_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %4, align 8
  %12 = call %struct.scmi_pm_domain* @to_scmi_pd(%struct.generic_pm_domain* %11)
  store %struct.scmi_pm_domain* %12, %struct.scmi_pm_domain** %9, align 8
  %13 = load %struct.scmi_pm_domain*, %struct.scmi_pm_domain** %9, align 8
  %14 = getelementptr inbounds %struct.scmi_pm_domain, %struct.scmi_pm_domain* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.scmi_power_ops*, %struct.scmi_power_ops** %16, align 8
  store %struct.scmi_power_ops* %17, %struct.scmi_power_ops** %10, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i64, i64* @SCMI_POWER_STATE_GENERIC_ON, align 8
  store i64 %21, i64* %7, align 8
  br label %24

22:                                               ; preds = %2
  %23 = load i64, i64* @SCMI_POWER_STATE_GENERIC_OFF, align 8
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = load %struct.scmi_power_ops*, %struct.scmi_power_ops** %10, align 8
  %26 = getelementptr inbounds %struct.scmi_power_ops, %struct.scmi_power_ops* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_3__*, i32, i64)*, i32 (%struct.TYPE_3__*, i32, i64)** %26, align 8
  %28 = load %struct.scmi_pm_domain*, %struct.scmi_pm_domain** %9, align 8
  %29 = getelementptr inbounds %struct.scmi_pm_domain, %struct.scmi_pm_domain* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load %struct.scmi_pm_domain*, %struct.scmi_pm_domain** %9, align 8
  %32 = getelementptr inbounds %struct.scmi_pm_domain, %struct.scmi_pm_domain* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 %27(%struct.TYPE_3__* %30, i32 %33, i64 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %24
  %39 = load %struct.scmi_power_ops*, %struct.scmi_power_ops** %10, align 8
  %40 = getelementptr inbounds %struct.scmi_power_ops, %struct.scmi_power_ops* %39, i32 0, i32 1
  %41 = load i32 (%struct.TYPE_3__*, i32, i64*)*, i32 (%struct.TYPE_3__*, i32, i64*)** %40, align 8
  %42 = load %struct.scmi_pm_domain*, %struct.scmi_pm_domain** %9, align 8
  %43 = getelementptr inbounds %struct.scmi_pm_domain, %struct.scmi_pm_domain* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load %struct.scmi_pm_domain*, %struct.scmi_pm_domain** %9, align 8
  %46 = getelementptr inbounds %struct.scmi_pm_domain, %struct.scmi_pm_domain* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %41(%struct.TYPE_3__* %44, i32 %47, i64* %8)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %38, %24
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %61

59:                                               ; preds = %52, %49
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.scmi_pm_domain* @to_scmi_pd(%struct.generic_pm_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
