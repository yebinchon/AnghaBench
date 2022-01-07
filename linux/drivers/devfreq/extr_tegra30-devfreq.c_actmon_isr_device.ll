; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra30-devfreq.c_actmon_isr_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra30-devfreq.c_actmon_isr_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_devfreq = type { i64 }
%struct.tegra_devfreq_device = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }

@ACTMON_DEV_AVG_COUNT = common dso_local global i32 0, align 4
@ACTMON_DEV_INTR_STATUS = common dso_local global i32 0, align 4
@ACTMON_DEV_CTRL = common dso_local global i32 0, align 4
@ACTMON_DEV_INTR_CONSECUTIVE_UPPER = common dso_local global i32 0, align 4
@ACTMON_BOOST_FREQ_STEP = common dso_local global i32 0, align 4
@ACTMON_DEV_CTRL_CONSECUTIVE_BELOW_WMARK_EN = common dso_local global i32 0, align 4
@ACTMON_DEV_CTRL_CONSECUTIVE_ABOVE_WMARK_EN = common dso_local global i32 0, align 4
@ACTMON_DEV_INTR_CONSECUTIVE_LOWER = common dso_local global i32 0, align 4
@ACTMON_INTR_STATUS_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_devfreq*, %struct.tegra_devfreq_device*)* @actmon_isr_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @actmon_isr_device(%struct.tegra_devfreq* %0, %struct.tegra_devfreq_device* %1) #0 {
  %3 = alloca %struct.tegra_devfreq*, align 8
  %4 = alloca %struct.tegra_devfreq_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tegra_devfreq* %0, %struct.tegra_devfreq** %3, align 8
  store %struct.tegra_devfreq_device* %1, %struct.tegra_devfreq_device** %4, align 8
  %7 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %8 = load i32, i32* @ACTMON_DEV_AVG_COUNT, align 4
  %9 = call i8* @device_readl(%struct.tegra_devfreq_device* %7, i32 %8)
  %10 = ptrtoint i8* %9 to i64
  %11 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %12 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %3, align 8
  %14 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %15 = call i32 @tegra_devfreq_update_avg_wmark(%struct.tegra_devfreq* %13, %struct.tegra_devfreq_device* %14)
  %16 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %17 = load i32, i32* @ACTMON_DEV_INTR_STATUS, align 4
  %18 = call i8* @device_readl(%struct.tegra_devfreq_device* %16, i32 %17)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %21 = load i32, i32* @ACTMON_DEV_CTRL, align 4
  %22 = call i8* @device_readl(%struct.tegra_devfreq_device* %20, i32 %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ACTMON_DEV_INTR_CONSECUTIVE_UPPER, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %68

28:                                               ; preds = %2
  %29 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %30 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %33 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @do_percent(i64 %31, i32 %36)
  %38 = ptrtoint i8* %37 to i64
  %39 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %40 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* @ACTMON_BOOST_FREQ_STEP, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %44 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load i32, i32* @ACTMON_DEV_CTRL_CONSECUTIVE_BELOW_WMARK_EN, align 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %51 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %3, align 8
  %54 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %28
  %58 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %3, align 8
  %59 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %62 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %67

63:                                               ; preds = %28
  %64 = load i32, i32* @ACTMON_DEV_CTRL_CONSECUTIVE_ABOVE_WMARK_EN, align 4
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %57
  br label %105

68:                                               ; preds = %2
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @ACTMON_DEV_INTR_CONSECUTIVE_LOWER, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %104

73:                                               ; preds = %68
  %74 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %75 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %78 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @do_percent(i64 %76, i32 %81)
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %85 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load i32, i32* @ACTMON_DEV_CTRL_CONSECUTIVE_ABOVE_WMARK_EN, align 4
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %90 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @ACTMON_BOOST_FREQ_STEP, align 4
  %93 = ashr i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = icmp slt i64 %91, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %73
  %97 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %98 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  br label %103

99:                                               ; preds = %73
  %100 = load i32, i32* @ACTMON_DEV_CTRL_CONSECUTIVE_BELOW_WMARK_EN, align 4
  %101 = load i32, i32* %6, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %99, %96
  br label %104

104:                                              ; preds = %103, %68
  br label %105

105:                                              ; preds = %104, %67
  %106 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %107 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %106, i32 0, i32 2
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %138

112:                                              ; preds = %105
  %113 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %114 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %117 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %116, i32 0, i32 2
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp sge i64 %115, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %112
  %123 = load i32, i32* @ACTMON_DEV_CTRL_CONSECUTIVE_BELOW_WMARK_EN, align 4
  %124 = load i32, i32* %6, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %6, align 4
  br label %137

126:                                              ; preds = %112
  %127 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %128 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load i32, i32* @ACTMON_DEV_CTRL_CONSECUTIVE_BELOW_WMARK_EN, align 4
  %133 = xor i32 %132, -1
  %134 = load i32, i32* %6, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %131, %126
  br label %137

137:                                              ; preds = %136, %122
  br label %138

138:                                              ; preds = %137, %105
  %139 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @ACTMON_DEV_CTRL, align 4
  %142 = call i32 @device_writel(%struct.tegra_devfreq_device* %139, i32 %140, i32 %141)
  %143 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %144 = load i32, i32* @ACTMON_INTR_STATUS_CLEAR, align 4
  %145 = load i32, i32* @ACTMON_DEV_INTR_STATUS, align 4
  %146 = call i32 @device_writel(%struct.tegra_devfreq_device* %143, i32 %144, i32 %145)
  %147 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %3, align 8
  %148 = call i32 @actmon_write_barrier(%struct.tegra_devfreq* %147)
  ret void
}

declare dso_local i8* @device_readl(%struct.tegra_devfreq_device*, i32) #1

declare dso_local i32 @tegra_devfreq_update_avg_wmark(%struct.tegra_devfreq*, %struct.tegra_devfreq_device*) #1

declare dso_local i8* @do_percent(i64, i32) #1

declare dso_local i32 @device_writel(%struct.tegra_devfreq_device*, i32, i32) #1

declare dso_local i32 @actmon_write_barrier(%struct.tegra_devfreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
