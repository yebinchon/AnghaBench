; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_wdt87xx_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_wdt87xx_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@PKT_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"addr & len must be 4 bytes aligned %x, %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PACKET_SIZE = common dso_local global i32 0, align 4
@VND_REQ_WRITE = common dso_local global i32 0, align 4
@CMD_REPORT_ID_OFFSET = common dso_local global i64 0, align 8
@VND_SET_DATA = common dso_local global i32 0, align 4
@CMD_TYPE_OFFSET = common dso_local global i64 0, align 8
@CMD_INDEX_OFFSET = common dso_local global i64 0, align 8
@CMD_LENGTH_OFFSET = common dso_local global i64 0, align 8
@CMD_DATA_OFFSET = common dso_local global i64 0, align 8
@WDT_FLASH_WRITE_DELAY_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i8*, i32, i32)* @wdt87xx_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt87xx_write_data(%struct.i2c_client* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @PKT_BUF_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 3
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, 3
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23, %4
  %28 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %94

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %92, %35
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %93

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @PACKET_SIZE, align 4
  %42 = call i64 @min(i32 %40, i32 %41)
  store i64 %42, i64* %10, align 8
  %43 = load i32, i32* @VND_REQ_WRITE, align 4
  %44 = load i64, i64* @CMD_REPORT_ID_OFFSET, align 8
  %45 = getelementptr inbounds i32, i32* %19, i64 %44
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @VND_SET_DATA, align 4
  %47 = load i64, i64* @CMD_TYPE_OFFSET, align 8
  %48 = getelementptr inbounds i32, i32* %19, i64 %47
  store i32 %46, i32* %48, align 4
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @CMD_INDEX_OFFSET, align 8
  %51 = getelementptr inbounds i32, i32* %19, i64 %50
  %52 = call i32 @put_unaligned_le16(i64 %49, i32* %51)
  %53 = load i32, i32* %8, align 4
  %54 = load i64, i64* @CMD_LENGTH_OFFSET, align 8
  %55 = getelementptr inbounds i32, i32* %19, i64 %54
  %56 = call i32 @put_unaligned_le32(i32 %53, i32* %55)
  %57 = load i64, i64* @CMD_DATA_OFFSET, align 8
  %58 = getelementptr inbounds i32, i32* %19, i64 %57
  %59 = load i8*, i8** %7, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @memcpy(i32* %58, i8* %59, i64 %60)
  %62 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %63 = mul nuw i64 4, %17
  %64 = trunc i64 %63 to i32
  %65 = call i32 @wdt87xx_set_feature(%struct.i2c_client* %62, i32* %19, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %39
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %94

70:                                               ; preds = %39
  %71 = load i64, i64* %10, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = sub nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %9, align 4
  %76 = load i64, i64* %10, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 %76
  store i8* %78, i8** %7, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* @WDT_FLASH_WRITE_DELAY_MS, align 4
  %85 = call i32 @mdelay(i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  %88 = srem i32 %87, 32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %70
  %91 = call i32 @msleep(i32 20)
  br label %92

92:                                               ; preds = %90, %70
  br label %36

93:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %94

94:                                               ; preds = %93, %68, %27
  %95 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #2

declare dso_local i64 @min(i32, i32) #2

declare dso_local i32 @put_unaligned_le16(i64, i32*) #2

declare dso_local i32 @put_unaligned_le32(i32, i32*) #2

declare dso_local i32 @memcpy(i32*, i8*, i64) #2

declare dso_local i32 @wdt87xx_set_feature(%struct.i2c_client*, i32*, i32) #2

declare dso_local i32 @mdelay(i32) #2

declare dso_local i32 @msleep(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
