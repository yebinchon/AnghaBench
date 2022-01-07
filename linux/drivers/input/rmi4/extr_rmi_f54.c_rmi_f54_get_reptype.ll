; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f54.c_rmi_f54_get_reptype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f54.c_rmi_f54_get_reptype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f54_data = type { i32* }

@F54_MAX_REPORT_TYPE = common dso_local global i32 0, align 4
@F54_REPORT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f54_data*, i32)* @rmi_f54_get_reptype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f54_get_reptype(%struct.f54_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f54_data*, align 8
  %5 = alloca i32, align 4
  store %struct.f54_data* %0, %struct.f54_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @F54_MAX_REPORT_TYPE, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @F54_REPORT_NONE, align 4
  store i32 %10, i32* %3, align 4
  br label %19

11:                                               ; preds = %2
  %12 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %13 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %11, %9
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
