; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_stts751_update_alert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_stts751_update_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stts751_priv = type { i64, i32, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@stts751_intervals = common dso_local global i32* null, align 8
@STTS751_REG_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"status reg %x\0A\00", align 1
@STTS751_STATUS_TRIPH = common dso_local global i32 0, align 4
@STTS751_STATUS_TRIPL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"invalidating alert cache\0A\00", align 1
@STTS751_STATUS_TRIPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"max_alert: %d, min_alert: %d, therm_trip: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stts751_priv*)* @stts751_update_alert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stts751_update_alert(%struct.stts751_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stts751_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stts751_priv* %0, %struct.stts751_priv** %3, align 8
  %7 = load i32*, i32** @stts751_intervals, align 8
  %8 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %9 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @msecs_to_jiffies(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sdiv i32 %14, 10
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %19 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %18, i32 0, i32 5
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* @STTS751_REG_STATUS, align 4
  %22 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %117

27:                                               ; preds = %1
  %28 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %29 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %28, i32 0, i32 5
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %4, align 4
  %33 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @STTS751_STATUS_TRIPH, align 4
  %36 = load i32, i32* @STTS751_STATUS_TRIPL, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  store i32 %38, i32* %5, align 4
  %39 = load i64, i64* @jiffies, align 8
  %40 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %41 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = call i64 @time_after(i64 %39, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %27
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %53 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %51, %48, %27
  %57 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %58 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %57, i32 0, i32 2
  store i32 0, i32* %58, align 4
  %59 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %60 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %59, i32 0, i32 3
  store i32 0, i32* %60, align 8
  %61 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %62 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %61, i32 0, i32 1
  store i32 1, i32* %62, align 8
  %63 = load i64, i64* @jiffies, align 8
  %64 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %65 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %64, i32 0, i32 6
  store i64 %63, i64* %65, align 8
  %66 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %67 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %66, i32 0, i32 5
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %56, %51
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @STTS751_STATUS_TRIPH, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %80 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @STTS751_STATUS_TRIPL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %91 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @STTS751_STATUS_TRIPT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %102 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 4
  %103 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %104 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %103, i32 0, i32 5
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %108 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %111 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %114 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %106, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %112, i32 %115)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %71, %25
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
