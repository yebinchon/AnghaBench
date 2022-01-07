; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_check_lni_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_check_lni_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"transmitted\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"received\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_pportdata*)* @check_lni_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_lni_states(%struct.hfi1_pportdata* %0) #0 {
  %2 = alloca %struct.hfi1_pportdata*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %2, align 8
  %5 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %6 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @read_last_local_state(i32 %7, i64* %3)
  %9 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %10 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @read_last_remote_state(i32 %11, i64* %4)
  %13 = load i64, i64* %3, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %26

19:                                               ; preds = %15, %1
  %20 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @decode_state_complete(%struct.hfi1_pportdata* %20, i64 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @decode_state_complete(%struct.hfi1_pportdata* %23, i64 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @read_last_local_state(i32, i64*) #1

declare dso_local i32 @read_last_remote_state(i32, i64*) #1

declare dso_local i32 @decode_state_complete(%struct.hfi1_pportdata*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
