; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elants_i2c.c_elants_i2c_fw_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elants_i2c.c_elants_i2c_fw_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elants_data = type { i64, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32, i32 }
%struct.firmware = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"elants_i2c_%04x.bin\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"requesting fw name = %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to request firmware: %d\0A\00", align 1
@ELAN_FW_PAGESIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"invalid firmware length: %zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ELAN_IAP_RECOVERY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"firmware update failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"failed to initialize device after firmware update: %d\0A\00", align 1
@ELAN_IAP_OPERATIONAL = common dso_local global i64 0, align 8
@ELAN_STATE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elants_data*)* @elants_i2c_fw_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elants_i2c_fw_update(%struct.elants_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.elants_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.elants_data* %0, %struct.elants_data** %3, align 8
  %8 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %9 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %8, i32 0, i32 3
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %13 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @kasprintf(i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %116

21:                                               ; preds = %1
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 1
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @dev_info(i32* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 1
  %29 = call i32 @request_firmware(%struct.firmware** %5, i8* %26, i32* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @kfree(i8* %30)
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %21
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 1
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %116

40:                                               ; preds = %21
  %41 = load %struct.firmware*, %struct.firmware** %5, align 8
  %42 = getelementptr inbounds %struct.firmware, %struct.firmware* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ELAN_FW_PAGESIZE, align 4
  %45 = srem i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 1
  %50 = load %struct.firmware*, %struct.firmware** %5, align 8
  %51 = getelementptr inbounds %struct.firmware, %struct.firmware* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %112

56:                                               ; preds = %40
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @disable_irq(i32 %59)
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = load %struct.firmware*, %struct.firmware** %5, align 8
  %63 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %64 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ELAN_IAP_RECOVERY, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @elants_i2c_do_update_firmware(%struct.i2c_client* %61, %struct.firmware* %62, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %56
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 1
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  %77 = load i64, i64* @ELAN_IAP_RECOVERY, align 8
  %78 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %79 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %97

80:                                               ; preds = %56
  %81 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %82 = call i32 @elants_i2c_initialize(%struct.elants_data* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 1
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  %90 = load i64, i64* @ELAN_IAP_RECOVERY, align 8
  %91 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %92 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %97

93:                                               ; preds = %80
  %94 = load i64, i64* @ELAN_IAP_OPERATIONAL, align 8
  %95 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %96 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %93, %85, %72
  %98 = load i32, i32* @ELAN_STATE_NORMAL, align 4
  %99 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %100 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @enable_irq(i32 %103)
  %105 = call i32 @msleep(i32 100)
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %97
  %109 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %110 = call i32 @elants_i2c_calibrate(%struct.elants_data* %109)
  br label %111

111:                                              ; preds = %108, %97
  br label %112

112:                                              ; preds = %111, %47
  %113 = load %struct.firmware*, %struct.firmware** %5, align 8
  %114 = call i32 @release_firmware(%struct.firmware* %113)
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %112, %34, %18
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @elants_i2c_do_update_firmware(%struct.i2c_client*, %struct.firmware*, i32) #1

declare dso_local i32 @elants_i2c_initialize(%struct.elants_data*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @elants_i2c_calibrate(%struct.elants_data*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
