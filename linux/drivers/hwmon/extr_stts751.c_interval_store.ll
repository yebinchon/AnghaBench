; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_interval_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_interval_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.stts751_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@stts751_intervals = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"setting interval. req:%lu, idx: %d, val: %d\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"lower resolution, then modify convrate\00", align 1
@STTS751_REG_RATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"modify convrate, then raise resolution\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @interval_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interval_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.stts751_priv*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %12, align 4
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.stts751_priv* @dev_get_drvdata(%struct.device* %16)
  store %struct.stts751_priv* %17, %struct.stts751_priv** %13, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @kstrtoul(i8* %18, i32 10, i64* %10)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %111

24:                                               ; preds = %4
  %25 = load i64, i64* %10, align 8
  %26 = load i32*, i32** @stts751_intervals, align 8
  %27 = load i32*, i32** @stts751_intervals, align 8
  %28 = call i32 @ARRAY_SIZE(i32* %27)
  %29 = call i32 @find_closest_descending(i64 %25, i32* %26, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.stts751_priv*, %struct.stts751_priv** %13, align 8
  %31 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32*, i32** @stts751_intervals, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %34, i32 %35, i32 %40)
  %42 = load %struct.stts751_priv*, %struct.stts751_priv** %13, align 8
  %43 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %42, i32 0, i32 1
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.stts751_priv*, %struct.stts751_priv** %13, align 8
  %46 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %24
  br label %106

51:                                               ; preds = %24
  %52 = load %struct.stts751_priv*, %struct.stts751_priv** %13, align 8
  %53 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %51
  %58 = load %struct.stts751_priv*, %struct.stts751_priv** %13, align 8
  %59 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.stts751_priv*, %struct.stts751_priv** %13, align 8
  %65 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.stts751_priv*, %struct.stts751_priv** %13, align 8
  %67 = call i32 @stts751_adjust_resolution(%struct.stts751_priv* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  br label %106

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71, %51
  %73 = load %struct.stts751_priv*, %struct.stts751_priv** %13, align 8
  %74 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* @STTS751_REG_RATE, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_2__* %75, i32 %76, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %106

82:                                               ; preds = %72
  %83 = load %struct.stts751_priv*, %struct.stts751_priv** %13, align 8
  %84 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %82
  %89 = load %struct.stts751_priv*, %struct.stts751_priv** %13, align 8
  %90 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %92, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.stts751_priv*, %struct.stts751_priv** %13, align 8
  %96 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.stts751_priv*, %struct.stts751_priv** %13, align 8
  %98 = call i32 @stts751_adjust_resolution(%struct.stts751_priv* %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %88
  br label %106

102:                                              ; preds = %88
  br label %103

103:                                              ; preds = %102, %82
  %104 = load i64, i64* %9, align 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %103, %101, %81, %70, %50
  %107 = load %struct.stts751_priv*, %struct.stts751_priv** %13, align 8
  %108 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %107, i32 0, i32 1
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load i32, i32* %12, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %106, %21
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local %struct.stts751_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @find_closest_descending(i64, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @stts751_adjust_resolution(%struct.stts751_priv*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
