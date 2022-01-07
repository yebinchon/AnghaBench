; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_pci_sysfs.c_edac_pci_main_kobj_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_pci_sysfs.c_edac_pci_main_kobj_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@edac_pci_sysfs_refcount = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"try_module_get() failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@edac_pci_top_main_kobj = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Failed to allocate\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ktype_edac_pci_main_kobj = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to register '.../edac/pci'\0A\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Registered '.../edac/pci' kobject\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @edac_pci_main_kobj_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edac_pci_main_kobj_setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.bus_type*, align 8
  %4 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @atomic_inc_return(i32* @edac_pci_sysfs_refcount)
  %6 = icmp ne i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %51

8:                                                ; preds = %0
  %9 = call %struct.bus_type* (...) @edac_get_sysfs_subsys()
  store %struct.bus_type* %9, %struct.bus_type** %3, align 8
  %10 = load i32, i32* @THIS_MODULE, align 4
  %11 = call i32 @try_module_get(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %48

17:                                               ; preds = %8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @kzalloc(i32 4, i32 %18)
  store i32 %19, i32* @edac_pci_top_main_kobj, align 4
  %20 = load i32, i32* @edac_pci_top_main_kobj, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %45

26:                                               ; preds = %17
  %27 = load i32, i32* @edac_pci_top_main_kobj, align 4
  %28 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %29 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @kobject_init_and_add(i32 %27, i32* @ktype_edac_pci_main_kobj, i32* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %42

37:                                               ; preds = %26
  %38 = load i32, i32* @edac_pci_top_main_kobj, align 4
  %39 = load i32, i32* @KOBJ_ADD, align 4
  %40 = call i32 @kobject_uevent(i32 %38, i32 %39)
  %41 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %51

42:                                               ; preds = %35
  %43 = load i32, i32* @edac_pci_top_main_kobj, align 4
  %44 = call i32 @kfree(i32 %43)
  br label %45

45:                                               ; preds = %42, %22
  %46 = load i32, i32* @THIS_MODULE, align 4
  %47 = call i32 @module_put(i32 %46)
  br label %48

48:                                               ; preds = %45, %13
  %49 = call i32 @atomic_dec(i32* @edac_pci_sysfs_refcount)
  %50 = load i32, i32* %2, align 4
  store i32 %50, i32* %1, align 4
  br label %51

51:                                               ; preds = %48, %37, %7
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local %struct.bus_type* @edac_get_sysfs_subsys(...) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @kobject_init_and_add(i32, i32*, i32*, i8*) #1

declare dso_local i32 @kobject_uevent(i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
