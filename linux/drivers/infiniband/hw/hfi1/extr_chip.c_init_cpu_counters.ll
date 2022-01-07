; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_init_cpu_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_init_cpu_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.hfi1_pportdata = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i8*, i32* }

@u64 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*)* @init_cpu_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_cpu_counters(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca %struct.hfi1_pportdata*, align 8
  %5 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  %6 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %7 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %6, i64 1
  %8 = bitcast %struct.hfi1_devdata* %7 to %struct.hfi1_pportdata*
  store %struct.hfi1_pportdata* %8, %struct.hfi1_pportdata** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %68, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %12 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %73

15:                                               ; preds = %9
  %16 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %17 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %21 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load i32, i32* @u64, align 4
  %25 = call i8* @alloc_percpu(i32 %24)
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %28 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i32* %26, i32** %30, align 8
  %31 = load i32, i32* @u64, align 4
  %32 = call i8* @alloc_percpu(i32 %31)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %35 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32* %33, i32** %37, align 8
  %38 = load i32, i32* @u64, align 4
  %39 = call i8* @alloc_percpu(i32 %38)
  %40 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %41 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i8* %39, i8** %43, align 8
  %44 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %45 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %64

50:                                               ; preds = %15
  %51 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %52 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %59 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %57, %50, %15
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %74

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  %71 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %72 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %71, i32 1
  store %struct.hfi1_pportdata* %72, %struct.hfi1_pportdata** %4, align 8
  br label %9

73:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %64
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i8* @alloc_percpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
