; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_i2c.c_elan_i2c_prepare_fw_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_i2c.c_elan_i2c_prepare_fw_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }

@IAP_MODE = common dso_local global i32 0, align 4
@MAIN_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"wrong mode: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ETP_I2C_IAP_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"cannot read iap password: %d\0A\00", align 1
@ETP_I2C_IAP_PASSWORD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"wrong iap password: 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @elan_i2c_prepare_fw_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_i2c_prepare_fw_update(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = call i32 @elan_i2c_iap_get_mode(%struct.i2c_client* %11, i32* %6)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %93

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @IAP_MODE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %23 = call i32 @elan_i2c_iap_reset(%struct.i2c_client* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %93

28:                                               ; preds = %21
  %29 = call i32 @msleep(i32 30)
  br label %30

30:                                               ; preds = %28, %17
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = call i32 @elan_i2c_set_flash_key(%struct.i2c_client* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %93

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @MAIN_MODE, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 100, i32 30
  %43 = call i32 @msleep(i32 %42)
  %44 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %45 = call i32 @elan_i2c_iap_get_mode(%struct.i2c_client* %44, i32* %6)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %93

50:                                               ; preds = %37
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @MAIN_MODE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @dev_err(%struct.device* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %93

60:                                               ; preds = %50
  %61 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %62 = call i32 @elan_i2c_set_flash_key(%struct.i2c_client* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %93

67:                                               ; preds = %60
  %68 = call i32 @msleep(i32 30)
  %69 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %70 = load i32, i32* @ETP_I2C_IAP_CMD, align 4
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %72 = call i32 @elan_i2c_read_cmd(%struct.i2c_client* %69, i32 %70, i32* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %67
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %2, align 4
  br label %93

80:                                               ; preds = %67
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %82 = call i32 @le16_to_cpup(i32* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @ETP_I2C_IAP_PASSWORD, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @dev_err(%struct.device* %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %93

92:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %86, %75, %65, %54, %48, %35, %26, %15
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @elan_i2c_iap_get_mode(%struct.i2c_client*, i32*) #1

declare dso_local i32 @elan_i2c_iap_reset(%struct.i2c_client*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @elan_i2c_set_flash_key(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @elan_i2c_read_cmd(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
