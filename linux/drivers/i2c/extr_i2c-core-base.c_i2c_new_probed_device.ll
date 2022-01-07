; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_new_probed_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_new_probed_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i16 }

@I2C_CLIENT_END = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [30 x i8] c"Invalid 7-bit address 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Address 0x%02x already in use, not probing\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Probing failed, no device found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i2c_client* @i2c_new_probed_device(%struct.i2c_adapter* %0, %struct.i2c_board_info* %1, i16* %2, i32 (%struct.i2c_adapter*, i16)* %3) #0 {
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i32 (%struct.i2c_adapter*, i16)*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %6, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %7, align 8
  store i16* %2, i16** %8, align 8
  store i32 (%struct.i2c_adapter*, i16)* %3, i32 (%struct.i2c_adapter*, i16)** %9, align 8
  %11 = load i32 (%struct.i2c_adapter*, i16)*, i32 (%struct.i2c_adapter*, i16)** %9, align 8
  %12 = icmp ne i32 (%struct.i2c_adapter*, i16)* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 (%struct.i2c_adapter*, i16)* @i2c_default_probe, i32 (%struct.i2c_adapter*, i16)** %9, align 8
  br label %14

14:                                               ; preds = %13, %4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %73, %14
  %16 = load i16*, i16** %8, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i16, i16* %16, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* @I2C_CLIENT_END, align 2
  %23 = zext i16 %22 to i32
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %76

25:                                               ; preds = %15
  %26 = load i16*, i16** %8, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %26, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = call i64 @i2c_check_7bit_addr_validity_strict(i16 zeroext %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %35 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %34, i32 0, i32 0
  %36 = load i16*, i16** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i16, i16* %36, i64 %38
  %40 = load i16, i16* %39, align 2
  %41 = call i32 @dev_warn(i32* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i16 zeroext %40)
  br label %73

42:                                               ; preds = %25
  %43 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %44 = load i16*, i16** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i16, i16* %44, i64 %46
  %48 = load i16, i16* %47, align 2
  %49 = call i64 @i2c_check_addr_busy(%struct.i2c_adapter* %43, i16 zeroext %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %42
  %52 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %53 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %52, i32 0, i32 0
  %54 = load i16*, i16** %8, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i16, i16* %54, i64 %56
  %58 = load i16, i16* %57, align 2
  %59 = zext i16 %58 to i32
  %60 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %53, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %73

61:                                               ; preds = %42
  %62 = load i32 (%struct.i2c_adapter*, i16)*, i32 (%struct.i2c_adapter*, i16)** %9, align 8
  %63 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %64 = load i16*, i16** %8, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i16, i16* %64, i64 %66
  %68 = load i16, i16* %67, align 2
  %69 = call i32 %62(%struct.i2c_adapter* %63, i16 zeroext %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %76

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %51, %33
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %15

76:                                               ; preds = %71, %15
  %77 = load i16*, i16** %8, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i16, i16* %77, i64 %79
  %81 = load i16, i16* %80, align 2
  %82 = zext i16 %81 to i32
  %83 = load i16, i16* @I2C_CLIENT_END, align 2
  %84 = zext i16 %83 to i32
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %76
  %87 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %88 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %87, i32 0, i32 0
  %89 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %88, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store %struct.i2c_client* null, %struct.i2c_client** %5, align 8
  br label %101

90:                                               ; preds = %76
  %91 = load i16*, i16** %8, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i16, i16* %91, i64 %93
  %95 = load i16, i16* %94, align 2
  %96 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %97 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %96, i32 0, i32 0
  store i16 %95, i16* %97, align 2
  %98 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %99 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %100 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %98, %struct.i2c_board_info* %99)
  store %struct.i2c_client* %100, %struct.i2c_client** %5, align 8
  br label %101

101:                                              ; preds = %90, %86
  %102 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  ret %struct.i2c_client* %102
}

declare dso_local i32 @i2c_default_probe(%struct.i2c_adapter*, i16 zeroext) #1

declare dso_local i64 @i2c_check_7bit_addr_validity_strict(i16 zeroext) #1

declare dso_local i32 @dev_warn(i32*, i8*, i16 zeroext) #1

declare dso_local i64 @i2c_check_addr_busy(%struct.i2c_adapter*, i16 zeroext) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
