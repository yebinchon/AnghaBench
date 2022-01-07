; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_free_cntrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_free_cntrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.hfi1_pportdata = type { %struct.TYPE_5__, i32*, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*)* @free_cntrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_cntrs(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca %struct.hfi1_pportdata*, align 8
  %4 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %5 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %6 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %5, i32 0, i32 6
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %12 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %11, i32 0, i32 6
  %13 = call i32 @del_timer_sync(%struct.TYPE_6__* %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %16 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %15, i64 1
  %17 = bitcast %struct.hfi1_devdata* %16 to %struct.hfi1_pportdata*
  store %struct.hfi1_pportdata* %17, %struct.hfi1_pportdata** %3, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %67, %14
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %21 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %18
  %25 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %26 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @kfree(i32* %27)
  %29 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %30 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kfree(i32* %31)
  %33 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %34 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @free_percpu(i32* %37)
  %39 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %40 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @free_percpu(i32* %43)
  %45 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %46 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @free_percpu(i32* %49)
  %51 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %52 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %51, i32 0, i32 2
  store i32* null, i32** %52, align 8
  %53 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %54 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %56 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  store i32* null, i32** %58, align 8
  %59 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %60 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  %63 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %64 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %24
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  %70 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %71 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %70, i32 1
  store %struct.hfi1_pportdata* %71, %struct.hfi1_pportdata** %3, align 8
  br label %18

72:                                               ; preds = %18
  %73 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %74 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %73, i32 0, i32 5
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @kfree(i32* %75)
  %77 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %78 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %77, i32 0, i32 5
  store i32* null, i32** %78, align 8
  %79 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %80 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @kfree(i32* %81)
  %83 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %84 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %83, i32 0, i32 4
  store i32* null, i32** %84, align 8
  %85 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %86 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @kfree(i32* %87)
  %89 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %90 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %89, i32 0, i32 3
  store i32* null, i32** %90, align 8
  %91 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %92 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @kfree(i32* %93)
  %95 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %96 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %95, i32 0, i32 2
  store i32* null, i32** %96, align 8
  %97 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %98 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %72
  %102 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %103 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @destroy_workqueue(i32* %104)
  %106 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %107 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %106, i32 0, i32 1
  store i32* null, i32** %107, align 8
  br label %108

108:                                              ; preds = %101, %72
  ret void
}

declare dso_local i32 @del_timer_sync(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @free_percpu(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
