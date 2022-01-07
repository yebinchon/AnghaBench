; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_atxp1.c_cpu0_vid_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_atxp1.c_cpu0_vid_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.atxp1_data = type { i64, %struct.TYPE_2__, i32, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"VID calculation failed.\0A\00", align 1
@ATXP1_VIDENA = common dso_local global i32 0, align 4
@ATXP1_VIDMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Setting VCore to %d mV (0x%02x)\0A\00", align 1
@ATXP1_VID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @cpu0_vid_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu0_vid_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.atxp1_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.atxp1_data* @atxp1_update_device(%struct.device* %16)
  store %struct.atxp1_data* %17, %struct.atxp1_data** %10, align 8
  %18 = load %struct.atxp1_data*, %struct.atxp1_data** %10, align 8
  %19 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %18, i32 0, i32 3
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @kstrtoul(i8* %21, i32 10, i64* %14)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %5, align 4
  br label %116

27:                                               ; preds = %4
  %28 = load i64, i64* %14, align 8
  %29 = udiv i64 %28, 25
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %14, align 8
  %31 = mul i64 %30, 25
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %14, align 8
  %33 = load %struct.atxp1_data*, %struct.atxp1_data** %10, align 8
  %34 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @vid_to_reg(i64 %32, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %5, align 4
  br label %116

43:                                               ; preds = %27
  %44 = load %struct.atxp1_data*, %struct.atxp1_data** %10, align 8
  %45 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ATXP1_VIDENA, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load %struct.atxp1_data*, %struct.atxp1_data** %10, align 8
  %53 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ATXP1_VIDMASK, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %13, align 4
  br label %63

58:                                               ; preds = %43
  %59 = load %struct.atxp1_data*, %struct.atxp1_data** %10, align 8
  %60 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %58, %51
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i64, i64* %9, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %5, align 4
  br label %116

70:                                               ; preds = %63
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = load i64, i64* %14, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @dev_dbg(%struct.device* %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %91, %79
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %86 = load i32, i32* @ATXP1_VID, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @ATXP1_VIDENA, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %85, i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %84
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %13, align 4
  br label %80

94:                                               ; preds = %80
  br label %111

95:                                               ; preds = %70
  br label %96

96:                                               ; preds = %107, %95
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %102 = load i32, i32* @ATXP1_VID, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* @ATXP1_VIDENA, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %101, i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %96

110:                                              ; preds = %96
  br label %111

111:                                              ; preds = %110, %94
  %112 = load %struct.atxp1_data*, %struct.atxp1_data** %10, align 8
  %113 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %112, i32 0, i32 0
  store i64 0, i64* %113, align 8
  %114 = load i64, i64* %9, align 8
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %111, %67, %39, %25
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.atxp1_data* @atxp1_update_device(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @vid_to_reg(i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
