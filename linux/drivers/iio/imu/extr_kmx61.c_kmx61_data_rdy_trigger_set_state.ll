; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_data_rdy_trigger_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_data_rdy_trigger_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32 }
%struct.iio_dev = type { i32 }
%struct.kmx61_data = type { i32, i32, i32, i32, %struct.iio_trigger*, %struct.iio_trigger*, %struct.iio_trigger*, i64 }

@KMX61_ACC = common dso_local global i32 0, align 4
@KMX61_MAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_trigger*, i32)* @kmx61_data_rdy_trigger_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmx61_data_rdy_trigger_set_state(%struct.iio_trigger* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_trigger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.kmx61_data*, align 8
  store %struct.iio_trigger* %0, %struct.iio_trigger** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %10 = call %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger* %9)
  store %struct.iio_dev* %10, %struct.iio_dev** %7, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %12 = call %struct.kmx61_data* @kmx61_get_data(%struct.iio_dev* %11)
  store %struct.kmx61_data* %12, %struct.kmx61_data** %8, align 8
  %13 = load %struct.kmx61_data*, %struct.kmx61_data** %8, align 8
  %14 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %13, i32 0, i32 3
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %2
  %19 = load %struct.kmx61_data*, %struct.kmx61_data** %8, align 8
  %20 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.kmx61_data*, %struct.kmx61_data** %8, align 8
  %25 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.kmx61_data*, %struct.kmx61_data** %8, align 8
  %30 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  br label %109

31:                                               ; preds = %23, %18, %2
  %32 = load %struct.kmx61_data*, %struct.kmx61_data** %8, align 8
  %33 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %32, i32 0, i32 5
  %34 = load %struct.iio_trigger*, %struct.iio_trigger** %33, align 8
  %35 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %36 = icmp eq %struct.iio_trigger* %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.kmx61_data*, %struct.kmx61_data** %8, align 8
  %39 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %38, i32 0, i32 6
  %40 = load %struct.iio_trigger*, %struct.iio_trigger** %39, align 8
  %41 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %42 = icmp eq %struct.iio_trigger* %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37, %31
  %44 = load i32, i32* @KMX61_ACC, align 4
  store i32 %44, i32* %6, align 4
  br label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @KMX61_MAG, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = load %struct.kmx61_data*, %struct.kmx61_data** %8, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @kmx61_set_power_state(%struct.kmx61_data* %48, i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %109

55:                                               ; preds = %47
  %56 = load %struct.kmx61_data*, %struct.kmx61_data** %8, align 8
  %57 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %56, i32 0, i32 5
  %58 = load %struct.iio_trigger*, %struct.iio_trigger** %57, align 8
  %59 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %60 = icmp eq %struct.iio_trigger* %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.kmx61_data*, %struct.kmx61_data** %8, align 8
  %63 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %62, i32 0, i32 4
  %64 = load %struct.iio_trigger*, %struct.iio_trigger** %63, align 8
  %65 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %66 = icmp eq %struct.iio_trigger* %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61, %55
  %68 = load %struct.kmx61_data*, %struct.kmx61_data** %8, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @kmx61_setup_new_data_interrupt(%struct.kmx61_data* %68, i32 %69, i32 %70)
  store i32 %71, i32* %5, align 4
  br label %76

72:                                               ; preds = %61
  %73 = load %struct.kmx61_data*, %struct.kmx61_data** %8, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @kmx61_setup_any_motion_interrupt(%struct.kmx61_data* %73, i32 %74)
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.kmx61_data*, %struct.kmx61_data** %8, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @kmx61_set_power_state(%struct.kmx61_data* %80, i32 0, i32 %81)
  br label %109

83:                                               ; preds = %76
  %84 = load %struct.kmx61_data*, %struct.kmx61_data** %8, align 8
  %85 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %84, i32 0, i32 5
  %86 = load %struct.iio_trigger*, %struct.iio_trigger** %85, align 8
  %87 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %88 = icmp eq %struct.iio_trigger* %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.kmx61_data*, %struct.kmx61_data** %8, align 8
  %92 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  br label %108

93:                                               ; preds = %83
  %94 = load %struct.kmx61_data*, %struct.kmx61_data** %8, align 8
  %95 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %94, i32 0, i32 4
  %96 = load %struct.iio_trigger*, %struct.iio_trigger** %95, align 8
  %97 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %98 = icmp eq %struct.iio_trigger* %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.kmx61_data*, %struct.kmx61_data** %8, align 8
  %102 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  br label %107

103:                                              ; preds = %93
  %104 = load i32, i32* %4, align 4
  %105 = load %struct.kmx61_data*, %struct.kmx61_data** %8, align 8
  %106 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %103, %99
  br label %108

108:                                              ; preds = %107, %89
  br label %109

109:                                              ; preds = %108, %79, %54, %28
  %110 = load %struct.kmx61_data*, %struct.kmx61_data** %8, align 8
  %111 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %110, i32 0, i32 3
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger*) #1

declare dso_local %struct.kmx61_data* @kmx61_get_data(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kmx61_set_power_state(%struct.kmx61_data*, i32, i32) #1

declare dso_local i32 @kmx61_setup_new_data_interrupt(%struct.kmx61_data*, i32, i32) #1

declare dso_local i32 @kmx61_setup_any_motion_interrupt(%struct.kmx61_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
