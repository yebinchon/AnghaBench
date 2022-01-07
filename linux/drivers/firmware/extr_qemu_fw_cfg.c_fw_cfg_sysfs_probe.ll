; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_qemu_fw_cfg.c_fw_cfg_sysfs_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_qemu_fw_cfg.c_fw_cfg_sysfs_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { i32 }

@fw_cfg_sel_ko = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"by_key\00", align 1
@fw_cfg_top_ko = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"by_name\00", align 1
@fw_cfg_fname_kset = common dso_local global i32 0, align 4
@FW_CFG_ID = common dso_local global i32 0, align 4
@fw_cfg_rev = common dso_local global i32 0, align 4
@fw_cfg_rev_attr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"fw_cfg: loaded.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fw_cfg_sysfs_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_cfg_sysfs_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load i64, i64* @fw_cfg_sel_ko, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EBUSY, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %66

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @fw_cfg_top_ko, align 4
  %15 = call i64 @kobject_create_and_add(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i64 %15, i64* @fw_cfg_sel_ko, align 8
  %16 = load i64, i64* @fw_cfg_sel_ko, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %64

19:                                               ; preds = %11
  %20 = load i32, i32* @fw_cfg_top_ko, align 4
  %21 = call i32 @kset_create_and_add(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %20)
  store i32 %21, i32* @fw_cfg_fname_kset, align 4
  %22 = load i32, i32* @fw_cfg_fname_kset, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %61

25:                                               ; preds = %19
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = call i32 @fw_cfg_do_platform_probe(%struct.platform_device* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %58

31:                                               ; preds = %25
  %32 = load i32, i32* @FW_CFG_ID, align 4
  %33 = call i32 @fw_cfg_read_blob(i32 %32, i32* %5, i32 0, i32 4)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %58

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  store i32 %39, i32* @fw_cfg_rev, align 4
  %40 = load i32, i32* @fw_cfg_top_ko, align 4
  %41 = call i32 @sysfs_create_file(i32 %40, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_cfg_rev_attr, i32 0, i32 0))
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %56

45:                                               ; preds = %37
  %46 = call i32 (...) @fw_cfg_register_dir_entries()
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %52

50:                                               ; preds = %45
  %51 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %66

52:                                               ; preds = %49
  %53 = call i32 (...) @fw_cfg_sysfs_cache_cleanup()
  %54 = load i32, i32* @fw_cfg_top_ko, align 4
  %55 = call i32 @sysfs_remove_file(i32 %54, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_cfg_rev_attr, i32 0, i32 0))
  br label %56

56:                                               ; preds = %52, %44
  %57 = call i32 (...) @fw_cfg_io_cleanup()
  br label %58

58:                                               ; preds = %56, %36, %30
  %59 = load i32, i32* @fw_cfg_fname_kset, align 4
  %60 = call i32 @fw_cfg_kset_unregister_recursive(i32 %59)
  br label %61

61:                                               ; preds = %58, %24
  %62 = load i64, i64* @fw_cfg_sel_ko, align 8
  %63 = call i32 @fw_cfg_kobj_cleanup(i64 %62)
  br label %64

64:                                               ; preds = %61, %18
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %50, %8
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @kobject_create_and_add(i8*, i32) #1

declare dso_local i32 @kset_create_and_add(i8*, i32*, i32) #1

declare dso_local i32 @fw_cfg_do_platform_probe(%struct.platform_device*) #1

declare dso_local i32 @fw_cfg_read_blob(i32, i32*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @sysfs_create_file(i32, i32*) #1

declare dso_local i32 @fw_cfg_register_dir_entries(...) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @fw_cfg_sysfs_cache_cleanup(...) #1

declare dso_local i32 @sysfs_remove_file(i32, i32*) #1

declare dso_local i32 @fw_cfg_io_cleanup(...) #1

declare dso_local i32 @fw_cfg_kset_unregister_recursive(i32) #1

declare dso_local i32 @fw_cfg_kobj_cleanup(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
