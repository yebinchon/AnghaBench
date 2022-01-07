; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.bmg160_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @bmg160_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmg160_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.bmg160_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.bmg160_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.bmg160_data* %15, %struct.bmg160_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %130 [
    i64 129, label %17
    i64 130, label %50
    i64 128, label %91
  ]

17:                                               ; preds = %5
  %18 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %19 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %22 = call i32 @bmg160_set_power_state(%struct.bmg160_data* %21, i32 1)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %27 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %6, align 4
  br label %133

30:                                               ; preds = %17
  %31 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @bmg160_set_bw(%struct.bmg160_data* %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %38 = call i32 @bmg160_set_power_state(%struct.bmg160_data* %37, i32 0)
  %39 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %40 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %6, align 4
  br label %133

43:                                               ; preds = %30
  %44 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %45 = call i32 @bmg160_set_power_state(%struct.bmg160_data* %44, i32 0)
  store i32 %45, i32* %13, align 4
  %46 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %47 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %6, align 4
  br label %133

50:                                               ; preds = %5
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %133

56:                                               ; preds = %50
  %57 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %58 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %57, i32 0, i32 0
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %61 = call i32 @bmg160_set_power_state(%struct.bmg160_data* %60, i32 1)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %56
  %65 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %66 = call i32 @bmg160_set_power_state(%struct.bmg160_data* %65, i32 0)
  %67 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %68 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %6, align 4
  br label %133

71:                                               ; preds = %56
  %72 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @bmg160_set_filter(%struct.bmg160_data* %72, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %79 = call i32 @bmg160_set_power_state(%struct.bmg160_data* %78, i32 0)
  %80 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %81 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %6, align 4
  br label %133

84:                                               ; preds = %71
  %85 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %86 = call i32 @bmg160_set_power_state(%struct.bmg160_data* %85, i32 0)
  store i32 %86, i32* %13, align 4
  %87 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %88 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %6, align 4
  br label %133

91:                                               ; preds = %5
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %133

97:                                               ; preds = %91
  %98 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %99 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %98, i32 0, i32 0
  %100 = call i32 @mutex_lock(i32* %99)
  %101 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %102 = call i32 @bmg160_set_power_state(%struct.bmg160_data* %101, i32 1)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %97
  %106 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %107 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load i32, i32* %13, align 4
  store i32 %109, i32* %6, align 4
  br label %133

110:                                              ; preds = %97
  %111 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @bmg160_set_scale(%struct.bmg160_data* %111, i32 %112)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %118 = call i32 @bmg160_set_power_state(%struct.bmg160_data* %117, i32 0)
  %119 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %120 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %119, i32 0, i32 0
  %121 = call i32 @mutex_unlock(i32* %120)
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %6, align 4
  br label %133

123:                                              ; preds = %110
  %124 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %125 = call i32 @bmg160_set_power_state(%struct.bmg160_data* %124, i32 0)
  store i32 %125, i32* %13, align 4
  %126 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %127 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %126, i32 0, i32 0
  %128 = call i32 @mutex_unlock(i32* %127)
  %129 = load i32, i32* %13, align 4
  store i32 %129, i32* %6, align 4
  br label %133

130:                                              ; preds = %5
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %130, %123, %116, %105, %94, %84, %77, %64, %53, %43, %36, %25
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local %struct.bmg160_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bmg160_set_power_state(%struct.bmg160_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bmg160_set_bw(%struct.bmg160_data*, i32) #1

declare dso_local i32 @bmg160_set_filter(%struct.bmg160_data*, i32) #1

declare dso_local i32 @bmg160_set_scale(%struct.bmg160_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
