; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_qemu_fw_cfg.c_fw_cfg_register_dir_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_qemu_fw_cfg.c_fw_cfg_register_dir_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_cfg_file = type { i32 }

@FW_CFG_FILE_DIR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fw_cfg_register_dir_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_cfg_register_dir_entries() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.fw_cfg_file, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fw_cfg_file*, align 8
  %7 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  %8 = load i32, i32* @FW_CFG_FILE_DIR, align 4
  %9 = call i32 @fw_cfg_read_blob(i32 %8, %struct.fw_cfg_file* %3, i32 0, i64 4)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* %1, align 4
  br label %60

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct.fw_cfg_file, %struct.fw_cfg_file* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @be32_to_cpu(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.fw_cfg_file* @kmalloc(i64 %21, i32 %22)
  store %struct.fw_cfg_file* %23, %struct.fw_cfg_file** %6, align 8
  %24 = load %struct.fw_cfg_file*, %struct.fw_cfg_file** %6, align 8
  %25 = icmp ne %struct.fw_cfg_file* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %14
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %1, align 4
  br label %60

29:                                               ; preds = %14
  %30 = load i32, i32* @FW_CFG_FILE_DIR, align 4
  %31 = load %struct.fw_cfg_file*, %struct.fw_cfg_file** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @fw_cfg_read_blob(i32 %30, %struct.fw_cfg_file* %31, i32 4, i64 %32)
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %56

37:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %52, %37
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load %struct.fw_cfg_file*, %struct.fw_cfg_file** %6, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.fw_cfg_file, %struct.fw_cfg_file* %43, i64 %45
  %47 = call i32 @fw_cfg_register_file(%struct.fw_cfg_file* %46)
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %55

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %38

55:                                               ; preds = %50, %38
  br label %56

56:                                               ; preds = %55, %36
  %57 = load %struct.fw_cfg_file*, %struct.fw_cfg_file** %6, align 8
  %58 = call i32 @kfree(%struct.fw_cfg_file* %57)
  %59 = load i32, i32* %2, align 4
  store i32 %59, i32* %1, align 4
  br label %60

60:                                               ; preds = %56, %26, %12
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

declare dso_local i32 @fw_cfg_read_blob(i32, %struct.fw_cfg_file*, i32, i64) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.fw_cfg_file* @kmalloc(i64, i32) #1

declare dso_local i32 @fw_cfg_register_file(%struct.fw_cfg_file*) #1

declare dso_local i32 @kfree(%struct.fw_cfg_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
