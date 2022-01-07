; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_bl_change_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_bl_change_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mip4_ts = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@MIP4_R0_BOOT = common dso_local global i32 0, align 4
@MIP4_R1_BOOT_MODE = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to send %d mode change: %d (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Sent mode change request (mode: %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to read device mode: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Current device mode: %d, want: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mip4_ts*, i32)* @mip4_bl_change_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mip4_bl_change_mode(%struct.mip4_ts* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mip4_ts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x %struct.i2c_msg], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mip4_ts* %0, %struct.mip4_ts** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %14 = load i32, i32* @MIP4_R0_BOOT, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  %16 = load i32, i32* @MIP4_R1_BOOT_MODE, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %20 = load i32, i32* @MIP4_R0_BOOT, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  %22 = load i32, i32* @MIP4_R1_BOOT_MODE, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 0
  store i32 8, i32* %24, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 1
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32* %26, i32** %25, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 2
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 3
  %29 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %30 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %28, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i64 1
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 0
  store i32 4, i32* %35, align 8
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 1
  store i32* %8, i32** %36, align 8
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 2
  %38 = load i32, i32* @I2C_M_RD, align 4
  store i32 %38, i32* %37, align 8
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 3
  %40 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %41 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %39, align 4
  store i32 10, i32* %10, align 4
  br label %45

45:                                               ; preds = %124, %2
  %46 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %47 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %50 = call i32 @i2c_master_send(%struct.TYPE_2__* %48, i32* %49, i32 12)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ne i64 %52, 12
  br i1 %53, label %54, label %73

54:                                               ; preds = %45
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* %11, align 4
  br label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  br label %62

62:                                               ; preds = %59, %57
  %63 = phi i32 [ %58, %57 ], [ %61, %59 ]
  store i32 %63, i32* %12, align 4
  %64 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %65 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %3, align 4
  br label %131

73:                                               ; preds = %45
  %74 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %75 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = call i32 @msleep(i32 1000)
  %81 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %82 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %87 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %88 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %87)
  %89 = call i32 @i2c_transfer(i32 %85, %struct.i2c_msg* %86, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %92 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %91)
  %93 = icmp ne i32 %90, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %73
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* %11, align 4
  br label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  br label %102

102:                                              ; preds = %99, %97
  %103 = phi i32 [ %98, %97 ], [ %101, %99 ]
  store i32 %103, i32* %12, align 4
  %104 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %105 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %12, align 4
  %109 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %12, align 4
  store i32 %110, i32* %3, align 4
  br label %131

111:                                              ; preds = %73
  %112 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %113 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %116, i32 %117)
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %131

123:                                              ; preds = %111
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %45, label %128

128:                                              ; preds = %124
  %129 = load i32, i32* @EIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %128, %122, %102, %62
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @i2c_master_send(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
