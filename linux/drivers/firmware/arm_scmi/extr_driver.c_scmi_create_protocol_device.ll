; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_create_protocol_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_create_protocol_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.scmi_info = type { i32 }
%struct.scmi_device = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"failed to create %d protocol device\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to setup transport\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*, %struct.scmi_info*, i32)* @scmi_create_protocol_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scmi_create_protocol_device(%struct.device_node* %0, %struct.scmi_info* %1, i32 %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.scmi_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scmi_device*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.scmi_info* %1, %struct.scmi_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = load %struct.scmi_info*, %struct.scmi_info** %5, align 8
  %10 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.scmi_device* @scmi_device_create(%struct.device_node* %8, i32 %11, i32 %12)
  store %struct.scmi_device* %13, %struct.scmi_device** %7, align 8
  %14 = load %struct.scmi_device*, %struct.scmi_device** %7, align 8
  %15 = icmp ne %struct.scmi_device* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load %struct.scmi_info*, %struct.scmi_info** %5, align 8
  %18 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i32*
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (i32*, i8*, ...) @dev_err(i32* %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %40

24:                                               ; preds = %3
  %25 = load %struct.scmi_info*, %struct.scmi_info** %5, align 8
  %26 = load %struct.scmi_device*, %struct.scmi_device** %7, align 8
  %27 = getelementptr inbounds %struct.scmi_device, %struct.scmi_device* %26, i32 0, i32 0
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @scmi_mbox_txrx_setup(%struct.scmi_info* %25, i32* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.scmi_device*, %struct.scmi_device** %7, align 8
  %33 = getelementptr inbounds %struct.scmi_device, %struct.scmi_device* %32, i32 0, i32 0
  %34 = call i32 (i32*, i8*, ...) @dev_err(i32* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.scmi_device*, %struct.scmi_device** %7, align 8
  %36 = call i32 @scmi_device_destroy(%struct.scmi_device* %35)
  br label %40

37:                                               ; preds = %24
  %38 = load %struct.scmi_device*, %struct.scmi_device** %7, align 8
  %39 = call i32 @scmi_set_handle(%struct.scmi_device* %38)
  br label %40

40:                                               ; preds = %37, %31, %16
  ret void
}

declare dso_local %struct.scmi_device* @scmi_device_create(%struct.device_node*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @scmi_mbox_txrx_setup(%struct.scmi_info*, i32*, i32) #1

declare dso_local i32 @scmi_device_destroy(%struct.scmi_device*) #1

declare dso_local i32 @scmi_set_handle(%struct.scmi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
