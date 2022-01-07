; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmfts.c_stmfts_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmfts.c_stmfts_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmfts_data = type { %struct.TYPE_3__*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@STMFTS_READ_INFO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@STMFTS_SYSTEM_RESET = common dso_local global i32 0, align 4
@STMFTS_SLEEP_OUT = common dso_local global i32 0, align 4
@STMFTS_MS_CX_TUNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to perform mutual auto tune: %d\0A\00", align 1
@STMFTS_SS_CX_TUNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to perform self auto tune: %d\0A\00", align 1
@STMFTS_FULL_FORCE_CALIBRATION = common dso_local global i32 0, align 4
@STMFTS_SLEEP_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmfts_data*)* @stmfts_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmfts_power_on(%struct.stmfts_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmfts_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [8 x i8*], align 16
  store %struct.stmfts_data* %0, %struct.stmfts_data** %3, align 8
  %6 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %7 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @ARRAY_SIZE(i32 %8)
  %10 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %11 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @regulator_bulk_enable(i32 %9, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %122

18:                                               ; preds = %1
  %19 = call i32 @msleep(i32 20)
  %20 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %21 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* @STMFTS_READ_INFO, align 4
  %24 = getelementptr inbounds [8 x i8*], [8 x i8*]* %5, i64 0, i64 0
  %25 = call i32 @i2c_smbus_read_i2c_block_data(%struct.TYPE_3__* %22, i32 %23, i32 64, i8** %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %122

30:                                               ; preds = %18
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 64
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %122

37:                                               ; preds = %30
  %38 = getelementptr inbounds [8 x i8*], [8 x i8*]* %5, i64 0, i64 6
  %39 = bitcast i8** %38 to i32*
  %40 = call i8* @be16_to_cpup(i32* %39)
  %41 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %42 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = getelementptr inbounds [8 x i8*], [8 x i8*]* %5, i64 0, i64 0
  %44 = load i8*, i8** %43, align 16
  %45 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %46 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = getelementptr inbounds [8 x i8*], [8 x i8*]* %5, i64 0, i64 2
  %48 = bitcast i8** %47 to i32*
  %49 = call i8* @be16_to_cpup(i32* %48)
  %50 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %51 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = getelementptr inbounds [8 x i8*], [8 x i8*]* %5, i64 0, i64 4
  %53 = load i8*, i8** %52, align 16
  %54 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %55 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = getelementptr inbounds [8 x i8*], [8 x i8*]* %5, i64 0, i64 5
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %59 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %61 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @enable_irq(i32 %64)
  %66 = call i32 @msleep(i32 50)
  %67 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %68 = load i32, i32* @STMFTS_SYSTEM_RESET, align 4
  %69 = call i32 @stmfts_command(%struct.stmfts_data* %67, i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %37
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %122

74:                                               ; preds = %37
  %75 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %76 = load i32, i32* @STMFTS_SLEEP_OUT, align 4
  %77 = call i32 @stmfts_command(%struct.stmfts_data* %75, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %122

82:                                               ; preds = %74
  %83 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %84 = load i32, i32* @STMFTS_MS_CX_TUNING, align 4
  %85 = call i32 @stmfts_command(%struct.stmfts_data* %83, i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %90 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @dev_warn(i32* %92, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %88, %82
  %96 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %97 = load i32, i32* @STMFTS_SS_CX_TUNING, align 4
  %98 = call i32 @stmfts_command(%struct.stmfts_data* %96, i32 %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %103 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @dev_warn(i32* %105, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %101, %95
  %109 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %110 = load i32, i32* @STMFTS_FULL_FORCE_CALIBRATION, align 4
  %111 = call i32 @stmfts_command(%struct.stmfts_data* %109, i32 %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load i32, i32* %4, align 4
  store i32 %115, i32* %2, align 4
  br label %122

116:                                              ; preds = %108
  %117 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %118 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %117, i32 0, i32 0
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = load i32, i32* @STMFTS_SLEEP_IN, align 4
  %121 = call i32 @i2c_smbus_write_byte(%struct.TYPE_3__* %119, i32 %120)
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %116, %114, %80, %72, %34, %28, %16
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.TYPE_3__*, i32, i32, i8**) #1

declare dso_local i8* @be16_to_cpup(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @stmfts_command(%struct.stmfts_data*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
