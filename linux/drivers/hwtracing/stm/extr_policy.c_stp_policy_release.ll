; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_policy.c_stp_policy_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_policy.c_stp_policy_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.stp_policy = type { %struct.stm_device* }
%struct.stm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_item*)* @stp_policy_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stp_policy_release(%struct.config_item* %0) #0 {
  %2 = alloca %struct.config_item*, align 8
  %3 = alloca %struct.stp_policy*, align 8
  %4 = alloca %struct.stm_device*, align 8
  store %struct.config_item* %0, %struct.config_item** %2, align 8
  %5 = load %struct.config_item*, %struct.config_item** %2, align 8
  %6 = call %struct.stp_policy* @to_stp_policy(%struct.config_item* %5)
  store %struct.stp_policy* %6, %struct.stp_policy** %3, align 8
  %7 = load %struct.stp_policy*, %struct.stp_policy** %3, align 8
  %8 = getelementptr inbounds %struct.stp_policy, %struct.stp_policy* %7, i32 0, i32 0
  %9 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  store %struct.stm_device* %9, %struct.stm_device** %4, align 8
  %10 = load %struct.stm_device*, %struct.stm_device** %4, align 8
  %11 = icmp ne %struct.stm_device* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %24

13:                                               ; preds = %1
  %14 = load %struct.stm_device*, %struct.stm_device** %4, align 8
  %15 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.stp_policy*, %struct.stp_policy** %3, align 8
  %18 = call i32 @stp_policy_unbind(%struct.stp_policy* %17)
  %19 = load %struct.stm_device*, %struct.stm_device** %4, align 8
  %20 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load %struct.stp_policy*, %struct.stp_policy** %3, align 8
  %23 = call i32 @kfree(%struct.stp_policy* %22)
  br label %24

24:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.stp_policy* @to_stp_policy(%struct.config_item*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @stp_policy_unbind(%struct.stp_policy*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.stp_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
