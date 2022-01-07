; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_device_sysfs.c_edac_device_delete_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_device_sysfs.c_edac_device_delete_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i32 }
%struct.edac_device_block = type { i32, i32, %struct.edac_dev_sysfs_block_attribute* }
%struct.edac_dev_sysfs_block_attribute = type { i32 }
%struct.attribute = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edac_device_ctl_info*, %struct.edac_device_block*)* @edac_device_delete_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edac_device_delete_block(%struct.edac_device_ctl_info* %0, %struct.edac_device_block* %1) #0 {
  %3 = alloca %struct.edac_device_ctl_info*, align 8
  %4 = alloca %struct.edac_device_block*, align 8
  %5 = alloca %struct.edac_dev_sysfs_block_attribute*, align 8
  %6 = alloca i32, align 4
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %3, align 8
  store %struct.edac_device_block* %1, %struct.edac_device_block** %4, align 8
  %7 = load %struct.edac_device_block*, %struct.edac_device_block** %4, align 8
  %8 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %7, i32 0, i32 2
  %9 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %8, align 8
  store %struct.edac_dev_sysfs_block_attribute* %9, %struct.edac_dev_sysfs_block_attribute** %5, align 8
  %10 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %5, align 8
  %11 = icmp ne %struct.edac_dev_sysfs_block_attribute* %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load %struct.edac_device_block*, %struct.edac_device_block** %4, align 8
  %14 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %30, %17
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.edac_device_block*, %struct.edac_device_block** %4, align 8
  %21 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load %struct.edac_device_block*, %struct.edac_device_block** %4, align 8
  %26 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %25, i32 0, i32 1
  %27 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %5, align 8
  %28 = bitcast %struct.edac_dev_sysfs_block_attribute* %27 to %struct.attribute*
  %29 = call i32 @sysfs_remove_file(i32* %26, %struct.attribute* %28)
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  %33 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %5, align 8
  %34 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, %struct.edac_dev_sysfs_block_attribute* %33, i32 1
  store %struct.edac_dev_sysfs_block_attribute* %34, %struct.edac_dev_sysfs_block_attribute** %5, align 8
  br label %18

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35, %12, %2
  %37 = load %struct.edac_device_block*, %struct.edac_device_block** %4, align 8
  %38 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %37, i32 0, i32 1
  %39 = call i32 @kobject_put(i32* %38)
  ret void
}

declare dso_local i32 @sysfs_remove_file(i32*, %struct.attribute*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
