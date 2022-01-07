; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_spi.c_ssp_get_chipid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_spi.c_ssp_get_chipid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_data = type { i32 }
%struct.ssp_msg = type { i32 }

@SSP_MSG2SSP_AP_WHOAMI = common dso_local global i32 0, align 4
@SSP_AP2HUB_READ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssp_get_chipid(%struct.ssp_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssp_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.ssp_msg*, align 8
  store %struct.ssp_data* %0, %struct.ssp_data** %3, align 8
  %7 = load i32, i32* @SSP_MSG2SSP_AP_WHOAMI, align 4
  %8 = load i32, i32* @SSP_AP2HUB_READ, align 4
  %9 = call %struct.ssp_msg* @ssp_create_msg(i32 %7, i32 1, i32 %8, i32 0)
  store %struct.ssp_msg* %9, %struct.ssp_msg** %6, align 8
  %10 = load %struct.ssp_msg*, %struct.ssp_msg** %6, align 8
  %11 = icmp ne %struct.ssp_msg* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %32

15:                                               ; preds = %1
  %16 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %17 = load %struct.ssp_msg*, %struct.ssp_msg** %6, align 8
  %18 = call i32 @ssp_spi_sync(%struct.ssp_data* %16, %struct.ssp_msg* %17, i32 1000)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.ssp_msg*, %struct.ssp_msg** %6, align 8
  %20 = call signext i8 @SSP_GET_BUFFER_AT_INDEX(%struct.ssp_msg* %19, i32 0)
  store i8 %20, i8* %5, align 1
  %21 = load %struct.ssp_msg*, %struct.ssp_msg** %6, align 8
  %22 = call i32 @ssp_clean_msg(%struct.ssp_msg* %21)
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  br label %30

27:                                               ; preds = %15
  %28 = load i8, i8* %5, align 1
  %29 = sext i8 %28 to i32
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi i32 [ %26, %25 ], [ %29, %27 ]
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %12
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.ssp_msg* @ssp_create_msg(i32, i32, i32, i32) #1

declare dso_local i32 @ssp_spi_sync(%struct.ssp_data*, %struct.ssp_msg*, i32) #1

declare dso_local signext i8 @SSP_GET_BUFFER_AT_INDEX(%struct.ssp_msg*, i32) #1

declare dso_local i32 @ssp_clean_msg(%struct.ssp_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
