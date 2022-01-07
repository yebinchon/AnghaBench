; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.cyapa_pip_report_data = type { i32* }

@.str = private unnamed_addr constant [44 x i8] c"invalid device state, gen=%d, state=0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PIP_RESP_LENGTH_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to read length bytes, (%d)\0A\00", align 1
@PIP_RESP_LENGTH_OFFSET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"invalid report_len=%d. bytes: %02x %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"failed to read %d bytes report data, (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cyapa_pip_irq_handler(%struct.cyapa* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cyapa*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.cyapa_pip_report_data, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %3, align 8
  %8 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %9 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %13 = call i32 @cyapa_is_pip_app_mode(%struct.cyapa* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %18 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %21 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %86

26:                                               ; preds = %1
  %27 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %28 = bitcast %struct.cyapa_pip_report_data* %5 to i32*
  %29 = load i32, i32* @PIP_RESP_LENGTH_SIZE, align 4
  %30 = call i32 @cyapa_i2c_pip_read(%struct.cyapa* %27, i32* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @PIP_RESP_LENGTH_SIZE, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %86

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.cyapa_pip_report_data, %struct.cyapa_pip_report_data* %5, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @PIP_RESP_LENGTH_OFFSET, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = call i32 @get_unaligned_le16(i32* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @PIP_RESP_LENGTH_SIZE, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %40
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = getelementptr inbounds %struct.cyapa_pip_report_data, %struct.cyapa_pip_report_data* %5, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.cyapa_pip_report_data, %struct.cyapa_pip_report_data* %5, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %55, i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %86

63:                                               ; preds = %40
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @PIP_RESP_LENGTH_SIZE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %86

68:                                               ; preds = %63
  %69 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %70 = bitcast %struct.cyapa_pip_report_data* %5 to i32*
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @cyapa_i2c_pip_read(%struct.cyapa* %69, i32* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %77, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %86

83:                                               ; preds = %68
  %84 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %85 = call i32 @cyapa_pip_event_process(%struct.cyapa* %84, %struct.cyapa_pip_report_data* %5)
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %83, %76, %67, %49, %34, %15
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @cyapa_is_pip_app_mode(%struct.cyapa*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @cyapa_i2c_pip_read(%struct.cyapa*, i32*, i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @cyapa_pip_event_process(%struct.cyapa*, %struct.cyapa_pip_report_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
