; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_iqs5xx.c_fw_file_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_iqs5xx.c_fw_file_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iqs5xx_private = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@IQS5XX_FW_FILE_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to register device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fw_file_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_file_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iqs5xx_private*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.iqs5xx_private* @dev_get_drvdata(%struct.device* %18)
  store %struct.iqs5xx_private* %19, %struct.iqs5xx_private** %10, align 8
  %20 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %10, align 8
  %21 = getelementptr inbounds %struct.iqs5xx_private, %struct.iqs5xx_private* %20, i32 0, i32 1
  %22 = load %struct.i2c_client*, %struct.i2c_client** %21, align 8
  store %struct.i2c_client* %22, %struct.i2c_client** %11, align 8
  %23 = load i64, i64* %9, align 8
  store i64 %23, i64* %12, align 8
  %24 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %10, align 8
  %25 = getelementptr inbounds %struct.iqs5xx_private, %struct.iqs5xx_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* @IQS5XX_FW_FILE_LEN, align 4
  %31 = add nsw i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %14, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %15, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %4
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %91

40:                                               ; preds = %4
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %12, align 8
  %43 = sub i64 %42, 1
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 10
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i64, i64* %12, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %12, align 8
  br label %51

51:                                               ; preds = %48, %40
  %52 = load i64, i64* %12, align 8
  %53 = load i32, i32* @IQS5XX_FW_FILE_LEN, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ugt i64 %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @ENAMETOOLONG, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %91

59:                                               ; preds = %51
  %60 = load i8*, i8** %8, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @memcpy(i8* %34, i8* %60, i64 %61)
  %63 = load i64, i64* %12, align 8
  %64 = getelementptr inbounds i8, i8* %34, i64 %63
  store i8 0, i8* %64, align 1
  %65 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %66 = call i32 @iqs5xx_fw_file_write(%struct.i2c_client* %65, i8* %34)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %91

71:                                               ; preds = %59
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %71
  %75 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %10, align 8
  %76 = getelementptr inbounds %struct.iqs5xx_private, %struct.iqs5xx_private* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @input_register_device(i32 %77)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 0
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %16, align 4
  store i32 %86, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %91

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87, %71
  %89 = load i64, i64* %9, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %91

91:                                               ; preds = %88, %81, %69, %56, %37
  %92 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.iqs5xx_private* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @iqs5xx_fw_file_write(%struct.i2c_client*, i8*) #1

declare dso_local i32 @input_register_device(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
