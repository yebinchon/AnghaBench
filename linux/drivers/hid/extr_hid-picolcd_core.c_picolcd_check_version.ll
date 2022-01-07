; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_core.c_picolcd_check_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_core.c_picolcd_check_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.picolcd_data = type { i32, i32* }
%struct.picolcd_pending = type { i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@REPORT_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"no version response from PicoLCD\0A\00", align 1
@PICOLCD_BOOTLOADER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"PicoLCD, bootloader version %d.%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"PicoLCD, firmware version %d.%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"confused, got unexpected version response from PicoLCD\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @picolcd_check_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @picolcd_check_version(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.picolcd_data*, align 8
  %5 = alloca %struct.picolcd_pending*, align 8
  %6 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %8 = call %struct.picolcd_data* @hid_get_drvdata(%struct.hid_device* %7)
  store %struct.picolcd_data* %8, %struct.picolcd_data** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %10 = icmp ne %struct.picolcd_data* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %91

14:                                               ; preds = %1
  %15 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %16 = load i32, i32* @REPORT_VERSION, align 4
  %17 = call %struct.picolcd_pending* @picolcd_send_and_wait(%struct.hid_device* %15, i32 %16, i32* null, i32 0)
  store %struct.picolcd_pending* %17, %struct.picolcd_pending** %5, align 8
  %18 = load %struct.picolcd_pending*, %struct.picolcd_pending** %5, align 8
  %19 = icmp ne %struct.picolcd_pending* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %22 = call i32 @hid_err(%struct.hid_device* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %91

25:                                               ; preds = %14
  %26 = load %struct.picolcd_pending*, %struct.picolcd_pending** %5, align 8
  %27 = getelementptr inbounds %struct.picolcd_pending, %struct.picolcd_pending* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %82

30:                                               ; preds = %25
  %31 = load %struct.picolcd_pending*, %struct.picolcd_pending** %5, align 8
  %32 = getelementptr inbounds %struct.picolcd_pending, %struct.picolcd_pending* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %37 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.picolcd_pending*, %struct.picolcd_pending** %5, align 8
  %41 = getelementptr inbounds %struct.picolcd_pending, %struct.picolcd_pending* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %46 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %44, i32* %48, align 4
  %49 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %50 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PICOLCD_BOOTLOADER, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %30
  %56 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %57 = load %struct.picolcd_pending*, %struct.picolcd_pending** %5, align 8
  %58 = getelementptr inbounds %struct.picolcd_pending, %struct.picolcd_pending* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.picolcd_pending*, %struct.picolcd_pending** %5, align 8
  %63 = getelementptr inbounds %struct.picolcd_pending, %struct.picolcd_pending* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @hid_info(%struct.hid_device* %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %66)
  br label %81

68:                                               ; preds = %30
  %69 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %70 = load %struct.picolcd_pending*, %struct.picolcd_pending** %5, align 8
  %71 = getelementptr inbounds %struct.picolcd_pending, %struct.picolcd_pending* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.picolcd_pending*, %struct.picolcd_pending** %5, align 8
  %76 = getelementptr inbounds %struct.picolcd_pending, %struct.picolcd_pending* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @hid_info(%struct.hid_device* %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %79)
  br label %81

81:                                               ; preds = %68, %55
  br label %87

82:                                               ; preds = %25
  %83 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %84 = call i32 @hid_err(%struct.hid_device* %83, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %82, %81
  %88 = load %struct.picolcd_pending*, %struct.picolcd_pending** %5, align 8
  %89 = call i32 @kfree(%struct.picolcd_pending* %88)
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %87, %20, %11
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.picolcd_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local %struct.picolcd_pending* @picolcd_send_and_wait(%struct.hid_device*, i32, i32*, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_info(%struct.hid_device*, i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.picolcd_pending*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
