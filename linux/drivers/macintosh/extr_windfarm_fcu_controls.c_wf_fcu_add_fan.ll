; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_add_fan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_add_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_fcu_priv = type { i32, i32 }
%struct.wf_fcu_fan = type { i32, i32, i32, i32, %struct.TYPE_2__, %struct.wf_fcu_priv* }
%struct.TYPE_2__ = type { i8*, i32*, i32, %struct.wf_fcu_fan* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@FCU_FAN_RPM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"cpu-pump\00", align 1
@WF_CONTROL_RPM_FAN = common dso_local global i32 0, align 4
@wf_fcu_fan_rpm_ops = common dso_local global i32 0, align 4
@WF_CONTROL_PWM_FAN = common dso_local global i32 0, align 4
@wf_fcu_fan_pwm_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"wf_fcu: Failed to register fan %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wf_fcu_priv*, i8*, i32, i32)* @wf_fcu_add_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wf_fcu_add_fan(%struct.wf_fcu_priv* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wf_fcu_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wf_fcu_fan*, align 8
  store %struct.wf_fcu_priv* %0, %struct.wf_fcu_priv** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.wf_fcu_fan* @kzalloc(i32 56, i32 %10)
  store %struct.wf_fcu_fan* %11, %struct.wf_fcu_fan** %9, align 8
  %12 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %9, align 8
  %13 = icmp ne %struct.wf_fcu_fan* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %83

15:                                               ; preds = %4
  %16 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %5, align 8
  %17 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %9, align 8
  %18 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %17, i32 0, i32 5
  store %struct.wf_fcu_priv* %16, %struct.wf_fcu_priv** %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %9, align 8
  %21 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %9, align 8
  %24 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i8* %22, i8** %25, align 8
  %26 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %9, align 8
  %27 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %9, align 8
  %28 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store %struct.wf_fcu_fan* %26, %struct.wf_fcu_fan** %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @FCU_FAN_RPM, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %15
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @strncmp(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %9, align 8
  %40 = call i32 @wf_fcu_get_pump_minmax(%struct.wf_fcu_fan* %39)
  br label %44

41:                                               ; preds = %33
  %42 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %9, align 8
  %43 = call i32 @wf_fcu_get_rpmfan_minmax(%struct.wf_fcu_fan* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* @WF_CONTROL_RPM_FAN, align 4
  %46 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %9, align 8
  %47 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  %49 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %9, align 8
  %50 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32* @wf_fcu_fan_rpm_ops, i32** %51, align 8
  br label %64

52:                                               ; preds = %15
  %53 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %9, align 8
  %54 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %53, i32 0, i32 1
  store i32 10, i32* %54, align 4
  %55 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %9, align 8
  %56 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %55, i32 0, i32 2
  store i32 100, i32* %56, align 8
  %57 = load i32, i32* @WF_CONTROL_PWM_FAN, align 4
  %58 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %9, align 8
  %59 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  %61 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %9, align 8
  %62 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32* @wf_fcu_fan_pwm_ops, i32** %63, align 8
  br label %64

64:                                               ; preds = %52, %44
  %65 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %9, align 8
  %66 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %65, i32 0, i32 4
  %67 = call i64 @wf_register_control(%struct.TYPE_2__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  %72 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %9, align 8
  %73 = call i32 @kfree(%struct.wf_fcu_fan* %72)
  br label %83

74:                                               ; preds = %64
  %75 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %9, align 8
  %76 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %75, i32 0, i32 3
  %77 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %5, align 8
  %78 = getelementptr inbounds %struct.wf_fcu_priv, %struct.wf_fcu_priv* %77, i32 0, i32 1
  %79 = call i32 @list_add(i32* %76, i32* %78)
  %80 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %5, align 8
  %81 = getelementptr inbounds %struct.wf_fcu_priv, %struct.wf_fcu_priv* %80, i32 0, i32 0
  %82 = call i32 @kref_get(i32* %81)
  br label %83

83:                                               ; preds = %74, %69, %14
  ret void
}

declare dso_local %struct.wf_fcu_fan* @kzalloc(i32, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @wf_fcu_get_pump_minmax(%struct.wf_fcu_fan*) #1

declare dso_local i32 @wf_fcu_get_rpmfan_minmax(%struct.wf_fcu_fan*) #1

declare dso_local i64 @wf_register_control(%struct.TYPE_2__*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @kfree(%struct.wf_fcu_fan*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
