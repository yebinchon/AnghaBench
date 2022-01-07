; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_ctl_drv.c_adf_ctl_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_ctl_drv.c_adf_ctl_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@adf_ctl_lock = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"QAT: Invalid ioctl\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @adf_ctl_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adf_ctl_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = call i64 @mutex_lock_interruptible(i32* @adf_ctl_lock)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i64, i64* @EFAULT, align 8
  %13 = sub nsw i64 0, %12
  store i64 %13, i64* %4, align 8
  br label %50

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %41 [
    i32 132, label %16
    i32 128, label %21
    i32 130, label %26
    i32 131, label %31
    i32 129, label %36
  ]

16:                                               ; preds = %14
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @adf_ctl_ioctl_dev_config(%struct.file* %17, i32 %18, i64 %19)
  store i32 %20, i32* %8, align 4
  br label %46

21:                                               ; preds = %14
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @adf_ctl_ioctl_dev_stop(%struct.file* %22, i32 %23, i64 %24)
  store i32 %25, i32* %8, align 4
  br label %46

26:                                               ; preds = %14
  %27 = load %struct.file*, %struct.file** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @adf_ctl_ioctl_dev_start(%struct.file* %27, i32 %28, i64 %29)
  store i32 %30, i32* %8, align 4
  br label %46

31:                                               ; preds = %14
  %32 = load %struct.file*, %struct.file** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @adf_ctl_ioctl_get_num_devices(%struct.file* %32, i32 %33, i64 %34)
  store i32 %35, i32* %8, align 4
  br label %46

36:                                               ; preds = %14
  %37 = load %struct.file*, %struct.file** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @adf_ctl_ioctl_get_status(%struct.file* %37, i32 %38, i64 %39)
  store i32 %40, i32* %8, align 4
  br label %46

41:                                               ; preds = %14
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %43 = load i64, i64* @EFAULT, align 8
  %44 = sub nsw i64 0, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %41, %36, %31, %26, %21, %16
  %47 = call i32 @mutex_unlock(i32* @adf_ctl_lock)
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %46, %11
  %51 = load i64, i64* %4, align 8
  ret i64 %51
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @adf_ctl_ioctl_dev_config(%struct.file*, i32, i64) #1

declare dso_local i32 @adf_ctl_ioctl_dev_stop(%struct.file*, i32, i64) #1

declare dso_local i32 @adf_ctl_ioctl_dev_start(%struct.file*, i32, i64) #1

declare dso_local i32 @adf_ctl_ioctl_get_num_devices(%struct.file*, i32, i64) #1

declare dso_local i32 @adf_ctl_ioctl_get_status(%struct.file*, i32, i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
