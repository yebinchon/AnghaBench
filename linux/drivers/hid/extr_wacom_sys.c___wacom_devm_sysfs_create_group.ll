; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c___wacom_devm_sysfs_create_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c___wacom_devm_sysfs_create_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kobject = type { i32 }
%struct.attribute_group = type { i32 }
%struct.wacom_sysfs_group_devres = type { %struct.kobject*, %struct.attribute_group* }

@wacom_devm_sysfs_group_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom*, %struct.kobject*, %struct.attribute_group*)* @__wacom_devm_sysfs_create_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wacom_devm_sysfs_create_group(%struct.wacom* %0, %struct.kobject* %1, %struct.attribute_group* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wacom*, align 8
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.attribute_group*, align 8
  %8 = alloca %struct.wacom_sysfs_group_devres*, align 8
  %9 = alloca i32, align 4
  store %struct.wacom* %0, %struct.wacom** %5, align 8
  store %struct.kobject* %1, %struct.kobject** %6, align 8
  store %struct.attribute_group* %2, %struct.attribute_group** %7, align 8
  %10 = load i32, i32* @wacom_devm_sysfs_group_release, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.wacom_sysfs_group_devres* @devres_alloc(i32 %10, i32 16, i32 %11)
  store %struct.wacom_sysfs_group_devres* %12, %struct.wacom_sysfs_group_devres** %8, align 8
  %13 = load %struct.wacom_sysfs_group_devres*, %struct.wacom_sysfs_group_devres** %8, align 8
  %14 = icmp ne %struct.wacom_sysfs_group_devres* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %43

18:                                               ; preds = %3
  %19 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %20 = load %struct.wacom_sysfs_group_devres*, %struct.wacom_sysfs_group_devres** %8, align 8
  %21 = getelementptr inbounds %struct.wacom_sysfs_group_devres, %struct.wacom_sysfs_group_devres* %20, i32 0, i32 1
  store %struct.attribute_group* %19, %struct.attribute_group** %21, align 8
  %22 = load %struct.kobject*, %struct.kobject** %6, align 8
  %23 = load %struct.wacom_sysfs_group_devres*, %struct.wacom_sysfs_group_devres** %8, align 8
  %24 = getelementptr inbounds %struct.wacom_sysfs_group_devres, %struct.wacom_sysfs_group_devres* %23, i32 0, i32 0
  store %struct.kobject* %22, %struct.kobject** %24, align 8
  %25 = load %struct.wacom_sysfs_group_devres*, %struct.wacom_sysfs_group_devres** %8, align 8
  %26 = getelementptr inbounds %struct.wacom_sysfs_group_devres, %struct.wacom_sysfs_group_devres* %25, i32 0, i32 0
  %27 = load %struct.kobject*, %struct.kobject** %26, align 8
  %28 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %29 = call i32 @sysfs_create_group(%struct.kobject* %27, %struct.attribute_group* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %18
  %33 = load %struct.wacom_sysfs_group_devres*, %struct.wacom_sysfs_group_devres** %8, align 8
  %34 = call i32 @devres_free(%struct.wacom_sysfs_group_devres* %33)
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %43

36:                                               ; preds = %18
  %37 = load %struct.wacom*, %struct.wacom** %5, align 8
  %38 = getelementptr inbounds %struct.wacom, %struct.wacom* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.wacom_sysfs_group_devres*, %struct.wacom_sysfs_group_devres** %8, align 8
  %42 = call i32 @devres_add(i32* %40, %struct.wacom_sysfs_group_devres* %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %36, %32, %15
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.wacom_sysfs_group_devres* @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @sysfs_create_group(%struct.kobject*, %struct.attribute_group*) #1

declare dso_local i32 @devres_free(%struct.wacom_sysfs_group_devres*) #1

declare dso_local i32 @devres_add(i32*, %struct.wacom_sysfs_group_devres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
