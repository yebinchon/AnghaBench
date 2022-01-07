; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_flush_iso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_flush_iso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32* }
%union.ioctl_arg = type { %struct.fw_cdev_flush_iso }
%struct.fw_cdev_flush_iso = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, %union.ioctl_arg*)* @ioctl_flush_iso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_flush_iso(%struct.client* %0, %union.ioctl_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.client*, align 8
  %5 = alloca %union.ioctl_arg*, align 8
  %6 = alloca %struct.fw_cdev_flush_iso*, align 8
  store %struct.client* %0, %struct.client** %4, align 8
  store %union.ioctl_arg* %1, %union.ioctl_arg** %5, align 8
  %7 = load %union.ioctl_arg*, %union.ioctl_arg** %5, align 8
  %8 = bitcast %union.ioctl_arg* %7 to %struct.fw_cdev_flush_iso*
  store %struct.fw_cdev_flush_iso* %8, %struct.fw_cdev_flush_iso** %6, align 8
  %9 = load %struct.client*, %struct.client** %4, align 8
  %10 = getelementptr inbounds %struct.client, %struct.client* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.fw_cdev_flush_iso*, %struct.fw_cdev_flush_iso** %6, align 8
  %15 = getelementptr inbounds %struct.fw_cdev_flush_iso, %struct.fw_cdev_flush_iso* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %26

21:                                               ; preds = %13
  %22 = load %struct.client*, %struct.client** %4, align 8
  %23 = getelementptr inbounds %struct.client, %struct.client* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @fw_iso_context_flush_completions(i32* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @fw_iso_context_flush_completions(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
