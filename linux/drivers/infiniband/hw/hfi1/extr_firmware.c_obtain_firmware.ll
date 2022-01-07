; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_obtain_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_obtain_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@fw_mutex = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@fw_state = common dso_local global i64 0, align 8
@FW_TRY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Timeout waiting for firmware try\00", align 1
@FW_ERR = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@fw_err = common dso_local global i32 0, align 4
@FW_EMPTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*)* @obtain_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obtain_firmware(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %4 = call i32 @mutex_lock(i32* @fw_mutex)
  %5 = load i64, i64* @jiffies, align 8
  %6 = call i64 @msecs_to_jiffies(i32 40000)
  %7 = add i64 %5, %6
  store i64 %7, i64* %3, align 8
  br label %8

8:                                                ; preds = %23, %1
  %9 = load i64, i64* @fw_state, align 8
  %10 = load i64, i64* @FW_TRY, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @time_after(i64 %13, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %19 = call i32 @dd_dev_err(%struct.hfi1_devdata* %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* @FW_ERR, align 8
  store i64 %20, i64* @fw_state, align 8
  %21 = load i32, i32* @ETIMEDOUT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* @fw_err, align 4
  br label %27

23:                                               ; preds = %12
  %24 = call i32 @mutex_unlock(i32* @fw_mutex)
  %25 = call i32 @msleep(i32 20)
  %26 = call i32 @mutex_lock(i32* @fw_mutex)
  br label %8

27:                                               ; preds = %17, %8
  %28 = load i64, i64* @fw_state, align 8
  %29 = load i64, i64* @FW_EMPTY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %33 = call i32 @__obtain_firmware(%struct.hfi1_devdata* %32)
  br label %34

34:                                               ; preds = %31, %27
  %35 = call i32 @mutex_unlock(i32* @fw_mutex)
  %36 = load i32, i32* @fw_err, align 4
  ret i32 %36
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @__obtain_firmware(%struct.hfi1_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
