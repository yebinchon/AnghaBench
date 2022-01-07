; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_chipone_icn8505.c_icn8505_upload_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_chipone_icn8505.c_icn8505_upload_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icn8505_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Firmware request error %d\0A\00", align 1
@MAX_FW_UPLOAD_TRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Failed to upload firmware: %d (attempt %d/%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icn8505_data*)* @icn8505_upload_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icn8505_upload_fw(%struct.icn8505_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.icn8505_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.icn8505_data* %0, %struct.icn8505_data** %3, align 8
  %8 = load %struct.icn8505_data*, %struct.icn8505_data** %3, align 8
  %9 = getelementptr inbounds %struct.icn8505_data, %struct.icn8505_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.icn8505_data*, %struct.icn8505_data** %3, align 8
  %13 = getelementptr inbounds %struct.icn8505_data, %struct.icn8505_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @request_firmware(%struct.firmware** %5, i32 %14, %struct.device* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %56

24:                                               ; preds = %1
  %25 = load %struct.icn8505_data*, %struct.icn8505_data** %3, align 8
  %26 = call i32 @icn8505_read_reg_silent(%struct.icn8505_data* %25, i32 10)
  %27 = icmp eq i32 %26, 133
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %52

29:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %30

30:                                               ; preds = %48, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MAX_FW_UPLOAD_TRIES, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load %struct.icn8505_data*, %struct.icn8505_data** %3, align 8
  %36 = load %struct.firmware*, %struct.firmware** %5, align 8
  %37 = call i32 @icn8505_try_fw_upload(%struct.icn8505_data* %35, %struct.firmware* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %52

41:                                               ; preds = %34
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @MAX_FW_UPLOAD_TRIES, align 4
  %46 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44, i32 %45)
  %47 = call i32 @usleep_range(i32 2000, i32 5000)
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %30

51:                                               ; preds = %30
  br label %52

52:                                               ; preds = %51, %40, %28
  %53 = load %struct.firmware*, %struct.firmware** %5, align 8
  %54 = call i32 @release_firmware(%struct.firmware* %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %19
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @request_firmware(%struct.firmware**, i32, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @icn8505_read_reg_silent(%struct.icn8505_data*, i32) #1

declare dso_local i32 @icn8505_try_fw_upload(%struct.icn8505_data*, %struct.firmware*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
