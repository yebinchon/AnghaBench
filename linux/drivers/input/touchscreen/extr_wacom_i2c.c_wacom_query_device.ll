; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_i2c.c_wacom_query_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_i2c.c_wacom_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.wacom_features = type { i8*, i8*, i8*, i8* }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@WACOM_CMD_QUERY0 = common dso_local global i32 0, align 4
@WACOM_CMD_QUERY1 = common dso_local global i32 0, align 4
@WACOM_CMD_QUERY2 = common dso_local global i32 0, align 4
@WACOM_CMD_QUERY3 = common dso_local global i32 0, align 4
@WACOM_CMD_THROW0 = common dso_local global i32 0, align 4
@WACOM_CMD_THROW1 = common dso_local global i32 0, align 4
@WACOM_QUERY_SIZE = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"x_max:%d, y_max:%d, pressure:%d, fw:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.wacom_features*)* @wacom_query_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_query_device(%struct.i2c_client* %0, %struct.wacom_features* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.wacom_features*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca [2 x i32], align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [3 x %struct.i2c_msg], align 16
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.wacom_features* %1, %struct.wacom_features** %5, align 8
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %14 = load i32, i32* @WACOM_CMD_QUERY0, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  %16 = load i32, i32* @WACOM_CMD_QUERY1, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @WACOM_CMD_QUERY2, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = load i32, i32* @WACOM_CMD_QUERY3, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %22 = load i32, i32* @WACOM_CMD_THROW0, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds i32, i32* %21, i64 1
  %24 = load i32, i32* @WACOM_CMD_THROW1, align 4
  store i32 %24, i32* %23, align 4
  %25 = load i32, i32* @WACOM_QUERY_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %9, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  %29 = getelementptr inbounds [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %11, i64 0, i64 0
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 0
  store i32 16, i32* %30, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 1
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32* %32, i32** %31, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 2
  store i32 0, i32* %33, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 3
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %34, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i64 1
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 0
  store i32 8, i32* %39, align 8
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 1
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32* %41, i32** %40, align 8
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 2
  store i32 0, i32* %42, align 8
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 3
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %43, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i64 1
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i32 0, i32 0
  %49 = mul nuw i64 4, %26
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %48, align 8
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i32 0, i32 1
  store i32* %28, i32** %51, align 8
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i32 0, i32 2
  %53 = load i32, i32* @I2C_M_RD, align 4
  store i32 %53, i32* %52, align 8
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i32 0, i32 3
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %54, align 4
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %11, i64 0, i64 0
  %62 = getelementptr inbounds [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %11, i64 0, i64 0
  %63 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %62)
  %64 = call i32 @i2c_transfer(i32 %60, %struct.i2c_msg* %61, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %2
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

69:                                               ; preds = %2
  %70 = load i32, i32* %6, align 4
  %71 = getelementptr inbounds [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %11, i64 0, i64 0
  %72 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %71)
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

77:                                               ; preds = %69
  %78 = getelementptr inbounds i32, i32* %28, i64 3
  %79 = call i8* @get_unaligned_le16(i32* %78)
  %80 = load %struct.wacom_features*, %struct.wacom_features** %5, align 8
  %81 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = getelementptr inbounds i32, i32* %28, i64 5
  %83 = call i8* @get_unaligned_le16(i32* %82)
  %84 = load %struct.wacom_features*, %struct.wacom_features** %5, align 8
  %85 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = getelementptr inbounds i32, i32* %28, i64 11
  %87 = call i8* @get_unaligned_le16(i32* %86)
  %88 = load %struct.wacom_features*, %struct.wacom_features** %5, align 8
  %89 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = getelementptr inbounds i32, i32* %28, i64 13
  %91 = call i8* @get_unaligned_le16(i32* %90)
  %92 = load %struct.wacom_features*, %struct.wacom_features** %5, align 8
  %93 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %94, i32 0, i32 0
  %96 = load %struct.wacom_features*, %struct.wacom_features** %5, align 8
  %97 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %96, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.wacom_features*, %struct.wacom_features** %5, align 8
  %100 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.wacom_features*, %struct.wacom_features** %5, align 8
  %103 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.wacom_features*, %struct.wacom_features** %5, align 8
  %106 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @dev_dbg(i32* %95, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %98, i8* %101, i8* %104, i8* %107)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

109:                                              ; preds = %77, %74, %67
  %110 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_msg*) #2

declare dso_local i8* @get_unaligned_le16(i32*) #2

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
