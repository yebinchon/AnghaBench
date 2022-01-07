; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_data_rdy_trigger_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_data_rdy_trigger_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32 }
%struct.iio_dev = type { i32 }
%struct.bmg160_data = type { i32, i32, i32, %struct.iio_trigger*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_trigger*, i32)* @bmg160_data_rdy_trigger_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmg160_data_rdy_trigger_set_state(%struct.iio_trigger* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_trigger*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.bmg160_data*, align 8
  %8 = alloca i32, align 4
  store %struct.iio_trigger* %0, %struct.iio_trigger** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %10 = call %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger* %9)
  store %struct.iio_dev* %10, %struct.iio_dev** %6, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %12 = call %struct.bmg160_data* @iio_priv(%struct.iio_dev* %11)
  store %struct.bmg160_data* %12, %struct.bmg160_data** %7, align 8
  %13 = load %struct.bmg160_data*, %struct.bmg160_data** %7, align 8
  %14 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %13, i32 0, i32 2
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %2
  %19 = load %struct.bmg160_data*, %struct.bmg160_data** %7, align 8
  %20 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.bmg160_data*, %struct.bmg160_data** %7, align 8
  %25 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.bmg160_data*, %struct.bmg160_data** %7, align 8
  %30 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.bmg160_data*, %struct.bmg160_data** %7, align 8
  %32 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %31, i32 0, i32 2
  %33 = call i32 @mutex_unlock(i32* %32)
  store i32 0, i32* %3, align 4
  br label %87

34:                                               ; preds = %23, %18, %2
  %35 = load %struct.bmg160_data*, %struct.bmg160_data** %7, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @bmg160_set_power_state(%struct.bmg160_data* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.bmg160_data*, %struct.bmg160_data** %7, align 8
  %42 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %41, i32 0, i32 2
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %87

45:                                               ; preds = %34
  %46 = load %struct.bmg160_data*, %struct.bmg160_data** %7, align 8
  %47 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %46, i32 0, i32 3
  %48 = load %struct.iio_trigger*, %struct.iio_trigger** %47, align 8
  %49 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %50 = icmp eq %struct.iio_trigger* %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.bmg160_data*, %struct.bmg160_data** %7, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @bmg160_setup_any_motion_interrupt(%struct.bmg160_data* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  br label %59

55:                                               ; preds = %45
  %56 = load %struct.bmg160_data*, %struct.bmg160_data** %7, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @bmg160_setup_new_data_interrupt(%struct.bmg160_data* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.bmg160_data*, %struct.bmg160_data** %7, align 8
  %64 = call i32 @bmg160_set_power_state(%struct.bmg160_data* %63, i32 0)
  %65 = load %struct.bmg160_data*, %struct.bmg160_data** %7, align 8
  %66 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %65, i32 0, i32 2
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %87

69:                                               ; preds = %59
  %70 = load %struct.bmg160_data*, %struct.bmg160_data** %7, align 8
  %71 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %70, i32 0, i32 3
  %72 = load %struct.iio_trigger*, %struct.iio_trigger** %71, align 8
  %73 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %74 = icmp eq %struct.iio_trigger* %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.bmg160_data*, %struct.bmg160_data** %7, align 8
  %78 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  br label %83

79:                                               ; preds = %69
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.bmg160_data*, %struct.bmg160_data** %7, align 8
  %82 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %75
  %84 = load %struct.bmg160_data*, %struct.bmg160_data** %7, align 8
  %85 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %84, i32 0, i32 2
  %86 = call i32 @mutex_unlock(i32* %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %62, %40, %28
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger*) #1

declare dso_local %struct.bmg160_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bmg160_set_power_state(%struct.bmg160_data*, i32) #1

declare dso_local i32 @bmg160_setup_any_motion_interrupt(%struct.bmg160_data*, i32) #1

declare dso_local i32 @bmg160_setup_new_data_interrupt(%struct.bmg160_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
