; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_dev.c_ssp_check_fwbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_dev.c_ssp_check_fwbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_data = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@SSP_INVALID_REVISION = common dso_local global i64 0, align 8
@SSP_INVALID_REVISION2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Invalid revision, trying %d time\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"SSP_INVALID_REVISION\0A\00", align 1
@SSP_FW_DL_STATE_NEED_TO_SCHEDULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"MCU Firm Rev : Old = %8u, New = %8u\0A\00", align 1
@SSP_FW_DL_STATE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssp_data*)* @ssp_check_fwbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssp_check_fwbl(%struct.ssp_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssp_data*, align 8
  %4 = alloca i32, align 4
  store %struct.ssp_data* %0, %struct.ssp_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %33, %1
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %4, align 4
  %8 = icmp slt i32 %6, 5
  br i1 %8, label %9, label %34

9:                                                ; preds = %5
  %10 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %11 = call i64 @ssp_get_firmware_rev(%struct.ssp_data* %10)
  %12 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %13 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %15 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SSP_INVALID_REVISION, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %9
  %20 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %21 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SSP_INVALID_REVISION2, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19, %9
  %26 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %27 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dev_warn(i32* %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %33

32:                                               ; preds = %19
  br label %34

33:                                               ; preds = %25
  br label %5

34:                                               ; preds = %32, %5
  %35 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %36 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SSP_INVALID_REVISION, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %42 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SSP_INVALID_REVISION2, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40, %34
  %47 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %48 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @SSP_FW_DL_STATE_NEED_TO_SCHEDULE, align 4
  store i32 %52, i32* %2, align 4
  br label %80

53:                                               ; preds = %40
  %54 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %55 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %59 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %62 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @dev_info(i32* %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %60, i64 %65)
  %67 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %68 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %71 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %69, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %53
  %77 = load i32, i32* @SSP_FW_DL_STATE_NEED_TO_SCHEDULE, align 4
  store i32 %77, i32* %2, align 4
  br label %80

78:                                               ; preds = %53
  %79 = load i32, i32* @SSP_FW_DL_STATE_NONE, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %76, %46
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @ssp_get_firmware_rev(%struct.ssp_data*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
