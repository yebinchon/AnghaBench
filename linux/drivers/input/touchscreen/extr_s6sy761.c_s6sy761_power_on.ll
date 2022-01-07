; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_s6sy761.c_s6sy761_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_s6sy761.c_s6sy761_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6sy761_data = type { i32, i32 }

@S6SY761_EVENT_SIZE = common dso_local global i32 0, align 4
@S6SY761_READ_ONE_EVENT = common dso_local global i32 0, align 4
@S6SY761_EVENT_INFO = common dso_local global i32 0, align 4
@S6SY761_EVENT_VENDOR_INFO = common dso_local global i32 0, align 4
@S6SY761_INFO_BOOT_COMPLETE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@S6SY761_BOOT_STATUS = common dso_local global i32 0, align 4
@S6SY761_BS_APPLICATION = common dso_local global i32 0, align 4
@S6SY761_TOUCH_FUNCTION = common dso_local global i32 0, align 4
@S6SY761_MASK_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s6sy761_data*)* @s6sy761_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6sy761_power_on(%struct.s6sy761_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s6sy761_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s6sy761_data* %0, %struct.s6sy761_data** %3, align 8
  %9 = load i32, i32* @S6SY761_EVENT_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load %struct.s6sy761_data*, %struct.s6sy761_data** %3, align 8
  %14 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = load %struct.s6sy761_data*, %struct.s6sy761_data** %3, align 8
  %18 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regulator_bulk_enable(i32 %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %86

25:                                               ; preds = %1
  %26 = call i32 @msleep(i32 140)
  %27 = load %struct.s6sy761_data*, %struct.s6sy761_data** %3, align 8
  %28 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @S6SY761_READ_ONE_EVENT, align 4
  %31 = load i32, i32* @S6SY761_EVENT_SIZE, align 4
  %32 = call i32 @i2c_smbus_read_i2c_block_data(i32 %29, i32 %30, i32 %31, i32* %12)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %86

37:                                               ; preds = %25
  %38 = getelementptr inbounds i32, i32* %12, i64 0
  %39 = load i32, i32* %38, align 16
  %40 = ashr i32 %39, 2
  %41 = and i32 %40, 15
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @S6SY761_EVENT_INFO, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @S6SY761_EVENT_VENDOR_INFO, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %45, %37
  %50 = getelementptr inbounds i32, i32* %12, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @S6SY761_INFO_BOOT_COMPLETE, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49, %45
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %86

57:                                               ; preds = %49
  %58 = load %struct.s6sy761_data*, %struct.s6sy761_data** %3, align 8
  %59 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @S6SY761_BOOT_STATUS, align 4
  %62 = call i32 @i2c_smbus_read_byte_data(i32 %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %86

67:                                               ; preds = %57
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @S6SY761_BS_APPLICATION, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %86

74:                                               ; preds = %67
  %75 = load %struct.s6sy761_data*, %struct.s6sy761_data** %3, align 8
  %76 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @S6SY761_TOUCH_FUNCTION, align 4
  %79 = load i32, i32* @S6SY761_MASK_TOUCH, align 4
  %80 = call i32 @i2c_smbus_write_word_data(i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %86

85:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %86

86:                                               ; preds = %85, %83, %71, %65, %54, %35, %23
  %87 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @i2c_smbus_read_i2c_block_data(i32, i32, i32, i32*) #2

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #2

declare dso_local i32 @i2c_smbus_write_word_data(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
