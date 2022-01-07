; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_process_messages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_process_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxt_data*)* @mxt_process_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_process_messages(%struct.mxt_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxt_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mxt_data* %0, %struct.mxt_data** %3, align 8
  %7 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %8 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %15 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %1
  store i32 1, i32* %6, align 4
  br label %19

19:                                               ; preds = %18, %12
  %20 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  %23 = call i32 @mxt_read_and_process_messages(%struct.mxt_data* %20, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %2, align 4
  br label %72

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %57

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %50, %34
  %36 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %37 = call i32 @mxt_read_and_process_messages(%struct.mxt_data* %36, i32 2)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @IRQ_NONE, align 4
  store i32 %41, i32* %2, align 4
  br label %72

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %56

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %53 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %35, label %56

56:                                               ; preds = %50, %48
  br label %57

57:                                               ; preds = %56, %32
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %60 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %62 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %67 = call i32 @mxt_input_sync(%struct.mxt_data* %66)
  %68 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %69 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %68, i32 0, i32 3
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %57
  %71 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %40, %26
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @mxt_read_and_process_messages(%struct.mxt_data*, i32) #1

declare dso_local i32 @mxt_input_sync(%struct.mxt_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
