; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_get_cycle_timer2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_get_cycle_timer2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.fw_card* }
%struct.fw_card = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.fw_card*, i32)* }
%union.ioctl_arg = type { %struct.fw_cdev_get_cycle_timer2 }
%struct.fw_cdev_get_cycle_timer2 = type { i32, i32, i32, i32 }
%struct.timespec64 = type { i32, i32, i32, i32 }

@CSR_CYCLE_TIME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, %union.ioctl_arg*)* @ioctl_get_cycle_timer2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_get_cycle_timer2(%struct.client* %0, %union.ioctl_arg* %1) #0 {
  %3 = alloca %struct.client*, align 8
  %4 = alloca %union.ioctl_arg*, align 8
  %5 = alloca %struct.fw_cdev_get_cycle_timer2*, align 8
  %6 = alloca %struct.fw_card*, align 8
  %7 = alloca %struct.timespec64, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.client* %0, %struct.client** %3, align 8
  store %union.ioctl_arg* %1, %union.ioctl_arg** %4, align 8
  %10 = load %union.ioctl_arg*, %union.ioctl_arg** %4, align 8
  %11 = bitcast %union.ioctl_arg* %10 to %struct.fw_cdev_get_cycle_timer2*
  store %struct.fw_cdev_get_cycle_timer2* %11, %struct.fw_cdev_get_cycle_timer2** %5, align 8
  %12 = load %struct.client*, %struct.client** %3, align 8
  %13 = getelementptr inbounds %struct.client, %struct.client* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.fw_card*, %struct.fw_card** %15, align 8
  store %struct.fw_card* %16, %struct.fw_card** %6, align 8
  %17 = bitcast %struct.timespec64* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 16, i1 false)
  store i32 0, i32* %9, align 4
  %18 = call i32 (...) @local_irq_disable()
  %19 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %20 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.fw_card*, i32)*, i32 (%struct.fw_card*, i32)** %22, align 8
  %24 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %25 = load i32, i32* @CSR_CYCLE_TIME, align 4
  %26 = call i32 %23(%struct.fw_card* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.fw_cdev_get_cycle_timer2*, %struct.fw_cdev_get_cycle_timer2** %5, align 8
  %28 = getelementptr inbounds %struct.fw_cdev_get_cycle_timer2, %struct.fw_cdev_get_cycle_timer2* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %36 [
    i32 128, label %30
    i32 130, label %32
    i32 129, label %34
  ]

30:                                               ; preds = %2
  %31 = call i32 @ktime_get_real_ts64(%struct.timespec64* %7)
  br label %39

32:                                               ; preds = %2
  %33 = call i32 @ktime_get_ts64(%struct.timespec64* %7)
  br label %39

34:                                               ; preds = %2
  %35 = call i32 @ktime_get_raw_ts64(%struct.timespec64* %7)
  br label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %36, %34, %32, %30
  %40 = call i32 (...) @local_irq_enable()
  %41 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %7, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fw_cdev_get_cycle_timer2*, %struct.fw_cdev_get_cycle_timer2** %5, align 8
  %44 = getelementptr inbounds %struct.fw_cdev_get_cycle_timer2, %struct.fw_cdev_get_cycle_timer2* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.fw_cdev_get_cycle_timer2*, %struct.fw_cdev_get_cycle_timer2** %5, align 8
  %48 = getelementptr inbounds %struct.fw_cdev_get_cycle_timer2, %struct.fw_cdev_get_cycle_timer2* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.fw_cdev_get_cycle_timer2*, %struct.fw_cdev_get_cycle_timer2** %5, align 8
  %51 = getelementptr inbounds %struct.fw_cdev_get_cycle_timer2, %struct.fw_cdev_get_cycle_timer2* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @local_irq_disable(...) #2

declare dso_local i32 @ktime_get_real_ts64(%struct.timespec64*) #2

declare dso_local i32 @ktime_get_ts64(%struct.timespec64*) #2

declare dso_local i32 @ktime_get_raw_ts64(%struct.timespec64*) #2

declare dso_local i32 @local_irq_enable(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
