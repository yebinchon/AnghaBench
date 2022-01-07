; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_detect_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_detect_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32, i32 }
%struct.i2c_driver = type { i32 (%struct.i2c_client.0*, %struct.i2c_board_info*)*, i32, %struct.TYPE_2__ }
%struct.i2c_client.0 = type opaque
%struct.i2c_board_info = type opaque
%struct.TYPE_2__ = type { i8* }
%struct.i2c_board_info.1 = type { i32, i8* }

@.str = private unnamed_addr constant [30 x i8] c"Invalid probe address 0x%02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"%s detection function provided no name for 0x%x\0A\00", align 1
@I2C_CLASS_DEPRECATED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [197 x i8] c"This adapter will soon drop class based instantiation of devices. Please make sure client 0x%02x gets instantiated by other means. Check 'Documentation/i2c/instantiating-devices.rst' for details.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Creating %s at 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed creating %s at 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_driver*)* @i2c_detect_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_detect_address(%struct.i2c_client* %0, %struct.i2c_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_driver*, align 8
  %6 = alloca %struct.i2c_board_info.1, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_driver* %1, %struct.i2c_driver** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %7, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @i2c_check_7bit_addr_validity_strict(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %23 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %22, i32 0, i32 1
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @dev_warn(i32* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %119

27:                                               ; preds = %2
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @i2c_check_addr_busy(%struct.i2c_adapter* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %119

33:                                               ; preds = %27
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @i2c_default_probe(%struct.i2c_adapter* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %119

39:                                               ; preds = %33
  %40 = call i32 @memset(%struct.i2c_board_info.1* %6, i32 0, i32 16)
  %41 = load i32, i32* %8, align 4
  %42 = getelementptr inbounds %struct.i2c_board_info.1, %struct.i2c_board_info.1* %6, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %44 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %43, i32 0, i32 0
  %45 = load i32 (%struct.i2c_client.0*, %struct.i2c_board_info*)*, i32 (%struct.i2c_client.0*, %struct.i2c_board_info*)** %44, align 8
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = bitcast %struct.i2c_client* %46 to %struct.i2c_client.0*
  %48 = bitcast %struct.i2c_board_info.1* %6 to %struct.i2c_board_info*
  %49 = call i32 %45(%struct.i2c_client.0* %47, %struct.i2c_board_info* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %39
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %9, align 4
  br label %60

60:                                               ; preds = %58, %57
  %61 = phi i32 [ 0, %57 ], [ %59, %58 ]
  store i32 %61, i32* %3, align 4
  br label %119

62:                                               ; preds = %39
  %63 = getelementptr inbounds %struct.i2c_board_info.1, %struct.i2c_board_info.1* %6, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %62
  %70 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %71 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %70, i32 0, i32 1
  %72 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %73 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %75, i32 %76)
  br label %118

78:                                               ; preds = %62
  %79 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %80 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @I2C_CLASS_DEPRECATED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %87 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.i2c_board_info.1, %struct.i2c_board_info.1* %6, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @dev_warn(i32* %87, i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %85, %78
  %92 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %93 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.i2c_board_info.1, %struct.i2c_board_info.1* %6, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds %struct.i2c_board_info.1, %struct.i2c_board_info.1* %6, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dev_dbg(i32* %93, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %95, i32 %97)
  %99 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %100 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %99, %struct.i2c_board_info.1* %6)
  store %struct.i2c_client* %100, %struct.i2c_client** %10, align 8
  %101 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %102 = icmp ne %struct.i2c_client* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %91
  %104 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %105 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %104, i32 0, i32 1
  %106 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %107 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %106, i32 0, i32 1
  %108 = call i32 @list_add_tail(i32* %105, i32* %107)
  br label %117

109:                                              ; preds = %91
  %110 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %111 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.i2c_board_info.1, %struct.i2c_board_info.1* %6, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds %struct.i2c_board_info.1, %struct.i2c_board_info.1* %6, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @dev_err(i32* %111, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %113, i32 %115)
  br label %117

117:                                              ; preds = %109, %103
  br label %118

118:                                              ; preds = %117, %69
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %60, %38, %32, %21
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @i2c_check_7bit_addr_validity_strict(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i64 @i2c_check_addr_busy(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_default_probe(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @memset(%struct.i2c_board_info.1*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i32) #1

declare dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info.1*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
