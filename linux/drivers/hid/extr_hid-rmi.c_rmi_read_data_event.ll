; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-rmi.c_rmi_read_data_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-rmi.c_rmi_read_data_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.rmi_data = type { i32, i32, i32, i32 }

@RMI_READ_REQUEST_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no read request pending\0A\00", align 1
@RMI_READ_DATA_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i32*, i32)* @rmi_read_data_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_read_data_event(%struct.hid_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rmi_data*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %10 = call %struct.rmi_data* @hid_get_drvdata(%struct.hid_device* %9)
  store %struct.rmi_data* %10, %struct.rmi_data** %8, align 8
  %11 = load i32, i32* @RMI_READ_REQUEST_PENDING, align 4
  %12 = load %struct.rmi_data*, %struct.rmi_data** %8, align 8
  %13 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %12, i32 0, i32 2
  %14 = call i32 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %18 = call i32 @hid_dbg(%struct.hid_device* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %45

19:                                               ; preds = %3
  %20 = load %struct.rmi_data*, %struct.rmi_data** %8, align 8
  %21 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.rmi_data*, %struct.rmi_data** %8, align 8
  %26 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* %7, align 4
  br label %35

31:                                               ; preds = %19
  %32 = load %struct.rmi_data*, %struct.rmi_data** %8, align 8
  %33 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  br label %35

35:                                               ; preds = %31, %29
  %36 = phi i32 [ %30, %29 ], [ %34, %31 ]
  %37 = call i32 @memcpy(i32 %22, i32* %23, i32 %36)
  %38 = load i32, i32* @RMI_READ_DATA_PENDING, align 4
  %39 = load %struct.rmi_data*, %struct.rmi_data** %8, align 8
  %40 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %39, i32 0, i32 2
  %41 = call i32 @set_bit(i32 %38, i32* %40)
  %42 = load %struct.rmi_data*, %struct.rmi_data** %8, align 8
  %43 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %42, i32 0, i32 1
  %44 = call i32 @wake_up(i32* %43)
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %35, %16
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.rmi_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @hid_dbg(%struct.hid_device*, i8*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
