; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/xilinx/extr_zynqmp.c_zynqmp_pm_query_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/xilinx/extr_zynqmp.c_zynqmp_pm_query_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynqmp_pm_query_data = type { i64, i32, i32, i32 }

@PM_QUERY_DATA = common dso_local global i32 0, align 4
@PM_QID_CLOCK_GET_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zynqmp_pm_query_data*, i32*)* @zynqmp_pm_query_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_pm_query_data(%struct.zynqmp_pm_query_data* byval(%struct.zynqmp_pm_query_data) align 8 %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %1, i32** %3, align 8
  %5 = load i32, i32* @PM_QUERY_DATA, align 4
  %6 = getelementptr inbounds %struct.zynqmp_pm_query_data, %struct.zynqmp_pm_query_data* %0, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.zynqmp_pm_query_data, %struct.zynqmp_pm_query_data* %0, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds %struct.zynqmp_pm_query_data, %struct.zynqmp_pm_query_data* %0, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.zynqmp_pm_query_data, %struct.zynqmp_pm_query_data* %0, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @zynqmp_pm_invoke_fn(i32 %5, i64 %7, i32 %9, i32 %11, i32 %13, i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = getelementptr inbounds %struct.zynqmp_pm_query_data, %struct.zynqmp_pm_query_data* %0, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PM_QID_CLOCK_GET_NAME, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i32 [ 0, %20 ], [ %22, %21 ]
  ret i32 %24
}

declare dso_local i32 @zynqmp_pm_invoke_fn(i32, i64, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
