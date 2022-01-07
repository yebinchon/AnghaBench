; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_device_sysfs.c_edac_device_add_main_sysfs_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_device_sysfs.c_edac_device_add_main_sysfs_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i32, %struct.edac_dev_sysfs_attribute* }
%struct.edac_dev_sysfs_attribute = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.attribute = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edac_device_ctl_info*)* @edac_device_add_main_sysfs_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edac_device_add_main_sysfs_attributes(%struct.edac_device_ctl_info* %0) #0 {
  %2 = alloca %struct.edac_device_ctl_info*, align 8
  %3 = alloca %struct.edac_dev_sysfs_attribute*, align 8
  %4 = alloca i32, align 4
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %6 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %5, i32 0, i32 1
  %7 = load %struct.edac_dev_sysfs_attribute*, %struct.edac_dev_sysfs_attribute** %6, align 8
  store %struct.edac_dev_sysfs_attribute* %7, %struct.edac_dev_sysfs_attribute** %3, align 8
  %8 = load %struct.edac_dev_sysfs_attribute*, %struct.edac_dev_sysfs_attribute** %3, align 8
  %9 = icmp ne %struct.edac_dev_sysfs_attribute* %8, null
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %26, %10
  %12 = load %struct.edac_dev_sysfs_attribute*, %struct.edac_dev_sysfs_attribute** %3, align 8
  %13 = getelementptr inbounds %struct.edac_dev_sysfs_attribute, %struct.edac_dev_sysfs_attribute* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %19 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %18, i32 0, i32 0
  %20 = load %struct.edac_dev_sysfs_attribute*, %struct.edac_dev_sysfs_attribute** %3, align 8
  %21 = bitcast %struct.edac_dev_sysfs_attribute* %20 to %struct.attribute*
  %22 = call i32 @sysfs_create_file(i32* %19, %struct.attribute* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %31

26:                                               ; preds = %17
  %27 = load %struct.edac_dev_sysfs_attribute*, %struct.edac_dev_sysfs_attribute** %3, align 8
  %28 = getelementptr inbounds %struct.edac_dev_sysfs_attribute, %struct.edac_dev_sysfs_attribute* %27, i32 1
  store %struct.edac_dev_sysfs_attribute* %28, %struct.edac_dev_sysfs_attribute** %3, align 8
  br label %11

29:                                               ; preds = %11
  br label %30

30:                                               ; preds = %29, %1
  br label %31

31:                                               ; preds = %30, %25
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @sysfs_create_file(i32*, %struct.attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
