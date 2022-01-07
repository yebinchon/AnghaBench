; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_device.c_edac_device_workq_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_device.c_edac_device_workq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@edac_device_workq_function = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edac_device_ctl_info*, i32)* @edac_device_workq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edac_device_workq_setup(%struct.edac_device_ctl_info* %0, i32 %1) #0 {
  %3 = alloca %struct.edac_device_ctl_info*, align 8
  %4 = alloca i32, align 4
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %8 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @msecs_to_jiffies(i32 %9)
  %11 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %12 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %14 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %13, i32 0, i32 2
  %15 = load i32, i32* @edac_device_workq_function, align 4
  %16 = call i32 @INIT_DELAYED_WORK(i32* %14, i32 %15)
  %17 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %18 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1000
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %23 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %22, i32 0, i32 2
  %24 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %25 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @round_jiffies_relative(i32 %26)
  %28 = call i32 @edac_queue_work(i32* %23, i32 %27)
  br label %36

29:                                               ; preds = %2
  %30 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %31 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %30, i32 0, i32 2
  %32 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %33 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @edac_queue_work(i32* %31, i32 %34)
  br label %36

36:                                               ; preds = %29, %21
  ret void
}

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @edac_queue_work(i32*, i32) #1

declare dso_local i32 @round_jiffies_relative(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
