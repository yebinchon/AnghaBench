; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_vl6180.c_vl6180_measure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_vl6180.c_vl6180_measure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32 }
%struct.vl6180_data = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@vl6180_chan_regs_table = common dso_local global %struct.TYPE_2__* null, align 8
@VL6180_STARTSTOP = common dso_local global i32 0, align 4
@VL6180_INTR_STATUS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@VL6180_INTR_CLEAR = common dso_local global i32 0, align 4
@VL6180_CLEAR_ERROR = common dso_local global i32 0, align 4
@VL6180_CLEAR_ALS = common dso_local global i32 0, align 4
@VL6180_CLEAR_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vl6180_data*, i32)* @vl6180_measure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vl6180_measure(%struct.vl6180_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vl6180_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vl6180_data* %0, %struct.vl6180_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.vl6180_data*, %struct.vl6180_data** %3, align 8
  %10 = getelementptr inbounds %struct.vl6180_data, %struct.vl6180_data* %9, i32 0, i32 1
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %5, align 8
  store i32 20, i32* %6, align 4
  %12 = load %struct.vl6180_data*, %struct.vl6180_data** %3, align 8
  %13 = getelementptr inbounds %struct.vl6180_data, %struct.vl6180_data* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vl6180_chan_regs_table, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @VL6180_STARTSTOP, align 4
  %23 = call i32 @vl6180_write_byte(%struct.i2c_client* %15, i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %104

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %50, %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %6, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %34 = load i32, i32* @VL6180_INTR_STATUS, align 4
  %35 = call i32 @vl6180_read_byte(%struct.i2c_client* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %104

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vl6180_chan_regs_table, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %40, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %52

50:                                               ; preds = %39
  %51 = call i32 @msleep(i32 20)
  br label %28

52:                                               ; preds = %49, %28
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %104

58:                                               ; preds = %52
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vl6180_chan_regs_table, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %58
  %67 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vl6180_chan_regs_table, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @vl6180_read_word(%struct.i2c_client* %67, i32 %73)
  br label %84

75:                                               ; preds = %58
  %76 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vl6180_chan_regs_table, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @vl6180_read_byte(%struct.i2c_client* %76, i32 %82)
  br label %84

84:                                               ; preds = %75, %66
  %85 = phi i32 [ %74, %66 ], [ %83, %75 ]
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %104

89:                                               ; preds = %84
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %8, align 4
  %91 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %92 = load i32, i32* @VL6180_INTR_CLEAR, align 4
  %93 = load i32, i32* @VL6180_CLEAR_ERROR, align 4
  %94 = load i32, i32* @VL6180_CLEAR_ALS, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @VL6180_CLEAR_RANGE, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @vl6180_write_byte(%struct.i2c_client* %91, i32 %92, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %89
  br label %104

102:                                              ; preds = %89
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %102, %101, %88, %55, %38, %26
  %105 = load %struct.vl6180_data*, %struct.vl6180_data** %3, align 8
  %106 = getelementptr inbounds %struct.vl6180_data, %struct.vl6180_data* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %7, align 4
  ret i32 %108
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vl6180_write_byte(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @vl6180_read_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @vl6180_read_word(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
