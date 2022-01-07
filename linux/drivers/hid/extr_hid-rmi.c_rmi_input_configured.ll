; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-rmi.c_rmi_input_configured.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-rmi.c_rmi_input_configured.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.rmi_data = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.input_dev* }

@RMI_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Opening low level driver\0A\00", align 1
@RMI_MODE_ATTN_REPORTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to set rmi mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to set page select to 0.\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to register transport driver\0A\00", align 1
@RMI_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*)* @rmi_input_configured to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_input_configured(%struct.hid_device* %0, %struct.hid_input* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_input*, align 8
  %6 = alloca %struct.rmi_data*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_input* %1, %struct.hid_input** %5, align 8
  %9 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %10 = call %struct.rmi_data* @hid_get_drvdata(%struct.hid_device* %9)
  store %struct.rmi_data* %10, %struct.rmi_data** %6, align 8
  %11 = load %struct.hid_input*, %struct.hid_input** %5, align 8
  %12 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %11, i32 0, i32 0
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %15 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @RMI_DEVICE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

21:                                               ; preds = %2
  %22 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %23 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %24 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.input_dev* %22, %struct.input_dev** %25, align 8
  %26 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %27 = call i32 @hid_dbg(%struct.hid_device* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %29 = call i32 @hid_hw_open(%struct.hid_device* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %76

34:                                               ; preds = %21
  %35 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %36 = call i32 @hid_device_io_start(%struct.hid_device* %35)
  %37 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %38 = load i32, i32* @RMI_MODE_ATTN_REPORTS, align 4
  %39 = call i32 @rmi_set_mode(%struct.hid_device* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %44 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %70

46:                                               ; preds = %34
  %47 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %48 = call i32 @rmi_set_page(%struct.hid_device* %47, i32 0)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %53 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %70

55:                                               ; preds = %46
  %56 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %57 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %56, i32 0, i32 2
  %58 = call i32 @rmi_register_transport_device(%struct.TYPE_2__* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %63 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %70

65:                                               ; preds = %55
  %66 = load i32, i32* @RMI_STARTED, align 4
  %67 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %68 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %67, i32 0, i32 1
  %69 = call i32 @set_bit(i32 %66, i32* %68)
  br label %70

70:                                               ; preds = %65, %61, %51, %42
  %71 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %72 = call i32 @hid_device_io_stop(%struct.hid_device* %71)
  %73 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %74 = call i32 @hid_hw_close(%struct.hid_device* %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %70, %32, %20
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.rmi_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_dbg(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_hw_open(%struct.hid_device*) #1

declare dso_local i32 @hid_device_io_start(%struct.hid_device*) #1

declare dso_local i32 @rmi_set_mode(%struct.hid_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @rmi_set_page(%struct.hid_device*, i32) #1

declare dso_local i32 @rmi_register_transport_device(%struct.TYPE_2__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hid_device_io_stop(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_close(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
