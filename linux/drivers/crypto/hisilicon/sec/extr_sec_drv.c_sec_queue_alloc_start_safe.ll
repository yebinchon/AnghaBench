; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_alloc_start_safe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_alloc_start_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_queue = type { i32 }
%struct.sec_dev_info = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@sec_id_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sec_queue* @sec_queue_alloc_start_safe() #0 {
  %1 = alloca %struct.sec_dev_info*, align 8
  %2 = alloca %struct.sec_queue*, align 8
  %3 = load i32, i32* @ENODEV, align 4
  %4 = sub nsw i32 0, %3
  %5 = call %struct.sec_queue* @ERR_PTR(i32 %4)
  store %struct.sec_queue* %5, %struct.sec_queue** %2, align 8
  %6 = call i32 @mutex_lock(i32* @sec_id_lock)
  %7 = call %struct.sec_dev_info* (...) @sec_device_get()
  store %struct.sec_dev_info* %7, %struct.sec_dev_info** %1, align 8
  %8 = load %struct.sec_dev_info*, %struct.sec_dev_info** %1, align 8
  %9 = icmp ne %struct.sec_dev_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %14

11:                                               ; preds = %0
  %12 = load %struct.sec_dev_info*, %struct.sec_dev_info** %1, align 8
  %13 = call %struct.sec_queue* @sec_queue_alloc_start(%struct.sec_dev_info* %12)
  store %struct.sec_queue* %13, %struct.sec_queue** %2, align 8
  br label %14

14:                                               ; preds = %11, %10
  %15 = call i32 @mutex_unlock(i32* @sec_id_lock)
  %16 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  ret %struct.sec_queue* %16
}

declare dso_local %struct.sec_queue* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sec_dev_info* @sec_device_get(...) #1

declare dso_local %struct.sec_queue* @sec_queue_alloc_start(%struct.sec_dev_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
