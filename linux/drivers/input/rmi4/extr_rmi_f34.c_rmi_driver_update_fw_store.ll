; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f34.c_rmi_driver_update_fw_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f34.c_rmi_driver_update_fw_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.rmi_driver_data = type { i32 }
%struct.firmware = type { i32 }

@NAME_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Flashing %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @rmi_driver_update_fw_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_driver_update_fw_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rmi_driver_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.firmware*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.rmi_driver_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.rmi_driver_data* %18, %struct.rmi_driver_data** %10, align 8
  %19 = load i32, i32* @NAME_MAX, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load i64, i64* %9, align 8
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %4
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* @NAME_MAX, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp uge i64 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %82

34:                                               ; preds = %26
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = sub i64 %36, 1
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %34
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = sub i64 %44, 1
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 10
  br i1 %49, label %50, label %53

50:                                               ; preds = %42, %34
  %51 = load i64, i64* %14, align 8
  %52 = sub i64 %51, 1
  store i64 %52, i64* %14, align 8
  br label %53

53:                                               ; preds = %50, %42
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %14, align 8
  %56 = call i32 @strncpy(i8* %22, i8* %54, i64 %55)
  %57 = load i64, i64* %14, align 8
  %58 = getelementptr inbounds i8, i8* %22, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = call i32 @request_firmware(%struct.firmware** %13, i8* %22, %struct.device* %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %15, align 4
  store i32 %64, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %82

65:                                               ; preds = %53
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = call i32 @dev_info(%struct.device* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %22)
  %68 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %10, align 8
  %69 = load %struct.firmware*, %struct.firmware** %13, align 8
  %70 = call i32 @rmi_firmware_update(%struct.rmi_driver_data* %68, %struct.firmware* %69)
  store i32 %70, i32* %15, align 4
  %71 = load %struct.firmware*, %struct.firmware** %13, align 8
  %72 = call i32 @release_firmware(%struct.firmware* %71)
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = sext i32 %73 to i64
  br label %79

77:                                               ; preds = %65
  %78 = load i64, i64* %9, align 8
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i64 [ %76, %75 ], [ %78, %77 ]
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %82

82:                                               ; preds = %79, %63, %31
  %83 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.rmi_driver_data* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, %struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

declare dso_local i32 @rmi_firmware_update(%struct.rmi_driver_data*, %struct.firmware*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
