; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_wdt87xx_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_wdt87xx_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@CMD_BUF_SIZE = common dso_local global i32 0, align 4
@VND_REQ_WRITE = common dso_local global i32 0, align 4
@CMD_REPORT_ID_OFFSET = common dso_local global i64 0, align 8
@VND_SET_COMMAND_DATA = common dso_local global i32 0, align 4
@CMD_TYPE_OFFSET = common dso_local global i64 0, align 8
@CMD_INDEX_OFFSET = common dso_local global i64 0, align 8
@CMD_LENGTH_OFFSET = common dso_local global i64 0, align 8
@CMD_SFLCK_KEY = common dso_local global i32 0, align 4
@CMD_KEY_OFFSET = common dso_local global i64 0, align 8
@CMD_SFUNL_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid command: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @wdt87xx_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt87xx_send_command(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @CMD_BUF_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* @VND_REQ_WRITE, align 4
  %16 = load i64, i64* @CMD_REPORT_ID_OFFSET, align 8
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @VND_SET_COMMAND_DATA, align 4
  %19 = load i64, i64* @CMD_TYPE_OFFSET, align 8
  %20 = getelementptr inbounds i32, i32* %14, i64 %19
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i64, i64* @CMD_INDEX_OFFSET, align 8
  %23 = getelementptr inbounds i32, i32* %14, i64 %22
  %24 = call i32 @put_unaligned_le16(i32 %21, i32* %23)
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %47 [
    i32 131, label %26
    i32 130, label %26
    i32 134, label %26
    i32 133, label %32
    i32 132, label %37
    i32 135, label %42
    i32 129, label %42
    i32 128, label %42
  ]

26:                                               ; preds = %3, %3, %3
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 255
  %29 = load i64, i64* @CMD_LENGTH_OFFSET, align 8
  %30 = getelementptr inbounds i32, i32* %14, i64 %29
  %31 = call i32 @put_unaligned_le32(i32 %28, i32* %30)
  br label %56

32:                                               ; preds = %3
  %33 = load i32, i32* @CMD_SFLCK_KEY, align 4
  %34 = load i64, i64* @CMD_KEY_OFFSET, align 8
  %35 = getelementptr inbounds i32, i32* %14, i64 %34
  %36 = call i32 @put_unaligned_le16(i32 %33, i32* %35)
  br label %56

37:                                               ; preds = %3
  %38 = load i32, i32* @CMD_SFUNL_KEY, align 4
  %39 = load i64, i64* @CMD_KEY_OFFSET, align 8
  %40 = getelementptr inbounds i32, i32* %14, i64 %39
  %41 = call i32 @put_unaligned_le16(i32 %38, i32* %40)
  br label %56

42:                                               ; preds = %3, %3, %3
  %43 = load i32, i32* %7, align 4
  %44 = load i64, i64* @CMD_KEY_OFFSET, align 8
  %45 = getelementptr inbounds i32, i32* %14, i64 %44
  %46 = call i32 @put_unaligned_le32(i32 %43, i32* %45)
  br label %56

47:                                               ; preds = %3
  %48 = load i64, i64* @CMD_REPORT_ID_OFFSET, align 8
  %49 = getelementptr inbounds i32, i32* %14, i64 %48
  store i32 0, i32* %49, align 4
  %50 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %61

56:                                               ; preds = %42, %37, %32, %26
  %57 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %58 = mul nuw i64 4, %12
  %59 = trunc i64 %58 to i32
  %60 = call i32 @wdt87xx_set_feature(%struct.i2c_client* %57, i32* %14, i32 %59)
  store i32 %60, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %61

61:                                               ; preds = %56, %47
  %62 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @put_unaligned_le16(i32, i32*) #2

declare dso_local i32 @put_unaligned_le32(i32, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @wdt87xx_set_feature(%struct.i2c_client*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
