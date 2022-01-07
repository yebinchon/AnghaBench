; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_proc_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_proc_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { i64, i64, i64, i64, i64, i64, i32, i32 }

@MXT_RPTID_NOMSG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxt_data*, i64*)* @mxt_proc_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_proc_message(%struct.mxt_data* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mxt_data*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.mxt_data* %0, %struct.mxt_data** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load i64*, i64** %5, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @MXT_RPTID_NOMSG, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %86

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %17 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %22 = load i64*, i64** %5, align 8
  %23 = call i32 @mxt_proc_t6_messages(%struct.mxt_data* %21, i64* %22)
  br label %85

24:                                               ; preds = %14
  %25 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %26 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %31 = load i64*, i64** %5, align 8
  %32 = call i32 @mxt_dump_message(%struct.mxt_data* %30, i64* %31)
  br label %84

33:                                               ; preds = %24
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %36 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %34, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %42 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp sle i64 %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %47 = load i64*, i64** %5, align 8
  %48 = call i32 @mxt_proc_t9_message(%struct.mxt_data* %46, i64* %47)
  br label %83

49:                                               ; preds = %39, %33
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %52 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %50, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %58 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp sle i64 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %63 = load i64*, i64** %5, align 8
  %64 = call i32 @mxt_proc_t100_message(%struct.mxt_data* %62, i64* %63)
  br label %82

65:                                               ; preds = %55, %49
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %68 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %73 = load i64*, i64** %5, align 8
  %74 = call i32 @mxt_input_button(%struct.mxt_data* %72, i64* %73)
  %75 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %76 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %75, i32 0, i32 6
  store i32 1, i32* %76, align 8
  br label %81

77:                                               ; preds = %65
  %78 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %79 = load i64*, i64** %5, align 8
  %80 = call i32 @mxt_dump_message(%struct.mxt_data* %78, i64* %79)
  br label %81

81:                                               ; preds = %77, %71
  br label %82

82:                                               ; preds = %81, %61
  br label %83

83:                                               ; preds = %82, %45
  br label %84

84:                                               ; preds = %83, %29
  br label %85

85:                                               ; preds = %84, %20
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %13
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @mxt_proc_t6_messages(%struct.mxt_data*, i64*) #1

declare dso_local i32 @mxt_dump_message(%struct.mxt_data*, i64*) #1

declare dso_local i32 @mxt_proc_t9_message(%struct.mxt_data*, i64*) #1

declare dso_local i32 @mxt_proc_t100_message(%struct.mxt_data*, i64*) #1

declare dso_local i32 @mxt_input_button(%struct.mxt_data*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
