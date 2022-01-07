; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.scmi_info = type { %struct.idr, %struct.idr, i32, i64 }
%struct.idr = type { i32 }

@scmi_list_mutex = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@scmi_mbox_free_channel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @scmi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scmi_info*, align 8
  %6 = alloca %struct.idr*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.scmi_info* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.scmi_info* %8, %struct.scmi_info** %5, align 8
  %9 = load %struct.scmi_info*, %struct.scmi_info** %5, align 8
  %10 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %9, i32 0, i32 1
  store %struct.idr* %10, %struct.idr** %6, align 8
  %11 = call i32 @mutex_lock(i32* @scmi_list_mutex)
  %12 = load %struct.scmi_info*, %struct.scmi_info** %5, align 8
  %13 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.scmi_info*, %struct.scmi_info** %5, align 8
  %21 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %20, i32 0, i32 2
  %22 = call i32 @list_del(i32* %21)
  br label %23

23:                                               ; preds = %19, %16
  %24 = call i32 @mutex_unlock(i32* @scmi_list_mutex)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %47

29:                                               ; preds = %23
  %30 = load %struct.idr*, %struct.idr** %6, align 8
  %31 = load i32, i32* @scmi_mbox_free_channel, align 4
  %32 = load %struct.idr*, %struct.idr** %6, align 8
  %33 = call i32 @idr_for_each(%struct.idr* %30, i32 %31, %struct.idr* %32)
  store i32 %33, i32* %4, align 4
  %34 = load %struct.scmi_info*, %struct.scmi_info** %5, align 8
  %35 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %34, i32 0, i32 1
  %36 = call i32 @idr_destroy(%struct.idr* %35)
  %37 = load %struct.scmi_info*, %struct.scmi_info** %5, align 8
  %38 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %37, i32 0, i32 0
  store %struct.idr* %38, %struct.idr** %6, align 8
  %39 = load %struct.idr*, %struct.idr** %6, align 8
  %40 = load i32, i32* @scmi_mbox_free_channel, align 4
  %41 = load %struct.idr*, %struct.idr** %6, align 8
  %42 = call i32 @idr_for_each(%struct.idr* %39, i32 %40, %struct.idr* %41)
  store i32 %42, i32* %4, align 4
  %43 = load %struct.scmi_info*, %struct.scmi_info** %5, align 8
  %44 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %43, i32 0, i32 0
  %45 = call i32 @idr_destroy(%struct.idr* %44)
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %29, %27
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.scmi_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @idr_for_each(%struct.idr*, i32, %struct.idr*) #1

declare dso_local i32 @idr_destroy(%struct.idr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
