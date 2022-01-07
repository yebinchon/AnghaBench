; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-highlander.c_highlander_i2c_smbus_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-highlander.c_highlander_i2c_smbus_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32* }
%struct.highlander_i2c_dev = type { i32*, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"addr %04x, command %02x, read_write %d, size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"unsupported command %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SMMR = common dso_local global i64 0, align 8
@SMMR_MODE0 = common dso_local global i32 0, align 4
@SMMR_MODE1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unsupported xfer size %d\0A\00", align 1
@SMSMADR = common dso_local global i64 0, align 8
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @highlander_i2c_smbus_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @highlander_i2c_smbus_xfer(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca %struct.highlander_i2c_dev*, align 8
  %17 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %19 = call %struct.highlander_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %18)
  store %struct.highlander_i2c_dev* %19, %struct.highlander_i2c_dev** %16, align 8
  %20 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %21 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %20, i32 0, i32 4
  %22 = call i32 @init_completion(i32* %21)
  %23 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %24 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i8, i8* %12, align 1
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i8 signext %28, i32 %29)
  %31 = load i32, i32* %14, align 4
  switch i32 %31, label %53 [
    i32 129, label %32
    i32 128, label %39
  ]

32:                                               ; preds = %7
  %33 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %34 = bitcast %union.i2c_smbus_data* %33 to i32*
  %35 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %36 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  %37 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %38 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %37, i32 0, i32 1
  store i32 1, i32* %38, align 8
  br label %61

39:                                               ; preds = %7
  %40 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %41 = bitcast %union.i2c_smbus_data* %40 to i32**
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %45 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  %46 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %47 = bitcast %union.i2c_smbus_data* %46 to i32**
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %52 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  br label %61

53:                                               ; preds = %7
  %54 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %55 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %8, align 4
  br label %140

61:                                               ; preds = %39, %32
  %62 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %63 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SMMR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @ioread16(i64 %66)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* @SMMR_MODE0, align 4
  %69 = load i32, i32* @SMMR_MODE1, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %17, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %17, align 4
  %74 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %75 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  switch i32 %76, label %92 [
    i32 1, label %77
    i32 8, label %78
    i32 16, label %82
    i32 32, label %86
  ]

77:                                               ; preds = %61
  br label %102

78:                                               ; preds = %61
  %79 = load i32, i32* @SMMR_MODE0, align 4
  %80 = load i32, i32* %17, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %17, align 4
  br label %102

82:                                               ; preds = %61
  %83 = load i32, i32* @SMMR_MODE1, align 4
  %84 = load i32, i32* %17, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %17, align 4
  br label %102

86:                                               ; preds = %61
  %87 = load i32, i32* @SMMR_MODE0, align 4
  %88 = load i32, i32* @SMMR_MODE1, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %17, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %17, align 4
  br label %102

92:                                               ; preds = %61
  %93 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %94 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %97 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %8, align 4
  br label %140

102:                                              ; preds = %86, %82, %78, %77
  %103 = load i32, i32* %17, align 4
  %104 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %105 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SMMR, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @iowrite16(i32 %103, i64 %108)
  %110 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %111 = call i32 @highlander_i2c_done(%struct.highlander_i2c_dev* %110)
  %112 = load i32, i32* %10, align 4
  %113 = shl i32 %112, 1
  %114 = load i8, i8* %12, align 1
  %115 = sext i8 %114 to i32
  %116 = or i32 %113, %115
  %117 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %118 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @SMSMADR, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @iowrite16(i32 %116, i64 %121)
  %123 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %126 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @highlander_i2c_command(%struct.highlander_i2c_dev* %123, i32 %124, i32 %127)
  %129 = load i8, i8* %12, align 1
  %130 = sext i8 %129 to i32
  %131 = load i8, i8* @I2C_SMBUS_READ, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %102
  %135 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %136 = call i32 @highlander_i2c_read(%struct.highlander_i2c_dev* %135)
  store i32 %136, i32* %8, align 4
  br label %140

137:                                              ; preds = %102
  %138 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %139 = call i32 @highlander_i2c_write(%struct.highlander_i2c_dev* %138)
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %137, %134, %92, %53
  %141 = load i32, i32* %8, align 4
  ret i32 %141
}

declare dso_local %struct.highlander_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i8 signext, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @ioread16(i64) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @highlander_i2c_done(%struct.highlander_i2c_dev*) #1

declare dso_local i32 @highlander_i2c_command(%struct.highlander_i2c_dev*, i32, i32) #1

declare dso_local i32 @highlander_i2c_read(%struct.highlander_i2c_dev*) #1

declare dso_local i32 @highlander_i2c_write(%struct.highlander_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
