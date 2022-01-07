; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_mpr121_touchkey.c_mpr121_phys_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_mpr121_touchkey.c_mpr121_phys_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr121_init_register = type { i32, i8 }
%struct.mpr121_touchkey = type { i8 }
%struct.i2c_client = type { i32 }

@MPR121_MAX_KEY_COUNT = common dso_local global i32 0, align 4
@ELE0_TOUCH_THRESHOLD_ADDR = common dso_local global i32 0, align 4
@TOUCH_THRESHOLD = common dso_local global i8 0, align 1
@RELEASE_THRESHOLD = common dso_local global i8 0, align 1
@init_reg_table = common dso_local global %struct.mpr121_init_register* null, align 8
@AUTO_CONFIG_USL_ADDR = common dso_local global i32 0, align 4
@AUTO_CONFIG_LSL_ADDR = common dso_local global i32 0, align 4
@AUTO_CONFIG_TL_ADDR = common dso_local global i32 0, align 4
@ELECTRODE_CONF_QUICK_CHARGE = common dso_local global i8 0, align 1
@ELECTRODE_CONF_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"set up with %x keys.\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"i2c write error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpr121_touchkey*, %struct.i2c_client*, i32)* @mpr121_phys_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpr121_phys_init(%struct.mpr121_touchkey* %0, %struct.i2c_client* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpr121_touchkey*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mpr121_init_register*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mpr121_touchkey* %0, %struct.mpr121_touchkey** %5, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %43, %3
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* @MPR121_MAX_KEY_COUNT, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = load i32, i32* @ELE0_TOUCH_THRESHOLD_ADDR, align 4
  %23 = load i32, i32* %13, align 4
  %24 = mul nsw i32 %23, 2
  %25 = add nsw i32 %22, %24
  store i32 %25, i32* %14, align 4
  %26 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load i8, i8* @TOUCH_THRESHOLD, align 1
  %29 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %26, i32 %27, i8 zeroext %28)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %131

33:                                               ; preds = %21
  %34 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %35 = load i32, i32* %14, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i8, i8* @RELEASE_THRESHOLD, align 1
  %38 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %34, i32 %36, i8 zeroext %37)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %131

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %17

46:                                               ; preds = %17
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %69, %46
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.mpr121_init_register*, %struct.mpr121_init_register** @init_reg_table, align 8
  %50 = call i32 @ARRAY_SIZE(%struct.mpr121_init_register* %49)
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %47
  %53 = load %struct.mpr121_init_register*, %struct.mpr121_init_register** @init_reg_table, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.mpr121_init_register, %struct.mpr121_init_register* %53, i64 %55
  store %struct.mpr121_init_register* %56, %struct.mpr121_init_register** %8, align 8
  %57 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %58 = load %struct.mpr121_init_register*, %struct.mpr121_init_register** %8, align 8
  %59 = getelementptr inbounds %struct.mpr121_init_register, %struct.mpr121_init_register* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mpr121_init_register*, %struct.mpr121_init_register** %8, align 8
  %62 = getelementptr inbounds %struct.mpr121_init_register, %struct.mpr121_init_register* %61, i32 0, i32 1
  %63 = load i8, i8* %62, align 4
  %64 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %57, i32 %60, i8 zeroext %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  br label %131

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %47

72:                                               ; preds = %47
  %73 = load i32, i32* %7, align 4
  %74 = sdiv i32 %73, 1000
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = sub nsw i32 %75, 700
  %77 = mul nsw i32 %76, 256
  %78 = load i32, i32* %15, align 4
  %79 = sdiv i32 %77, %78
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %9, align 1
  %81 = load i8, i8* %9, align 1
  %82 = zext i8 %81 to i32
  %83 = mul nsw i32 %82, 65
  %84 = sdiv i32 %83, 100
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %10, align 1
  %86 = load i8, i8* %9, align 1
  %87 = zext i8 %86 to i32
  %88 = mul nsw i32 %87, 90
  %89 = sdiv i32 %88, 100
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %11, align 1
  %91 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %92 = load i32, i32* @AUTO_CONFIG_USL_ADDR, align 4
  %93 = load i8, i8* %9, align 1
  %94 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %91, i32 %92, i8 zeroext %93)
  store i32 %94, i32* %16, align 4
  %95 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %96 = load i32, i32* @AUTO_CONFIG_LSL_ADDR, align 4
  %97 = load i8, i8* %10, align 1
  %98 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %95, i32 %96, i8 zeroext %97)
  %99 = load i32, i32* %16, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %16, align 4
  %101 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %102 = load i32, i32* @AUTO_CONFIG_TL_ADDR, align 4
  %103 = load i8, i8* %11, align 1
  %104 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %101, i32 %102, i8 zeroext %103)
  %105 = load i32, i32* %16, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %16, align 4
  %107 = load %struct.mpr121_touchkey*, %struct.mpr121_touchkey** %5, align 8
  %108 = getelementptr inbounds %struct.mpr121_touchkey, %struct.mpr121_touchkey* %107, i32 0, i32 0
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = load i8, i8* @ELECTRODE_CONF_QUICK_CHARGE, align 1
  %112 = zext i8 %111 to i32
  %113 = or i32 %110, %112
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %12, align 1
  %115 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %116 = load i32, i32* @ELECTRODE_CONF_ADDR, align 4
  %117 = load i8, i8* %12, align 1
  %118 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %115, i32 %116, i8 zeroext %117)
  %119 = load i32, i32* %16, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %16, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %72
  br label %131

124:                                              ; preds = %72
  %125 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %126 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %125, i32 0, i32 0
  %127 = load %struct.mpr121_touchkey*, %struct.mpr121_touchkey** %5, align 8
  %128 = getelementptr inbounds %struct.mpr121_touchkey, %struct.mpr121_touchkey* %127, i32 0, i32 0
  %129 = load i8, i8* %128, align 1
  %130 = call i32 @dev_dbg(i32* %126, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8 zeroext %129)
  store i32 0, i32* %4, align 4
  br label %137

131:                                              ; preds = %123, %67, %41, %32
  %132 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %133 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %132, i32 0, i32 0
  %134 = load i32, i32* %16, align 4
  %135 = call i32 @dev_err(i32* %133, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* %16, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %131, %124
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i8 zeroext) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mpr121_init_register*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
