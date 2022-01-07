; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_device.c_edac_device_reset_delay_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_device.c_edac_device_reset_delay_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @edac_device_reset_delay_period(%struct.edac_device_ctl_info* %0, i64 %1) #0 {
  %3 = alloca %struct.edac_device_ctl_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i64 @msecs_to_jiffies(i64 %6)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %8, 1000
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @round_jiffies_relative(i64 %11)
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %16 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %19 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %21 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %20, i32 0, i32 2
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @edac_mod_work(i32* %21, i64 %22)
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i64 @round_jiffies_relative(i64) #1

declare dso_local i32 @edac_mod_work(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
