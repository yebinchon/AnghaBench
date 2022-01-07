; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_xfer_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_xfer_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp2112_device = type { i32, i32, %struct.hid_device* }
%struct.hid_device = type { i32 }

@CP2112_TRANSFER_STATUS_REQUEST = common dso_local global i32 0, align 4
@HID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error requesting status: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cp2112_device*)* @cp2112_xfer_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp2112_xfer_status(%struct.cp2112_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cp2112_device*, align 8
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  store %struct.cp2112_device* %0, %struct.cp2112_device** %3, align 8
  %7 = load %struct.cp2112_device*, %struct.cp2112_device** %3, align 8
  %8 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %7, i32 0, i32 2
  %9 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  store %struct.hid_device* %9, %struct.hid_device** %4, align 8
  %10 = load i32, i32* @CP2112_TRANSFER_STATUS_REQUEST, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 1, i32* %12, align 4
  %13 = load %struct.cp2112_device*, %struct.cp2112_device** %3, align 8
  %14 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %13, i32 0, i32 1
  %15 = call i32 @atomic_set(i32* %14, i32 0)
  %16 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %18 = load i32, i32* @HID_OUTPUT_REPORT, align 4
  %19 = call i32 @cp2112_hid_output(%struct.hid_device* %16, i32* %17, i32 2, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @hid_warn(%struct.hid_device* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %40

27:                                               ; preds = %1
  %28 = load %struct.cp2112_device*, %struct.cp2112_device** %3, align 8
  %29 = load %struct.cp2112_device*, %struct.cp2112_device** %3, align 8
  %30 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %29, i32 0, i32 1
  %31 = call i32 @cp2112_wait(%struct.cp2112_device* %28, i32* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %40

36:                                               ; preds = %27
  %37 = load %struct.cp2112_device*, %struct.cp2112_device** %3, align 8
  %38 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %36, %34, %22
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @cp2112_hid_output(%struct.hid_device*, i32*, i32, i32) #1

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*, i32) #1

declare dso_local i32 @cp2112_wait(%struct.cp2112_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
