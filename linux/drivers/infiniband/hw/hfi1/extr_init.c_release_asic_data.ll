; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_release_asic_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_release_asic_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_asic_data = type { i32** }
%struct.hfi1_devdata = type { i64, %struct.hfi1_asic_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hfi1_asic_data* (%struct.hfi1_devdata*)* @release_asic_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hfi1_asic_data* @release_asic_data(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_asic_data*, align 8
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca %struct.hfi1_asic_data*, align 8
  %5 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  %6 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %7 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %6, i32 0, i32 1
  %8 = load %struct.hfi1_asic_data*, %struct.hfi1_asic_data** %7, align 8
  %9 = icmp ne %struct.hfi1_asic_data* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.hfi1_asic_data* null, %struct.hfi1_asic_data** %2, align 8
  br label %45

11:                                               ; preds = %1
  %12 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %13 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %12, i32 0, i32 1
  %14 = load %struct.hfi1_asic_data*, %struct.hfi1_asic_data** %13, align 8
  %15 = getelementptr inbounds %struct.hfi1_asic_data, %struct.hfi1_asic_data* %14, i32 0, i32 0
  %16 = load i32**, i32*** %15, align 8
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %18 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32*, i32** %16, i64 %19
  store i32* null, i32** %20, align 8
  %21 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %22 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 1
  store i32 %26, i32* %5, align 4
  %27 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %28 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %27, i32 0, i32 1
  %29 = load %struct.hfi1_asic_data*, %struct.hfi1_asic_data** %28, align 8
  store %struct.hfi1_asic_data* %29, %struct.hfi1_asic_data** %4, align 8
  %30 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %31 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %30, i32 0, i32 1
  store %struct.hfi1_asic_data* null, %struct.hfi1_asic_data** %31, align 8
  %32 = load %struct.hfi1_asic_data*, %struct.hfi1_asic_data** %4, align 8
  %33 = getelementptr inbounds %struct.hfi1_asic_data, %struct.hfi1_asic_data* %32, i32 0, i32 0
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %11
  br label %43

41:                                               ; preds = %11
  %42 = load %struct.hfi1_asic_data*, %struct.hfi1_asic_data** %4, align 8
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi %struct.hfi1_asic_data* [ null, %40 ], [ %42, %41 ]
  store %struct.hfi1_asic_data* %44, %struct.hfi1_asic_data** %2, align 8
  br label %45

45:                                               ; preds = %43, %10
  %46 = load %struct.hfi1_asic_data*, %struct.hfi1_asic_data** %2, align 8
  ret %struct.hfi1_asic_data* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
