; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_reset_cpu_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_reset_cpu_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, i32, i8*, i32, i8*, i32, i8* }
%struct.hfi1_pportdata = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*)* @hfi1_reset_cpu_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi1_reset_cpu_counters(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca %struct.hfi1_pportdata*, align 8
  %4 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %5 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %6 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = call i8* @get_all_cpu_total(i32 %7)
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %10 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %9, i32 0, i32 6
  store i8* %8, i8** %10, align 8
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %12 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @get_all_cpu_total(i32 %13)
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %16 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %15, i32 0, i32 4
  store i8* %14, i8** %16, align 8
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %18 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @get_all_cpu_total(i32 %19)
  %21 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %22 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %24 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %23, i64 1
  %25 = bitcast %struct.hfi1_devdata* %24 to %struct.hfi1_pportdata*
  store %struct.hfi1_pportdata* %25, %struct.hfi1_pportdata** %3, align 8
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %53, %1
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %29 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %26
  %33 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %34 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @get_all_cpu_total(i32 %37)
  %39 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %40 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  store i8* %38, i8** %42, align 8
  %43 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %44 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @get_all_cpu_total(i32 %47)
  %49 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %50 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i8* %48, i8** %52, align 8
  br label %53

53:                                               ; preds = %32
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  %56 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %57 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %56, i32 1
  store %struct.hfi1_pportdata* %57, %struct.hfi1_pportdata** %3, align 8
  br label %26

58:                                               ; preds = %26
  ret void
}

declare dso_local i8* @get_all_cpu_total(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
