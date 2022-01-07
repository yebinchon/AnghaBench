; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_process_messages_t44.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_process_messages_t44.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { i64*, i64, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Failed to read T44 and T5 (%d)\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"T44 count %d exceeded max report id\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Unexpected invalid message\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxt_data*)* @mxt_process_messages_t44 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_process_messages_t44(%struct.mxt_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxt_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mxt_data* %0, %struct.mxt_data** %3, align 8
  %8 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %9 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %8, i32 0, i32 5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %13 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %12, i32 0, i32 5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %16 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %19 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %23 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = call i32 @__mxt_read_reg(%struct.TYPE_2__* %14, i32 %17, i64 %21, i64* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @IRQ_NONE, align 4
  store i32 %32, i32* %2, align 4
  br label %104

33:                                               ; preds = %1
  %34 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %35 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @IRQ_NONE, align 4
  store i32 %42, i32* %2, align 4
  br label %104

43:                                               ; preds = %33
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %46 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %54 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %49, %43
  %57 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %58 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %59 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = call i32 @mxt_proc_message(%struct.mxt_data* %57, i64* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @IRQ_NONE, align 4
  store i32 %68, i32* %2, align 4
  br label %104

69:                                               ; preds = %56
  %70 = load i64, i64* %6, align 8
  %71 = sub nsw i64 %70, 1
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %69
  %75 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @mxt_read_and_process_messages(%struct.mxt_data* %75, i64 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %92

81:                                               ; preds = %74
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %7, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %81
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90, %69
  br label %92

92:                                               ; preds = %91, %80
  %93 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %94 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %99 = call i32 @mxt_input_sync(%struct.mxt_data* %98)
  %100 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %101 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %100, i32 0, i32 2
  store i32 0, i32* %101, align 8
  br label %102

102:                                              ; preds = %97, %92
  %103 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %65, %41, %28
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @__mxt_read_reg(%struct.TYPE_2__*, i32, i64, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @mxt_proc_message(%struct.mxt_data*, i64*) #1

declare dso_local i32 @mxt_read_and_process_messages(%struct.mxt_data*, i64) #1

declare dso_local i32 @mxt_input_sync(%struct.mxt_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
