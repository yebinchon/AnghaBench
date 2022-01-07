; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_dmi_scan.c_dmi_first_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_dmi_scan.c_dmi_first_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_system_id = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dmi_system_id* @dmi_first_match(%struct.dmi_system_id* %0) #0 {
  %2 = alloca %struct.dmi_system_id*, align 8
  %3 = alloca %struct.dmi_system_id*, align 8
  %4 = alloca %struct.dmi_system_id*, align 8
  store %struct.dmi_system_id* %0, %struct.dmi_system_id** %3, align 8
  %5 = load %struct.dmi_system_id*, %struct.dmi_system_id** %3, align 8
  store %struct.dmi_system_id* %5, %struct.dmi_system_id** %4, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load %struct.dmi_system_id*, %struct.dmi_system_id** %4, align 8
  %8 = call i32 @dmi_is_end_of_table(%struct.dmi_system_id* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %21

11:                                               ; preds = %6
  %12 = load %struct.dmi_system_id*, %struct.dmi_system_id** %4, align 8
  %13 = call i64 @dmi_matches(%struct.dmi_system_id* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load %struct.dmi_system_id*, %struct.dmi_system_id** %4, align 8
  store %struct.dmi_system_id* %16, %struct.dmi_system_id** %2, align 8
  br label %22

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.dmi_system_id*, %struct.dmi_system_id** %4, align 8
  %20 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %19, i32 1
  store %struct.dmi_system_id* %20, %struct.dmi_system_id** %4, align 8
  br label %6

21:                                               ; preds = %6
  store %struct.dmi_system_id* null, %struct.dmi_system_id** %2, align 8
  br label %22

22:                                               ; preds = %21, %15
  %23 = load %struct.dmi_system_id*, %struct.dmi_system_id** %2, align 8
  ret %struct.dmi_system_id* %23
}

declare dso_local i32 @dmi_is_end_of_table(%struct.dmi_system_id*) #1

declare dso_local i64 @dmi_matches(%struct.dmi_system_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
