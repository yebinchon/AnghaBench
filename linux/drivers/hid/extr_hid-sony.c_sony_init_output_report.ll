; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_init_output_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_init_output_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sony_sc = type { void (%struct.sony_sc*)*, i32, i32 }

@sony_state_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sony_sc*, void (%struct.sony_sc*)*)* @sony_init_output_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sony_init_output_report(%struct.sony_sc* %0, void (%struct.sony_sc*)* %1) #0 {
  %3 = alloca %struct.sony_sc*, align 8
  %4 = alloca void (%struct.sony_sc*)*, align 8
  store %struct.sony_sc* %0, %struct.sony_sc** %3, align 8
  store void (%struct.sony_sc*)* %1, void (%struct.sony_sc*)** %4, align 8
  %5 = load void (%struct.sony_sc*)*, void (%struct.sony_sc*)** %4, align 8
  %6 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %7 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %6, i32 0, i32 0
  store void (%struct.sony_sc*)* %5, void (%struct.sony_sc*)** %7, align 8
  %8 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %9 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %14 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %13, i32 0, i32 2
  %15 = load i32, i32* @sony_state_worker, align 4
  %16 = call i32 @INIT_WORK(i32* %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %19 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %18, i32 0, i32 1
  store i32 1, i32* %19, align 8
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
