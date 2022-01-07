; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_add_dynid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_add_dynid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_driver = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.vmbus_dynid = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_driver*, i32*)* @vmbus_add_dynid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmbus_add_dynid(%struct.hv_driver* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hv_driver*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vmbus_dynid*, align 8
  store %struct.hv_driver* %0, %struct.hv_driver** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.vmbus_dynid* @kzalloc(i32 8, i32 %7)
  store %struct.vmbus_dynid* %8, %struct.vmbus_dynid** %6, align 8
  %9 = load %struct.vmbus_dynid*, %struct.vmbus_dynid** %6, align 8
  %10 = icmp ne %struct.vmbus_dynid* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %37

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vmbus_dynid*, %struct.vmbus_dynid** %6, align 8
  %18 = getelementptr inbounds %struct.vmbus_dynid, %struct.vmbus_dynid* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load %struct.hv_driver*, %struct.hv_driver** %4, align 8
  %21 = getelementptr inbounds %struct.hv_driver, %struct.hv_driver* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.vmbus_dynid*, %struct.vmbus_dynid** %6, align 8
  %25 = getelementptr inbounds %struct.vmbus_dynid, %struct.vmbus_dynid* %24, i32 0, i32 0
  %26 = load %struct.hv_driver*, %struct.hv_driver** %4, align 8
  %27 = getelementptr inbounds %struct.hv_driver, %struct.hv_driver* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = call i32 @list_add_tail(i32* %25, i32* %28)
  %30 = load %struct.hv_driver*, %struct.hv_driver** %4, align 8
  %31 = getelementptr inbounds %struct.hv_driver, %struct.hv_driver* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.hv_driver*, %struct.hv_driver** %4, align 8
  %35 = getelementptr inbounds %struct.hv_driver, %struct.hv_driver* %34, i32 0, i32 0
  %36 = call i32 @driver_attach(i32* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %14, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.vmbus_dynid* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @driver_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
