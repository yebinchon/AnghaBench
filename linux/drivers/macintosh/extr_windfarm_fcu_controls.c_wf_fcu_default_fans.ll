; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_default_fans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_default_fans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_fcu_priv = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"PowerMac7,2\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"backside-fan\00", align 1
@FCU_FAN_PWM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"drive-bay-fan\00", align 1
@FCU_FAN_RPM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"slots-fan\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"cpu-front-fan-0\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"cpu-rear-fan-0\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"cpu-front-fan-1\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"cpu-rear-fan-1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wf_fcu_priv*)* @wf_fcu_default_fans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wf_fcu_default_fans(%struct.wf_fcu_priv* %0) #0 {
  %2 = alloca %struct.wf_fcu_priv*, align 8
  store %struct.wf_fcu_priv* %0, %struct.wf_fcu_priv** %2, align 8
  %3 = call i32 @of_machine_is_compatible(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %28

6:                                                ; preds = %1
  %7 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %2, align 8
  %8 = load i32, i32* @FCU_FAN_PWM, align 4
  %9 = call i32 @wf_fcu_add_fan(%struct.wf_fcu_priv* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %8, i32 1)
  %10 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %2, align 8
  %11 = load i32, i32* @FCU_FAN_RPM, align 4
  %12 = call i32 @wf_fcu_add_fan(%struct.wf_fcu_priv* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %11, i32 2)
  %13 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %2, align 8
  %14 = load i32, i32* @FCU_FAN_PWM, align 4
  %15 = call i32 @wf_fcu_add_fan(%struct.wf_fcu_priv* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %14, i32 2)
  %16 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %2, align 8
  %17 = load i32, i32* @FCU_FAN_RPM, align 4
  %18 = call i32 @wf_fcu_add_fan(%struct.wf_fcu_priv* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %17, i32 3)
  %19 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %2, align 8
  %20 = load i32, i32* @FCU_FAN_RPM, align 4
  %21 = call i32 @wf_fcu_add_fan(%struct.wf_fcu_priv* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %20, i32 4)
  %22 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %2, align 8
  %23 = load i32, i32* @FCU_FAN_RPM, align 4
  %24 = call i32 @wf_fcu_add_fan(%struct.wf_fcu_priv* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %23, i32 5)
  %25 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %2, align 8
  %26 = load i32, i32* @FCU_FAN_RPM, align 4
  %27 = call i32 @wf_fcu_add_fan(%struct.wf_fcu_priv* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %26, i32 6)
  br label %28

28:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @of_machine_is_compatible(i8*) #1

declare dso_local i32 @wf_fcu_add_fan(%struct.wf_fcu_priv*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
