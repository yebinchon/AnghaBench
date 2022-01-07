; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372.c_adxl372_buffer_postenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372.c_adxl372_buffer_postenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.iio_dev = type { i32*, i32 }
%struct.adxl372_state = type { i32, i32, i32, i32 }

@ADXL372_INT1_MAP_FIFO_FULL_MSK = common dso_local global i32 0, align 4
@adxl372_axis_lookup_table = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ADXL372_FIFO_SIZE = common dso_local global i32 0, align 4
@ADXL372_FIFO_STREAMED = common dso_local global i32 0, align 4
@ADXL372_FIFO_BYPASSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @adxl372_buffer_postenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxl372_buffer_postenable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.adxl372_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.adxl372_state* @iio_priv(%struct.iio_dev* %8)
  store %struct.adxl372_state* %9, %struct.adxl372_state** %4, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %11 = call i32 @iio_triggered_buffer_postenable(%struct.iio_dev* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %2, align 4
  br label %109

16:                                               ; preds = %1
  %17 = load %struct.adxl372_state*, %struct.adxl372_state** %4, align 8
  %18 = load i32, i32* @ADXL372_INT1_MAP_FIFO_FULL_MSK, align 4
  %19 = call i32 @adxl372_set_interrupts(%struct.adxl372_state* %17, i32 %18, i32 0)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %105

23:                                               ; preds = %16
  %24 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %44, %23
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adxl372_axis_lookup_table, align 8
  %31 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adxl372_axis_lookup_table, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %34, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %47

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %28

47:                                               ; preds = %42, %28
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adxl372_axis_lookup_table, align 8
  %50 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %49)
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %105

55:                                               ; preds = %47
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adxl372_axis_lookup_table, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.adxl372_state*, %struct.adxl372_state** %4, align 8
  %63 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %65 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @bitmap_weight(i32* %66, i32 %69)
  %71 = load %struct.adxl372_state*, %struct.adxl372_state** %4, align 8
  %72 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.adxl372_state*, %struct.adxl372_state** %4, align 8
  %74 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.adxl372_state*, %struct.adxl372_state** %4, align 8
  %77 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %75, %78
  %80 = load i32, i32* @ADXL372_FIFO_SIZE, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %55
  %83 = load i32, i32* @ADXL372_FIFO_SIZE, align 4
  %84 = load %struct.adxl372_state*, %struct.adxl372_state** %4, align 8
  %85 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %83, %86
  %88 = load %struct.adxl372_state*, %struct.adxl372_state** %4, align 8
  %89 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %82, %55
  %91 = load i32, i32* @ADXL372_FIFO_STREAMED, align 4
  %92 = load %struct.adxl372_state*, %struct.adxl372_state** %4, align 8
  %93 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load %struct.adxl372_state*, %struct.adxl372_state** %4, align 8
  %95 = call i32 @adxl372_configure_fifo(%struct.adxl372_state* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = load i32, i32* @ADXL372_FIFO_BYPASSED, align 4
  %100 = load %struct.adxl372_state*, %struct.adxl372_state** %4, align 8
  %101 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load %struct.adxl372_state*, %struct.adxl372_state** %4, align 8
  %103 = call i32 @adxl372_set_interrupts(%struct.adxl372_state* %102, i32 0, i32 0)
  br label %105

104:                                              ; preds = %90
  store i32 0, i32* %2, align 4
  br label %109

105:                                              ; preds = %98, %52, %22
  %106 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %107 = call i32 @iio_triggered_buffer_predisable(%struct.iio_dev* %106)
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %105, %104, %14
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.adxl372_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_postenable(%struct.iio_dev*) #1

declare dso_local i32 @adxl372_set_interrupts(%struct.adxl372_state*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @bitmap_weight(i32*, i32) #1

declare dso_local i32 @adxl372_configure_fifo(%struct.adxl372_state*) #1

declare dso_local i32 @iio_triggered_buffer_predisable(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
