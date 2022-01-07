; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_spi.c_ssp_set_magnetic_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_spi.c_ssp_set_magnetic_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ssp_msg = type { i32 }

@SSP_MSG2SSP_AP_SET_MAGNETIC_STATIC_MATRIX = common dso_local global i32 0, align 4
@SSP_AP2HUB_WRITE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssp_set_magnetic_matrix(%struct.ssp_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssp_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssp_msg*, align 8
  store %struct.ssp_data* %0, %struct.ssp_data** %3, align 8
  %6 = load i32, i32* @SSP_MSG2SSP_AP_SET_MAGNETIC_STATIC_MATRIX, align 4
  %7 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %8 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SSP_AP2HUB_WRITE, align 4
  %13 = call %struct.ssp_msg* @ssp_create_msg(i32 %6, i32 %11, i32 %12, i32 0)
  store %struct.ssp_msg* %13, %struct.ssp_msg** %5, align 8
  %14 = load %struct.ssp_msg*, %struct.ssp_msg** %5, align 8
  %15 = icmp ne %struct.ssp_msg* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %38

19:                                               ; preds = %1
  %20 = load %struct.ssp_msg*, %struct.ssp_msg** %5, align 8
  %21 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %22 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %27 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ssp_fill_buffer(%struct.ssp_msg* %20, i32 0, i32 %25, i32 %30)
  %32 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %33 = load %struct.ssp_msg*, %struct.ssp_msg** %5, align 8
  %34 = call i32 @ssp_spi_sync(%struct.ssp_data* %32, %struct.ssp_msg* %33, i32 1000)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.ssp_msg*, %struct.ssp_msg** %5, align 8
  %36 = call i32 @ssp_clean_msg(%struct.ssp_msg* %35)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %19, %16
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.ssp_msg* @ssp_create_msg(i32, i32, i32, i32) #1

declare dso_local i32 @ssp_fill_buffer(%struct.ssp_msg*, i32, i32, i32) #1

declare dso_local i32 @ssp_spi_sync(%struct.ssp_data*, %struct.ssp_msg*, i32) #1

declare dso_local i32 @ssp_clean_msg(%struct.ssp_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
