; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_snvs_pwrkey.c_imx_imx_snvs_check_for_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_snvs_pwrkey.c_imx_imx_snvs_check_for_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwrkey_drv_data = type { i32, i32, %struct.input_dev*, i32, i32 }
%struct.input_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@check_timer = common dso_local global i32 0, align 4
@SNVS_HPSR_REG = common dso_local global i32 0, align 4
@SNVS_HPSR_BTN = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@REPEAT_INTERVAL = common dso_local global i32 0, align 4
@pdata = common dso_local global %struct.pwrkey_drv_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @imx_imx_snvs_check_for_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_imx_snvs_check_for_events(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.pwrkey_drv_data*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %3, align 8
  %7 = ptrtoint %struct.pwrkey_drv_data* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @check_timer, align 4
  %10 = call %struct.pwrkey_drv_data* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.pwrkey_drv_data* %10, %struct.pwrkey_drv_data** %3, align 8
  %11 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %3, align 8
  %12 = getelementptr inbounds %struct.pwrkey_drv_data, %struct.pwrkey_drv_data* %11, i32 0, i32 2
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %4, align 8
  %14 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %3, align 8
  %15 = getelementptr inbounds %struct.pwrkey_drv_data, %struct.pwrkey_drv_data* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SNVS_HPSR_REG, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %5)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SNVS_HPSR_BTN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %3, align 8
  %27 = getelementptr inbounds %struct.pwrkey_drv_data, %struct.pwrkey_drv_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = xor i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %1
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %3, align 8
  %34 = getelementptr inbounds %struct.pwrkey_drv_data, %struct.pwrkey_drv_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %36 = load i32, i32* @EV_KEY, align 4
  %37 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %3, align 8
  %38 = getelementptr inbounds %struct.pwrkey_drv_data, %struct.pwrkey_drv_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @input_event(%struct.input_dev* %35, i32 %36, i32 %39, i32 %40)
  %42 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %43 = call i32 @input_sync(%struct.input_dev* %42)
  %44 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %3, align 8
  %45 = getelementptr inbounds %struct.pwrkey_drv_data, %struct.pwrkey_drv_data* %44, i32 0, i32 2
  %46 = load %struct.input_dev*, %struct.input_dev** %45, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pm_relax(i32 %49)
  br label %51

51:                                               ; preds = %31, %1
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %3, align 8
  %56 = getelementptr inbounds %struct.pwrkey_drv_data, %struct.pwrkey_drv_data* %55, i32 0, i32 1
  %57 = load i64, i64* @jiffies, align 8
  %58 = load i32, i32* @REPEAT_INTERVAL, align 4
  %59 = call i64 @msecs_to_jiffies(i32 %58)
  %60 = add nsw i64 %57, %59
  %61 = call i32 @mod_timer(i32* %56, i64 %60)
  br label %62

62:                                               ; preds = %54, %51
  ret void
}

declare dso_local %struct.pwrkey_drv_data* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @pm_relax(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
