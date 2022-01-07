; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f12.c_rmi_f12_attention.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f12.c_rmi_f12_attention.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_function = type { i32, %struct.rmi_device* }
%struct.rmi_device = type { i32 }
%struct.rmi_driver_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.f12_data = type { i64, i64, i32, %struct.rmi_2d_sensor }
%struct.rmi_2d_sensor = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [39 x i8] c"Failed to read object data. Code: %d.\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rmi_f12_attention to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f12_attention(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rmi_function*, align 8
  %8 = alloca %struct.rmi_device*, align 8
  %9 = alloca %struct.rmi_driver_data*, align 8
  %10 = alloca %struct.f12_data*, align 8
  %11 = alloca %struct.rmi_2d_sensor*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.rmi_function*
  store %struct.rmi_function* %14, %struct.rmi_function** %7, align 8
  %15 = load %struct.rmi_function*, %struct.rmi_function** %7, align 8
  %16 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %15, i32 0, i32 1
  %17 = load %struct.rmi_device*, %struct.rmi_device** %16, align 8
  store %struct.rmi_device* %17, %struct.rmi_device** %8, align 8
  %18 = load %struct.rmi_device*, %struct.rmi_device** %8, align 8
  %19 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %18, i32 0, i32 0
  %20 = call i8* @dev_get_drvdata(i32* %19)
  %21 = bitcast i8* %20 to %struct.rmi_driver_data*
  store %struct.rmi_driver_data* %21, %struct.rmi_driver_data** %9, align 8
  %22 = load %struct.rmi_function*, %struct.rmi_function** %7, align 8
  %23 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %22, i32 0, i32 0
  %24 = call i8* @dev_get_drvdata(i32* %23)
  %25 = bitcast i8* %24 to %struct.f12_data*
  store %struct.f12_data* %25, %struct.f12_data** %10, align 8
  %26 = load %struct.f12_data*, %struct.f12_data** %10, align 8
  %27 = getelementptr inbounds %struct.f12_data, %struct.f12_data* %26, i32 0, i32 3
  store %struct.rmi_2d_sensor* %27, %struct.rmi_2d_sensor** %11, align 8
  %28 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %11, align 8
  %29 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %12, align 4
  %31 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %9, align 8
  %32 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %77

36:                                               ; preds = %2
  %37 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %11, align 8
  %38 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %9, align 8
  %41 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %39, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %9, align 8
  %47 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %12, align 4
  br label %54

50:                                               ; preds = %36
  %51 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %11, align 8
  %52 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %11, align 8
  %56 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %9, align 8
  %59 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @memcpy(i32* %57, i64 %61, i32 %62)
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %9, align 8
  %67 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, %65
  store i64 %70, i64* %68, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %9, align 8
  %73 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %75, %71
  store i32 %76, i32* %74, align 8
  br label %99

77:                                               ; preds = %2
  %78 = load %struct.rmi_device*, %struct.rmi_device** %8, align 8
  %79 = load %struct.f12_data*, %struct.f12_data** %10, align 8
  %80 = getelementptr inbounds %struct.f12_data, %struct.f12_data* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %11, align 8
  %83 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %11, align 8
  %86 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @rmi_read_block(%struct.rmi_device* %78, i32 %81, i32* %84, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %77
  %92 = load %struct.rmi_function*, %struct.rmi_function** %7, align 8
  %93 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %92, i32 0, i32 0
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @dev_err(i32* %93, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @IRQ_RETVAL(i32 %96)
  store i32 %97, i32* %3, align 4
  br label %121

98:                                               ; preds = %77
  br label %99

99:                                               ; preds = %98, %54
  %100 = load %struct.f12_data*, %struct.f12_data** %10, align 8
  %101 = getelementptr inbounds %struct.f12_data, %struct.f12_data* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %99
  %105 = load %struct.f12_data*, %struct.f12_data** %10, align 8
  %106 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %11, align 8
  %107 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.f12_data*, %struct.f12_data** %10, align 8
  %110 = getelementptr inbounds %struct.f12_data, %struct.f12_data* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @rmi_f12_process_objects(%struct.f12_data* %105, i32* %112, i32 %113)
  br label %115

115:                                              ; preds = %104, %99
  %116 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %11, align 8
  %117 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @input_mt_sync_frame(i32 %118)
  %120 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %115, %91
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i8* @dev_get_drvdata(i32*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @rmi_read_block(%struct.rmi_device*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

declare dso_local i32 @rmi_f12_process_objects(%struct.f12_data*, i32*, i32) #1

declare dso_local i32 @input_mt_sync_frame(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
