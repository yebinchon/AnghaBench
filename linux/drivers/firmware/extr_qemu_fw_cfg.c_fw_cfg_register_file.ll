; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_qemu_fw_cfg.c_fw_cfg_register_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_qemu_fw_cfg.c_fw_cfg_register_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_cfg_file = type { i32, i32, i32 }
%struct.fw_cfg_sysfs_entry = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FW_CFG_MAX_FILE_PATH = common dso_local global i32 0, align 4
@fw_cfg_sysfs_entry_ktype = common dso_local global i32 0, align 4
@fw_cfg_sel_ko = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@fw_cfg_sysfs_attr_raw = common dso_local global i32 0, align 4
@fw_cfg_fname_kset = common dso_local global i32 0, align 4
@FW_CFG_VMCOREINFO_FILENAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_cfg_file*)* @fw_cfg_register_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_cfg_register_file(%struct.fw_cfg_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fw_cfg_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_cfg_sysfs_entry*, align 8
  store %struct.fw_cfg_file* %0, %struct.fw_cfg_file** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.fw_cfg_sysfs_entry* @kzalloc(i32 16, i32 %6)
  store %struct.fw_cfg_sysfs_entry* %7, %struct.fw_cfg_sysfs_entry** %5, align 8
  %8 = load %struct.fw_cfg_sysfs_entry*, %struct.fw_cfg_sysfs_entry** %5, align 8
  %9 = icmp ne %struct.fw_cfg_sysfs_entry* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %69

13:                                               ; preds = %1
  %14 = load %struct.fw_cfg_file*, %struct.fw_cfg_file** %3, align 8
  %15 = getelementptr inbounds %struct.fw_cfg_file, %struct.fw_cfg_file* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @be32_to_cpu(i32 %16)
  %18 = load %struct.fw_cfg_sysfs_entry*, %struct.fw_cfg_sysfs_entry** %5, align 8
  %19 = getelementptr inbounds %struct.fw_cfg_sysfs_entry, %struct.fw_cfg_sysfs_entry* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.fw_cfg_file*, %struct.fw_cfg_file** %3, align 8
  %21 = getelementptr inbounds %struct.fw_cfg_file, %struct.fw_cfg_file* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @be16_to_cpu(i32 %22)
  %24 = load %struct.fw_cfg_sysfs_entry*, %struct.fw_cfg_sysfs_entry** %5, align 8
  %25 = getelementptr inbounds %struct.fw_cfg_sysfs_entry, %struct.fw_cfg_sysfs_entry* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.fw_cfg_sysfs_entry*, %struct.fw_cfg_sysfs_entry** %5, align 8
  %27 = getelementptr inbounds %struct.fw_cfg_sysfs_entry, %struct.fw_cfg_sysfs_entry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fw_cfg_file*, %struct.fw_cfg_file** %3, align 8
  %30 = getelementptr inbounds %struct.fw_cfg_file, %struct.fw_cfg_file* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @FW_CFG_MAX_FILE_PATH, align 4
  %33 = call i32 @memcpy(i32 %28, i32 %31, i32 %32)
  %34 = load %struct.fw_cfg_sysfs_entry*, %struct.fw_cfg_sysfs_entry** %5, align 8
  %35 = getelementptr inbounds %struct.fw_cfg_sysfs_entry, %struct.fw_cfg_sysfs_entry* %34, i32 0, i32 0
  %36 = load i32, i32* @fw_cfg_sel_ko, align 4
  %37 = load %struct.fw_cfg_sysfs_entry*, %struct.fw_cfg_sysfs_entry** %5, align 8
  %38 = getelementptr inbounds %struct.fw_cfg_sysfs_entry, %struct.fw_cfg_sysfs_entry* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @kobject_init_and_add(i32* %35, i32* @fw_cfg_sysfs_entry_ktype, i32 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %13
  br label %65

44:                                               ; preds = %13
  %45 = load %struct.fw_cfg_sysfs_entry*, %struct.fw_cfg_sysfs_entry** %5, align 8
  %46 = getelementptr inbounds %struct.fw_cfg_sysfs_entry, %struct.fw_cfg_sysfs_entry* %45, i32 0, i32 0
  %47 = call i32 @sysfs_create_bin_file(i32* %46, i32* @fw_cfg_sysfs_attr_raw)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %61

51:                                               ; preds = %44
  %52 = load i32, i32* @fw_cfg_fname_kset, align 4
  %53 = load %struct.fw_cfg_sysfs_entry*, %struct.fw_cfg_sysfs_entry** %5, align 8
  %54 = getelementptr inbounds %struct.fw_cfg_sysfs_entry, %struct.fw_cfg_sysfs_entry* %53, i32 0, i32 0
  %55 = load %struct.fw_cfg_sysfs_entry*, %struct.fw_cfg_sysfs_entry** %5, align 8
  %56 = getelementptr inbounds %struct.fw_cfg_sysfs_entry, %struct.fw_cfg_sysfs_entry* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @fw_cfg_build_symlink(i32 %52, i32* %54, i32 %57)
  %59 = load %struct.fw_cfg_sysfs_entry*, %struct.fw_cfg_sysfs_entry** %5, align 8
  %60 = call i32 @fw_cfg_sysfs_cache_enlist(%struct.fw_cfg_sysfs_entry* %59)
  store i32 0, i32* %2, align 4
  br label %69

61:                                               ; preds = %50
  %62 = load %struct.fw_cfg_sysfs_entry*, %struct.fw_cfg_sysfs_entry** %5, align 8
  %63 = getelementptr inbounds %struct.fw_cfg_sysfs_entry, %struct.fw_cfg_sysfs_entry* %62, i32 0, i32 0
  %64 = call i32 @kobject_del(i32* %63)
  br label %65

65:                                               ; preds = %61, %43
  %66 = load %struct.fw_cfg_sysfs_entry*, %struct.fw_cfg_sysfs_entry** %5, align 8
  %67 = call i32 @kfree(%struct.fw_cfg_sysfs_entry* %66)
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %51, %10
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.fw_cfg_sysfs_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, i32*) #1

declare dso_local i32 @fw_cfg_build_symlink(i32, i32*, i32) #1

declare dso_local i32 @fw_cfg_sysfs_cache_enlist(%struct.fw_cfg_sysfs_entry*) #1

declare dso_local i32 @kobject_del(i32*) #1

declare dso_local i32 @kfree(%struct.fw_cfg_sysfs_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
