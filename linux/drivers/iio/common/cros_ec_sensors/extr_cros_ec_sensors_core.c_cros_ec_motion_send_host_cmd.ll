; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/cros_ec_sensors/extr_cros_ec_sensors_core.c_cros_ec_motion_send_host_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/cros_ec_sensors/extr_cros_ec_sensors_core.c_cros_ec_motion_send_host_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_sensors_core_state = type { %struct.TYPE_4__*, %struct.ec_response_motion_sense*, %struct.TYPE_3__*, %struct.ec_response_motion_sense }
%struct.TYPE_4__ = type { %struct.ec_response_motion_sense*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ec_response_motion_sense = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cros_ec_motion_send_host_cmd(%struct.cros_ec_sensors_core_state* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cros_ec_sensors_core_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.cros_ec_sensors_core_state* %0, %struct.cros_ec_sensors_core_state** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %4, align 8
  %12 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @min(i64 %10, i32 %15)
  %17 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %4, align 8
  %18 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %16, i32* %20, align 8
  br label %31

21:                                               ; preds = %2
  %22 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %4, align 8
  %23 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %4, align 8
  %28 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 8
  br label %31

31:                                               ; preds = %21, %9
  %32 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %4, align 8
  %33 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.ec_response_motion_sense*, %struct.ec_response_motion_sense** %35, align 8
  %37 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %4, align 8
  %38 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %37, i32 0, i32 3
  %39 = call i32 @memcpy(%struct.ec_response_motion_sense* %36, %struct.ec_response_motion_sense* %38, i32 4)
  %40 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %4, align 8
  %41 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %4, align 8
  %44 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = call i32 @cros_ec_cmd_xfer_status(%struct.TYPE_3__* %42, %struct.TYPE_4__* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %31
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %76

51:                                               ; preds = %31
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %51
  %55 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %4, align 8
  %56 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %55, i32 0, i32 1
  %57 = load %struct.ec_response_motion_sense*, %struct.ec_response_motion_sense** %56, align 8
  %58 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %4, align 8
  %59 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.ec_response_motion_sense*, %struct.ec_response_motion_sense** %61, align 8
  %63 = icmp ne %struct.ec_response_motion_sense* %57, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %54
  %65 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %4, align 8
  %66 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %65, i32 0, i32 1
  %67 = load %struct.ec_response_motion_sense*, %struct.ec_response_motion_sense** %66, align 8
  %68 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %4, align 8
  %69 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.ec_response_motion_sense*, %struct.ec_response_motion_sense** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @memcpy(%struct.ec_response_motion_sense* %67, %struct.ec_response_motion_sense* %72, i32 %73)
  br label %75

75:                                               ; preds = %64, %54, %51
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %49
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @memcpy(%struct.ec_response_motion_sense*, %struct.ec_response_motion_sense*, i32) #1

declare dso_local i32 @cros_ec_cmd_xfer_status(%struct.TYPE_3__*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
