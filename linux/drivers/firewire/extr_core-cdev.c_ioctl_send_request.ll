; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_send_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%union.ioctl_arg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, %union.ioctl_arg*)* @ioctl_send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_send_request(%struct.client* %0, %union.ioctl_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.client*, align 8
  %5 = alloca %union.ioctl_arg*, align 8
  store %struct.client* %0, %struct.client** %4, align 8
  store %union.ioctl_arg* %1, %union.ioctl_arg** %5, align 8
  %6 = load %union.ioctl_arg*, %union.ioctl_arg** %5, align 8
  %7 = bitcast %union.ioctl_arg* %6 to %struct.TYPE_4__*
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %11 [
    i32 128, label %10
    i32 129, label %10
    i32 130, label %10
    i32 131, label %10
    i32 134, label %10
    i32 137, label %10
    i32 136, label %10
    i32 135, label %10
    i32 138, label %10
    i32 132, label %10
    i32 133, label %10
  ]

10:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  br label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %29

14:                                               ; preds = %10
  %15 = load %struct.client*, %struct.client** %4, align 8
  %16 = load %union.ioctl_arg*, %union.ioctl_arg** %5, align 8
  %17 = bitcast %union.ioctl_arg* %16 to %struct.TYPE_4__*
  %18 = load %struct.client*, %struct.client** %4, align 8
  %19 = getelementptr inbounds %struct.client, %struct.client* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.client*, %struct.client** %4, align 8
  %24 = getelementptr inbounds %struct.client, %struct.client* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @init_request(%struct.client* %15, %struct.TYPE_4__* %17, i32 %22, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %14, %11
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @init_request(%struct.client*, %struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
