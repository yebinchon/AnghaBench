; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f54.c_is_f54_report_type_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f54.c_is_f54_report_type_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f54_data = type { i32 }

@F54_CAP_IMAGE8 = common dso_local global i32 0, align 4
@F54_CAP_IMAGE16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f54_data*, i32)* @is_f54_report_type_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_f54_report_type_valid(%struct.f54_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f54_data*, align 8
  %5 = alloca i32, align 4
  store %struct.f54_data* %0, %struct.f54_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %26 [
    i32 132, label %7
    i32 133, label %13
    i32 129, label %13
    i32 128, label %19
    i32 131, label %25
    i32 130, label %25
  ]

7:                                                ; preds = %2
  %8 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %9 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @F54_CAP_IMAGE8, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %3, align 4
  br label %27

13:                                               ; preds = %2, %2
  %14 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %15 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @F54_CAP_IMAGE16, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %3, align 4
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %21 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @F54_CAP_IMAGE16, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %3, align 4
  br label %27

25:                                               ; preds = %2, %2
  store i32 1, i32* %3, align 4
  br label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %25, %19, %13, %7
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
