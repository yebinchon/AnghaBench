; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832.c_rtl2832_slave_ts_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832.c_rtl2832_slave_ts_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.rtl2832_dev = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"enable=%d\0A\00", align 1
@DVBT_SOFT_RST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"_\FF\00", align 1
@DVBT_PIP_ON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\18\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\7F\F7\FF\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\00\0F\FF\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\08\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @rtl2832_slave_ts_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2832_slave_ts_ctrl(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl2832_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = call %struct.rtl2832_dev* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.rtl2832_dev* %9, %struct.rtl2832_dev** %6, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %55

16:                                               ; preds = %2
  %17 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %6, align 8
  %18 = load i32, i32* @DVBT_SOFT_RST, align 4
  %19 = call i32 @rtl2832_wr_demod_reg(%struct.rtl2832_dev* %17, i32 %18, i32 0)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %98

23:                                               ; preds = %16
  %24 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %6, align 8
  %25 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regmap_bulk_write(i32 %26, i32 268, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %98

31:                                               ; preds = %23
  %32 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %6, align 8
  %33 = load i32, i32* @DVBT_PIP_ON, align 4
  %34 = call i32 @rtl2832_wr_demod_reg(%struct.rtl2832_dev* %32, i32 %33, i32 1)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %98

38:                                               ; preds = %31
  %39 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %6, align 8
  %40 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @regmap_bulk_write(i32 %41, i32 188, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %98

46:                                               ; preds = %38
  %47 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %6, align 8
  %48 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @regmap_bulk_write(i32 %49, i32 402, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %98

54:                                               ; preds = %46
  br label %94

55:                                               ; preds = %2
  %56 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %6, align 8
  %57 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @regmap_bulk_write(i32 %58, i32 402, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %98

63:                                               ; preds = %55
  %64 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %6, align 8
  %65 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @regmap_bulk_write(i32 %66, i32 188, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %98

71:                                               ; preds = %63
  %72 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %6, align 8
  %73 = load i32, i32* @DVBT_PIP_ON, align 4
  %74 = call i32 @rtl2832_wr_demod_reg(%struct.rtl2832_dev* %72, i32 %73, i32 0)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %98

78:                                               ; preds = %71
  %79 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %6, align 8
  %80 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @regmap_bulk_write(i32 %81, i32 268, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %98

86:                                               ; preds = %78
  %87 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %6, align 8
  %88 = load i32, i32* @DVBT_SOFT_RST, align 4
  %89 = call i32 @rtl2832_wr_demod_reg(%struct.rtl2832_dev* %87, i32 %88, i32 1)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %98

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %54
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %6, align 8
  %97 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  store i32 0, i32* %3, align 4
  br label %104

98:                                               ; preds = %92, %85, %77, %70, %62, %53, %45, %37, %30, %22
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %99, i32 0, i32 0
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @dev_dbg(i32* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %98, %94
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.rtl2832_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @rtl2832_wr_demod_reg(%struct.rtl2832_dev*, i32, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
