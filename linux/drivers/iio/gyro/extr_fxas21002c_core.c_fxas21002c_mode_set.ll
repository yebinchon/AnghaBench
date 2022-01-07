; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxas21002c_data = type { i32, i32, i32* }

@FXAS21002C_MODE_READY = common dso_local global i32 0, align 4
@F_READY = common dso_local global i64 0, align 8
@FXAS21002C_MODE_ACTIVE = common dso_local global i32 0, align 4
@F_ACTIVE = common dso_local global i64 0, align 8
@FXAS21002C_MODE_STANDBY = common dso_local global i64 0, align 8
@FXAS21002C_STANDBY_ACTIVE_TIME_MS = common dso_local global i32 0, align 4
@FXAS21002C_READY_ACTIVE_TIME_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fxas21002c_data*, i32)* @fxas21002c_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fxas21002c_mode_set(%struct.fxas21002c_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fxas21002c_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fxas21002c_data* %0, %struct.fxas21002c_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %9 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @FXAS21002C_MODE_READY, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %19 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @F_READY, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @regmap_field_write(i32 %23, i32 1)
  store i32 %24, i32* %6, align 4
  br label %33

25:                                               ; preds = %13
  %26 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %27 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @F_READY, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regmap_field_write(i32 %31, i32 0)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %25, %17
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %96

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @FXAS21002C_MODE_ACTIVE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %44 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @F_ACTIVE, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @regmap_field_write(i32 %48, i32 1)
  store i32 %49, i32* %6, align 4
  br label %58

50:                                               ; preds = %38
  %51 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %52 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @F_ACTIVE, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @regmap_field_write(i32 %56, i32 0)
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %50, %42
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %96

63:                                               ; preds = %58
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @FXAS21002C_MODE_ACTIVE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %69 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* @FXAS21002C_MODE_STANDBY, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32, i32* @FXAS21002C_STANDBY_ACTIVE_TIME_MS, align 4
  %76 = call i32 @msleep_interruptible(i32 %75)
  br label %77

77:                                               ; preds = %74, %67, %63
  %78 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %79 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @FXAS21002C_MODE_READY, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @FXAS21002C_READY_ACTIVE_TIME_MS, align 4
  %85 = call i32 @msleep_interruptible(i32 %84)
  br label %86

86:                                               ; preds = %83, %77
  %87 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %88 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %91 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %94 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %86, %61, %36, %12
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @regmap_field_write(i32, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
