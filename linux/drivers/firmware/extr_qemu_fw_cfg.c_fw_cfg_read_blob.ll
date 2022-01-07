; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_qemu_fw_cfg.c_fw_cfg_read_blob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_qemu_fw_cfg.c_fw_cfg_read_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_WAIT_FOREVER = common dso_local global i32 0, align 4
@AE_NOT_CONFIGURED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"fw_cfg_read_blob: Failed to lock ACPI!\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@fw_cfg_dev_lock = common dso_local global i32 0, align 4
@fw_cfg_reg_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i32, i64)* @fw_cfg_read_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fw_cfg_read_blob(i32 %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 -1, i32* %10, align 4
  %12 = load i32, i32* @ACPI_WAIT_FOREVER, align 4
  %13 = call i64 @acpi_acquire_global_lock(i32 %12, i32* %10)
  store i64 %13, i64* %11, align 8
  %14 = load i64, i64* %11, align 8
  %15 = call i64 @ACPI_FAILURE(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %4
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* @AE_NOT_CONFIGURED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @memset(i8* %23, i32 0, i64 %24)
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %48

28:                                               ; preds = %17, %4
  %29 = call i32 @mutex_lock(i32* @fw_cfg_dev_lock)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @fw_cfg_sel_endianness(i32 %30)
  br label %32

32:                                               ; preds = %36, %28
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %8, align 4
  %35 = icmp sgt i32 %33, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @fw_cfg_reg_data, align 4
  %38 = call i32 @ioread8(i32 %37)
  br label %32

39:                                               ; preds = %32
  %40 = load i32, i32* @fw_cfg_reg_data, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @ioread8_rep(i32 %40, i8* %41, i64 %42)
  %44 = call i32 @mutex_unlock(i32* @fw_cfg_dev_lock)
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @acpi_release_global_lock(i32 %45)
  %47 = load i64, i64* %9, align 8
  store i64 %47, i64* %5, align 8
  br label %48

48:                                               ; preds = %39, %21
  %49 = load i64, i64* %5, align 8
  ret i64 %49
}

declare dso_local i64 @acpi_acquire_global_lock(i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fw_cfg_sel_endianness(i32) #1

declare dso_local i32 @ioread8(i32) #1

declare dso_local i32 @ioread8_rep(i32, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @acpi_release_global_lock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
