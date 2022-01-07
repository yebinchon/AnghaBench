; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_dev.c_ssp_change_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_dev.c_ssp_change_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_data = type { i32*, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.ssp_instruction = type { i32, i8*, i8* }

@SSP_MSG2SSP_INST_CHANGE_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Changing sensor delay failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssp_change_delay(%struct.ssp_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssp_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ssp_instruction, align 8
  store %struct.ssp_data* %0, %struct.ssp_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i8* @cpu_to_le32(i32 %10)
  %12 = getelementptr inbounds %struct.ssp_instruction, %struct.ssp_instruction* %9, i32 0, i32 2
  store i8* %11, i8** %12, align 8
  %13 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %14 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @cpu_to_le32(i32 %19)
  %21 = getelementptr inbounds %struct.ssp_instruction, %struct.ssp_instruction* %9, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %23 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.ssp_instruction, %struct.ssp_instruction* %9, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %31 = load i32, i32* @SSP_MSG2SSP_INST_CHANGE_DELAY, align 4
  %32 = load i32, i32* %6, align 4
  %33 = bitcast %struct.ssp_instruction* %9 to i32*
  %34 = call i32 @ssp_send_instruction(%struct.ssp_data* %30, i32 %31, i32 %32, i32* %33, i32 24)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %3
  %38 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %39 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %52

44:                                               ; preds = %3
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %47 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %44, %37
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ssp_send_instruction(%struct.ssp_data*, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
