; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_device_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32, i32, i32, %struct.vmbus_channel* }
%struct.vmbus_channel = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Unable to allocate device object for child device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hv_device* @vmbus_device_create(i32* %0, i32* %1, %struct.vmbus_channel* %2) #0 {
  %4 = alloca %struct.hv_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vmbus_channel*, align 8
  %8 = alloca %struct.hv_device*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.vmbus_channel* %2, %struct.vmbus_channel** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.hv_device* @kzalloc(i32 24, i32 %9)
  store %struct.hv_device* %10, %struct.hv_device** %8, align 8
  %11 = load %struct.hv_device*, %struct.hv_device** %8, align 8
  %12 = icmp ne %struct.hv_device* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store %struct.hv_device* null, %struct.hv_device** %4, align 8
  br label %30

15:                                               ; preds = %3
  %16 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %17 = load %struct.hv_device*, %struct.hv_device** %8, align 8
  %18 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %17, i32 0, i32 3
  store %struct.vmbus_channel* %16, %struct.vmbus_channel** %18, align 8
  %19 = load %struct.hv_device*, %struct.hv_device** %8, align 8
  %20 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %19, i32 0, i32 2
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @guid_copy(i32* %20, i32* %21)
  %23 = load %struct.hv_device*, %struct.hv_device** %8, align 8
  %24 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %23, i32 0, i32 1
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @guid_copy(i32* %24, i32* %25)
  %27 = load %struct.hv_device*, %struct.hv_device** %8, align 8
  %28 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %27, i32 0, i32 0
  store i32 5140, i32* %28, align 8
  %29 = load %struct.hv_device*, %struct.hv_device** %8, align 8
  store %struct.hv_device* %29, %struct.hv_device** %4, align 8
  br label %30

30:                                               ; preds = %15, %13
  %31 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  ret %struct.hv_device* %31
}

declare dso_local %struct.hv_device* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @guid_copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
