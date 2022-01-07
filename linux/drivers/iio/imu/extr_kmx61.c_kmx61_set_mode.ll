; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmx61_data = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@KMX61_REG_STBY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error reading reg_stby\0A\00", align 1
@KMX61_ACC = common dso_local global i32 0, align 4
@KMX61_ACC_STBY_BIT = common dso_local global i32 0, align 4
@KMX61_MAG = common dso_local global i32 0, align 4
@KMX61_MAG_STBY_BIT = common dso_local global i32 0, align 4
@KMX61_ACT_STBY_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Error writing reg_stby\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmx61_data*, i32, i32, i32)* @kmx61_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmx61_set_mode(%struct.kmx61_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kmx61_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kmx61_data* %0, %struct.kmx61_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %13 = load %struct.kmx61_data*, %struct.kmx61_data** %6, align 8
  %14 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32, i32* @KMX61_REG_STBY, align 4
  %17 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load %struct.kmx61_data*, %struct.kmx61_data** %6, align 8
  %22 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %113

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @KMX61_ACC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @KMX61_ACC_STBY_BIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @KMX61_ACC_STBY_BIT, align 4
  %39 = load i32, i32* %10, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %46

41:                                               ; preds = %32
  %42 = load i32, i32* @KMX61_ACC_STBY_BIT, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %41, %37
  br label %47

47:                                               ; preds = %46, %27
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @KMX61_MAG, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @KMX61_MAG_STBY_BIT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @KMX61_MAG_STBY_BIT, align 4
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  store i32 1, i32* %12, align 4
  br label %66

61:                                               ; preds = %52
  %62 = load i32, i32* @KMX61_MAG_STBY_BIT, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %61, %57
  br label %67

67:                                               ; preds = %66, %47
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @KMX61_ACT_STBY_BIT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @KMX61_ACT_STBY_BIT, align 4
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load %struct.kmx61_data*, %struct.kmx61_data** %6, align 8
  %78 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %77, i32 0, i32 2
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* @KMX61_REG_STBY, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__* %79, i32 %80, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %76
  %86 = load %struct.kmx61_data*, %struct.kmx61_data** %6, align 8
  %87 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %86, i32 0, i32 2
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = call i32 @dev_err(i32* %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %5, align 4
  br label %113

92:                                               ; preds = %76
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.kmx61_data*, %struct.kmx61_data** %6, align 8
  %101 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %98, %95, %92
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, -1
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.kmx61_data*, %struct.kmx61_data** %6, align 8
  %111 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %108, %105, %102
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %112, %85, %20
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
