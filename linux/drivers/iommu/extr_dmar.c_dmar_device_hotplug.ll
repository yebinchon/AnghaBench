; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_device_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_device_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMAR_DSM_FUNC_DRHD = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@dmar_get_dsm_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to locate _DSM method.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@dmar_global_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @dmar_device_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_device_hotplug(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %7, align 8
  %9 = call i32 (...) @dmar_in_use()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @DMAR_DSM_FUNC_DRHD, align 4
  %15 = call i64 @dmar_detect_dsm(i32* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32*, i32** %4, align 8
  store i32* %18, i32** %7, align 8
  br label %33

19:                                               ; preds = %12
  %20 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %23 = load i32, i32* @dmar_get_dsm_handle, align 4
  %24 = call i32 @acpi_walk_namespace(i32 %20, i32* %21, i32 %22, i32 %23, i32* null, i32* null, i32** %7)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @ACPI_FAILURE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = call i32 @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %50

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32, %17
  %34 = load i32*, i32** %7, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %50

37:                                               ; preds = %33
  %38 = call i32 @down_write(i32* @dmar_global_lock)
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @dmar_hotplug_insert(i32* %42)
  store i32 %43, i32* %6, align 4
  br label %47

44:                                               ; preds = %37
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @dmar_hotplug_remove(i32* %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = call i32 @up_write(i32* @dmar_global_lock)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %36, %28, %11
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @dmar_in_use(...) #1

declare dso_local i64 @dmar_detect_dsm(i32*, i32) #1

declare dso_local i32 @acpi_walk_namespace(i32, i32*, i32, i32, i32*, i32*, i32**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @dmar_hotplug_insert(i32*) #1

declare dso_local i32 @dmar_hotplug_remove(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
