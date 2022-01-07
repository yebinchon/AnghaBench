; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_mmc35240.c_mmc35240_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_mmc35240.c_mmc35240_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc35240_data = type { i32, i32*, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MMC35240_REG_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error reading product id\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"MMC35240 chip id %x\0A\00", align 1
@MMC35240_WAIT_SET_RESET = common dso_local global i64 0, align 8
@MMC35240_REG_CTRL1 = common dso_local global i32 0, align 4
@MMC35240_CTRL1_BW_MASK = common dso_local global i32 0, align 4
@MMC35240_CTRL1_BW_SHIFT = common dso_local global i32 0, align 4
@MMC35240_OTP_START_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc35240_data*)* @mmc35240_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc35240_init(%struct.mmc35240_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc35240_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i32], align 16
  store %struct.mmc35240_data* %0, %struct.mmc35240_data** %3, align 8
  %9 = load %struct.mmc35240_data*, %struct.mmc35240_data** %3, align 8
  %10 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MMC35240_REG_ID, align 4
  %13 = call i32 @regmap_read(i32 %11, i32 %12, i32* %7)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.mmc35240_data*, %struct.mmc35240_data** %3, align 8
  %18 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %117

23:                                               ; preds = %1
  %24 = load %struct.mmc35240_data*, %struct.mmc35240_data** %3, align 8
  %25 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %24, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @dev_dbg(i32* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.mmc35240_data*, %struct.mmc35240_data** %3, align 8
  %31 = call i32 @mmc35240_hw_set(%struct.mmc35240_data* %30, i32 1)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %117

36:                                               ; preds = %23
  %37 = load i64, i64* @MMC35240_WAIT_SET_RESET, align 8
  %38 = load i64, i64* @MMC35240_WAIT_SET_RESET, align 8
  %39 = add nsw i64 %38, 1
  %40 = call i32 @usleep_range(i64 %37, i64 %39)
  %41 = load %struct.mmc35240_data*, %struct.mmc35240_data** %3, align 8
  %42 = call i32 @mmc35240_hw_set(%struct.mmc35240_data* %41, i32 0)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %117

47:                                               ; preds = %36
  %48 = load %struct.mmc35240_data*, %struct.mmc35240_data** %3, align 8
  %49 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MMC35240_REG_CTRL1, align 4
  %52 = load i32, i32* @MMC35240_CTRL1_BW_MASK, align 4
  %53 = load %struct.mmc35240_data*, %struct.mmc35240_data** %3, align 8
  %54 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @MMC35240_CTRL1_BW_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = call i32 @regmap_update_bits(i32 %50, i32 %51, i32 %52, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %117

63:                                               ; preds = %47
  %64 = load %struct.mmc35240_data*, %struct.mmc35240_data** %3, align 8
  %65 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @MMC35240_OTP_START_ADDR, align 4
  %68 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %69 = call i32 @regmap_bulk_read(i32 %66, i32 %67, i32* %68, i32 24)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %117

74:                                               ; preds = %63
  %75 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 3
  %78 = shl i32 %77, 4
  %79 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 2
  %80 = load i32, i32* %79, align 8
  %81 = ashr i32 %80, 4
  %82 = or i32 %78, %81
  %83 = call i32 @MMC35240_OTP_CONVERT_Y(i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 63
  %87 = call i32 @MMC35240_OTP_CONVERT_Z(i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = call i32 @MMC35240_X_COEFF(i32 1)
  %89 = load %struct.mmc35240_data*, %struct.mmc35240_data** %3, align 8
  %90 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %88, i32* %92, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @MMC35240_Y_COEFF(i32 %93)
  %95 = load %struct.mmc35240_data*, %struct.mmc35240_data** %3, align 8
  %96 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  store i32 %94, i32* %98, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @MMC35240_Z_COEFF(i32 %99)
  %101 = load %struct.mmc35240_data*, %struct.mmc35240_data** %3, align 8
  %102 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  store i32 %100, i32* %104, align 4
  %105 = load %struct.mmc35240_data*, %struct.mmc35240_data** %3, align 8
  %106 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  store i32 1, i32* %108, align 4
  %109 = load %struct.mmc35240_data*, %struct.mmc35240_data** %3, align 8
  %110 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 1000, i32* %112, align 4
  %113 = load %struct.mmc35240_data*, %struct.mmc35240_data** %3, align 8
  %114 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  store i32 10000, i32* %116, align 4
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %74, %72, %61, %45, %34, %16
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @mmc35240_hw_set(%struct.mmc35240_data*, i32) #1

declare dso_local i32 @usleep_range(i64, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @MMC35240_OTP_CONVERT_Y(i32) #1

declare dso_local i32 @MMC35240_OTP_CONVERT_Z(i32) #1

declare dso_local i32 @MMC35240_X_COEFF(i32) #1

declare dso_local i32 @MMC35240_Y_COEFF(i32) #1

declare dso_local i32 @MMC35240_Z_COEFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
