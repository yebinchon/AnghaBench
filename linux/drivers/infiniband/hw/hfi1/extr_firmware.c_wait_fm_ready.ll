; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_wait_fm_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_wait_fm_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64 }

@ICODE_FUNCTIONAL_SIMULATOR = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wait_fm_ready(%struct.hfi1_devdata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %8 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ICODE_FUNCTIONAL_SIMULATOR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @msecs_to_jiffies(i32 %14)
  %16 = load i64, i64* @jiffies, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %13, %31
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %20 = call i32 @get_firmware_state(%struct.hfi1_devdata* %19)
  %21 = icmp eq i32 %20, 160
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %33

23:                                               ; preds = %18
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @time_after(i64 %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @ETIMEDOUT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %23
  %32 = call i32 @usleep_range(i32 1950, i32 2050)
  br label %18

33:                                               ; preds = %28, %22, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @get_firmware_state(%struct.hfi1_devdata*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
