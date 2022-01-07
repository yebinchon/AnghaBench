; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_read_and_process_messages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_read_and_process_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to read %u messages (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxt_data*, i32)* @mxt_read_and_process_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_read_and_process_messages(%struct.mxt_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mxt_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mxt_data* %0, %struct.mxt_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %11 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %16 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %75

22:                                               ; preds = %2
  %23 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %24 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %23, i32 0, i32 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %27 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %30 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %35 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @__mxt_read_reg(%struct.TYPE_2__* %25, i32 %28, i32 %33, i64 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %22
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %75

46:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %70, %46
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %53 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %54 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %57 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = mul nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %55, %61
  %63 = call i32 @mxt_proc_message(%struct.mxt_data* %52, i64 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %51
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %66, %51
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %47

73:                                               ; preds = %47
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %40, %19
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @__mxt_read_reg(%struct.TYPE_2__*, i32, i32, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @mxt_proc_message(%struct.mxt_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
