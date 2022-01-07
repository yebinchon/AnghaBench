; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ti_sci_info = type { i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ti_sci_list_mutex = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ti_sci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ti_sci_info*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call i32 @of_platform_depopulate(%struct.device* %8)
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = call %struct.ti_sci_info* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.ti_sci_info* %11, %struct.ti_sci_info** %3, align 8
  %12 = load %struct.ti_sci_info*, %struct.ti_sci_info** %3, align 8
  %13 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.ti_sci_info*, %struct.ti_sci_info** %3, align 8
  %19 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %18, i32 0, i32 4
  %20 = call i32 @unregister_restart_handler(%struct.TYPE_2__* %19)
  br label %21

21:                                               ; preds = %17, %1
  %22 = call i32 @mutex_lock(i32* @ti_sci_list_mutex)
  %23 = load %struct.ti_sci_info*, %struct.ti_sci_info** %3, align 8
  %24 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %34

30:                                               ; preds = %21
  %31 = load %struct.ti_sci_info*, %struct.ti_sci_info** %3, align 8
  %32 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %31, i32 0, i32 2
  %33 = call i32 @list_del(i32* %32)
  br label %34

34:                                               ; preds = %30, %27
  %35 = call i32 @mutex_unlock(i32* @ti_sci_list_mutex)
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %34
  %39 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %40 = load %struct.ti_sci_info*, %struct.ti_sci_info** %3, align 8
  %41 = call i32 @ti_sci_debugfs_destroy(%struct.platform_device* %39, %struct.ti_sci_info* %40)
  %42 = load %struct.ti_sci_info*, %struct.ti_sci_info** %3, align 8
  %43 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mbox_free_channel(i32 %44)
  %46 = load %struct.ti_sci_info*, %struct.ti_sci_info** %3, align 8
  %47 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @mbox_free_channel(i32 %48)
  br label %50

50:                                               ; preds = %38, %34
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @of_platform_depopulate(%struct.device*) #1

declare dso_local %struct.ti_sci_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @unregister_restart_handler(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ti_sci_debugfs_destroy(%struct.platform_device*, %struct.ti_sci_info*) #1

declare dso_local i32 @mbox_free_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
