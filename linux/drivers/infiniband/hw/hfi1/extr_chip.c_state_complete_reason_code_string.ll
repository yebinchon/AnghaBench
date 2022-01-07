; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_state_complete_reason_code_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_state_complete_reason_code_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32 }

@state_complete_reasons = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hfi1_pportdata*, i64)* @state_complete_reason_code_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @state_complete_reason_code_string(%struct.hfi1_pportdata* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hfi1_pportdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i8**, i8*** @state_complete_reasons, align 8
  %9 = call i64 @ARRAY_SIZE(i8** %8)
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i8**, i8*** @state_complete_reasons, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  br label %16

16:                                               ; preds = %11, %2
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %3, align 8
  br label %22

21:                                               ; preds = %16
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %22

22:                                               ; preds = %21, %19
  %23 = load i8*, i8** %3, align 8
  ret i8* %23
}

declare dso_local i64 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
