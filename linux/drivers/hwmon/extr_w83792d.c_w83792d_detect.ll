; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83792d.c_w83792d_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83792d.c_w83792d_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i16, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@W83792D_REG_CONFIG = common dso_local global i32 0, align 4
@W83792D_REG_BANK = common dso_local global i32 0, align 4
@W83792D_REG_CHIPMAN = common dso_local global i32 0, align 4
@W83792D_REG_I2C_ADDR = common dso_local global i32 0, align 4
@W83792D_REG_WCHIPID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"w83792d\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @w83792d_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83792d_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i16, i16* %14, align 8
  store i16 %15, i16* %9, align 2
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %17 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %18 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %99

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load i32, i32* @W83792D_REG_CONFIG, align 4
  %26 = call i32 @w83792d_read_value(%struct.i2c_client* %24, i32 %25)
  %27 = and i32 %26, 128
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %99

32:                                               ; preds = %23
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load i32, i32* @W83792D_REG_BANK, align 4
  %35 = call i32 @w83792d_read_value(%struct.i2c_client* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load i32, i32* @W83792D_REG_CHIPMAN, align 4
  %38 = call i32 @w83792d_read_value(%struct.i2c_client* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 7
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 128
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 163
  br i1 %48, label %56, label %49

49:                                               ; preds = %46, %42
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, 128
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 92
  br i1 %55, label %56, label %59

56:                                               ; preds = %53, %46
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %99

59:                                               ; preds = %53, %49
  br label %60

60:                                               ; preds = %59, %32
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = load i32, i32* @W83792D_REG_I2C_ADDR, align 4
  %63 = call i32 @w83792d_read_value(%struct.i2c_client* %61, i32 %62)
  %64 = load i16, i16* %9, align 2
  %65 = zext i16 %64 to i32
  %66 = icmp ne i32 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %99

70:                                               ; preds = %60
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = load i32, i32* @W83792D_REG_BANK, align 4
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = load i32, i32* @W83792D_REG_BANK, align 4
  %75 = call i32 @w83792d_read_value(%struct.i2c_client* %73, i32 %74)
  %76 = and i32 %75, 120
  %77 = or i32 %76, 128
  %78 = call i32 @w83792d_write_value(%struct.i2c_client* %71, i32 %72, i32 %77)
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = load i32, i32* @W83792D_REG_WCHIPID, align 4
  %81 = call i32 @w83792d_read_value(%struct.i2c_client* %79, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = load i32, i32* @W83792D_REG_CHIPMAN, align 4
  %84 = call i32 @w83792d_read_value(%struct.i2c_client* %82, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 122
  br i1 %86, label %90, label %87

87:                                               ; preds = %70
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 92
  br i1 %89, label %90, label %93

90:                                               ; preds = %87, %70
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %99

93:                                               ; preds = %87
  %94 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %95 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @I2C_NAME_SIZE, align 4
  %98 = call i32 @strlcpy(i32 %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %97)
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %93, %90, %67, %56, %29, %20
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @w83792d_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83792d_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
