; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95234.c_lm95234_fill_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95234.c_lm95234_fill_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm95234_data = type { i32*, i32*, i32*, i32, i32, i32 }
%struct.i2c_client = type { i32 }

@LM95234_REG_CONVRATE = common dso_local global i32 0, align 4
@update_intervals = common dso_local global i32* null, align 8
@LM95234_REG_TCRIT_HYST = common dso_local global i32 0, align 4
@LM95234_REG_REM_MODEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm95234_data*, %struct.i2c_client*)* @lm95234_fill_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm95234_fill_cache(%struct.lm95234_data* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lm95234_data*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lm95234_data* %0, %struct.lm95234_data** %4, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %9 = load i32, i32* @LM95234_REG_CONVRATE, align 4
  %10 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %131

15:                                               ; preds = %2
  %16 = load i32*, i32** @update_intervals, align 8
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @msecs_to_jiffies(i32 %21)
  %23 = load %struct.lm95234_data*, %struct.lm95234_data** %4, align 8
  %24 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %49, %15
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.lm95234_data*, %struct.lm95234_data** %4, align 8
  %28 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @ARRAY_SIZE(i32* %29)
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %25
  %33 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @LM95234_REG_TCRIT1(i32 %34)
  %36 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %33, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %131

41:                                               ; preds = %32
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.lm95234_data*, %struct.lm95234_data** %4, align 8
  %44 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %25

52:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %77, %52
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.lm95234_data*, %struct.lm95234_data** %4, align 8
  %56 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @ARRAY_SIZE(i32* %57)
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %53
  %61 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @LM95234_REG_TCRIT2(i32 %62)
  %64 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %61, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %131

69:                                               ; preds = %60
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.lm95234_data*, %struct.lm95234_data** %4, align 8
  %72 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %53

80:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %105, %80
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.lm95234_data*, %struct.lm95234_data** %4, align 8
  %84 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @ARRAY_SIZE(i32* %85)
  %87 = icmp slt i32 %82, %86
  br i1 %87, label %88, label %108

88:                                               ; preds = %81
  %89 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @LM95234_REG_OFFSET(i32 %90)
  %92 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %89, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %3, align 4
  br label %131

97:                                               ; preds = %88
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.lm95234_data*, %struct.lm95234_data** %4, align 8
  %100 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %98, i32* %104, align 4
  br label %105

105:                                              ; preds = %97
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %81

108:                                              ; preds = %81
  %109 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %110 = load i32, i32* @LM95234_REG_TCRIT_HYST, align 4
  %111 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %109, i32 %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %3, align 4
  br label %131

116:                                              ; preds = %108
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.lm95234_data*, %struct.lm95234_data** %4, align 8
  %119 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 8
  %120 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %121 = load i32, i32* @LM95234_REG_REM_MODEL, align 4
  %122 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %120, i32 %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %116
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %3, align 4
  br label %131

127:                                              ; preds = %116
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.lm95234_data*, %struct.lm95234_data** %4, align 8
  %130 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 4
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %127, %125, %114, %95, %67, %39, %13
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @LM95234_REG_TCRIT1(i32) #1

declare dso_local i32 @LM95234_REG_TCRIT2(i32) #1

declare dso_local i32 @LM95234_REG_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
