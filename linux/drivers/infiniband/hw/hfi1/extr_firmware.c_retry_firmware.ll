; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_retry_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_retry_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@fw_mutex = common dso_local global i32 0, align 4
@fw_state = common dso_local global i64 0, align 8
@FW_TRY = common dso_local global i64 0, align 8
@FW_FINAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, i32)* @retry_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retry_firmware(%struct.hfi1_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @mutex_lock(i32* @fw_mutex)
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i64, i64* @fw_state, align 8
  %11 = load i64, i64* @FW_TRY, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i64, i64* @FW_FINAL, align 8
  store i64 %14, i64* @fw_state, align 8
  br label %15

15:                                               ; preds = %13, %9
  store i32 0, i32* %5, align 4
  br label %29

16:                                               ; preds = %2
  %17 = load i64, i64* @fw_state, align 8
  %18 = load i64, i64* @FW_TRY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %22 = call i32 @__obtain_firmware(%struct.hfi1_devdata* %21)
  %23 = load i64, i64* @fw_state, align 8
  %24 = load i64, i64* @FW_FINAL, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %5, align 4
  br label %28

27:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %20
  br label %29

29:                                               ; preds = %28, %15
  %30 = call i32 @mutex_unlock(i32* @fw_mutex)
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__obtain_firmware(%struct.hfi1_devdata*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
