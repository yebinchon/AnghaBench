; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_write_event_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_write_event_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i64 }
%struct.sca3000_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32* }

@IIO_MOD_Y = common dso_local global i64 0, align 8
@sca3000_addresses = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32, i32)* @sca3000_write_event_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_write_event_value(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sca3000_state*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %8, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %20 = call %struct.sca3000_state* @iio_priv(%struct.iio_dev* %19)
  store %struct.sca3000_state* %20, %struct.sca3000_state** %15, align 8
  store i32 0, i32* %18, align 4
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IIO_MOD_Y, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %67

26:                                               ; preds = %7
  %27 = load %struct.sca3000_state*, %struct.sca3000_state** %15, align 8
  %28 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @ARRAY_SIZE(i32* %31)
  store i32 %32, i32* %17, align 4
  br label %33

33:                                               ; preds = %65, %26
  %34 = load i32, i32* %17, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %33
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.sca3000_state*, %struct.sca3000_state** %15, align 8
  %39 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %17, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %37, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %36
  %50 = load i32, i32* %17, align 4
  %51 = shl i32 1, %50
  %52 = load i32, i32* %18, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %18, align 4
  %54 = load %struct.sca3000_state*, %struct.sca3000_state** %15, align 8
  %55 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %13, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %49, %36
  br label %33

66:                                               ; preds = %33
  br label %108

67:                                               ; preds = %7
  %68 = load %struct.sca3000_state*, %struct.sca3000_state** %15, align 8
  %69 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @ARRAY_SIZE(i32* %72)
  store i32 %73, i32* %17, align 4
  br label %74

74:                                               ; preds = %106, %67
  %75 = load i32, i32* %17, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %107

77:                                               ; preds = %74
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.sca3000_state*, %struct.sca3000_state** %15, align 8
  %80 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp sge i32 %78, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %77
  %91 = load i32, i32* %17, align 4
  %92 = shl i32 1, %91
  %93 = load i32, i32* %18, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %18, align 4
  %95 = load %struct.sca3000_state*, %struct.sca3000_state** %15, align 8
  %96 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %13, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %90, %77
  br label %74

107:                                              ; preds = %74
  br label %108

108:                                              ; preds = %107, %66
  %109 = load %struct.sca3000_state*, %struct.sca3000_state** %15, align 8
  %110 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %109, i32 0, i32 0
  %111 = call i32 @mutex_lock(i32* %110)
  %112 = load %struct.sca3000_state*, %struct.sca3000_state** %15, align 8
  %113 = load i32**, i32*** @sca3000_addresses, align 8
  %114 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %115 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32*, i32** %113, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %18, align 4
  %122 = call i32 @sca3000_write_ctrl_reg(%struct.sca3000_state* %112, i32 %120, i32 %121)
  store i32 %122, i32* %16, align 4
  %123 = load %struct.sca3000_state*, %struct.sca3000_state** %15, align 8
  %124 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %123, i32 0, i32 0
  %125 = call i32 @mutex_unlock(i32* %124)
  %126 = load i32, i32* %16, align 4
  ret i32 %126
}

declare dso_local %struct.sca3000_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sca3000_write_ctrl_reg(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
