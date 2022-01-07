; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_wdt87xx_get_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_wdt87xx_get_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@PKT_BUF_SIZE = common dso_local global i32 0, align 4
@CMD_BUF_SIZE = common dso_local global i32 0, align 4
@VND_SET_CHECKSUM_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to set checksum length\0A\00", align 1
@VND_SET_CHECKSUM_CALC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to set checksum address\0A\00", align 1
@VND_REQ_READ = common dso_local global i32 0, align 4
@CMD_REPORT_ID_OFFSET = common dso_local global i64 0, align 8
@VND_GET_CHECKSUM = common dso_local global i32 0, align 4
@CMD_TYPE_OFFSET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to request checksum\0A\00", align 1
@VND_READ_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to read checksum\0A\00", align 1
@CMD_DATA_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32*, i32, i32)* @wdt87xx_get_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt87xx_get_checksum(%struct.i2c_client* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @PKT_BUF_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32, i32* @CMD_BUF_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %24 = load i32, i32* @VND_SET_CHECKSUM_LENGTH, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @wdt87xx_send_command(%struct.i2c_client* %23, i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %4
  %30 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %95

34:                                               ; preds = %4
  %35 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %36 = load i32, i32* @VND_SET_CHECKSUM_CALC, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @wdt87xx_send_command(%struct.i2c_client* %35, i32 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %95

46:                                               ; preds = %34
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @DIV_ROUND_UP(i32 %47, i32 1024)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = mul nsw i32 %49, 30
  %51 = call i32 @msleep(i32 %50)
  %52 = mul nuw i64 4, %21
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memset(i32* %22, i32 0, i32 %53)
  %55 = load i32, i32* @VND_REQ_READ, align 4
  %56 = load i64, i64* @CMD_REPORT_ID_OFFSET, align 8
  %57 = getelementptr inbounds i32, i32* %22, i64 %56
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @VND_GET_CHECKSUM, align 4
  %59 = load i64, i64* @CMD_TYPE_OFFSET, align 8
  %60 = getelementptr inbounds i32, i32* %22, i64 %59
  store i32 %58, i32* %60, align 4
  %61 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %62 = mul nuw i64 4, %21
  %63 = trunc i64 %62 to i32
  %64 = call i32 @wdt87xx_set_feature(%struct.i2c_client* %61, i32* %22, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %46
  %68 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %95

72:                                               ; preds = %46
  %73 = mul nuw i64 4, %17
  %74 = trunc i64 %73 to i32
  %75 = call i32 @memset(i32* %19, i32 0, i32 %74)
  %76 = load i32, i32* @VND_READ_DATA, align 4
  %77 = load i64, i64* @CMD_REPORT_ID_OFFSET, align 8
  %78 = getelementptr inbounds i32, i32* %19, i64 %77
  store i32 %76, i32* %78, align 4
  %79 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %80 = mul nuw i64 4, %17
  %81 = trunc i64 %80 to i32
  %82 = call i32 @wdt87xx_get_feature(%struct.i2c_client* %79, i32* %19, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %72
  %86 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 0
  %88 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %95

90:                                               ; preds = %72
  %91 = load i64, i64* @CMD_DATA_OFFSET, align 8
  %92 = getelementptr inbounds i32, i32* %19, i64 %91
  %93 = call i32 @get_unaligned_le16(i32* %92)
  %94 = load i32*, i32** %7, align 8
  store i32 %93, i32* %94, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %95

95:                                               ; preds = %90, %85, %67, %41, %29
  %96 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wdt87xx_send_command(%struct.i2c_client*, i32, i32) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @wdt87xx_set_feature(%struct.i2c_client*, i32*, i32) #2

declare dso_local i32 @wdt87xx_get_feature(%struct.i2c_client*, i32*, i32) #2

declare dso_local i32 @get_unaligned_le16(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
