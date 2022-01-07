; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp401.c_tmp401_update_device_reg16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp401.c_tmp401_update_device_reg16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.tmp401_data = type { i64, i32** }

@tmp411 = common dso_local global i64 0, align 8
@tmp432 = common dso_local global i64 0, align 8
@TMP432_TEMP_MSB_READ = common dso_local global i32** null, align 8
@TMP401_TEMP_MSB_READ = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.tmp401_data*)* @tmp401_update_device_reg16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp401_update_device_reg16(%struct.i2c_client* %0, %struct.tmp401_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.tmp401_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.tmp401_data* %1, %struct.tmp401_data** %5, align 8
  %12 = load %struct.tmp401_data*, %struct.tmp401_data** %5, align 8
  %13 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @tmp411, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 6, i32 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.tmp401_data*, %struct.tmp401_data** %5, align 8
  %20 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @tmp432, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 3, i32 2
  store i32 %25, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %102, %2
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %105

30:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %98, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %101

35:                                               ; preds = %31
  %36 = load %struct.tmp401_data*, %struct.tmp401_data** %5, align 8
  %37 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @tmp432, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load i32**, i32*** @TMP432_TEMP_MSB_READ, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  br label %61

51:                                               ; preds = %35
  %52 = load i32**, i32*** @TMP401_TEMP_MSB_READ, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  br label %61

61:                                               ; preds = %51, %41
  %62 = phi i32 [ %50, %41 ], [ %60, %51 ]
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 3
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  br label %73

69:                                               ; preds = %61
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %106

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %79, 3
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  %83 = shl i32 %82, 8
  br label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %8, align 4
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi i32 [ %83, %81 ], [ %85, %84 ]
  %88 = load %struct.tmp401_data*, %struct.tmp401_data** %5, align 8
  %89 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %88, i32 0, i32 1
  %90 = load i32**, i32*** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %87, i32* %97, align 4
  br label %98

98:                                               ; preds = %86
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %31

101:                                              ; preds = %31
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %26

105:                                              ; preds = %26
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %76
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
