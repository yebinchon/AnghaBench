; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_hfi1_free_ctxtdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_hfi1_free_ctxtdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.hfi1_ctxtdata = type { i8*, %struct.TYPE_6__*, i32*, i32*, i32*, i32*, %struct.TYPE_5__, i32*, i64, i64 }
%struct.TYPE_6__ = type { i8*, i64, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__*, %struct.TYPE_6__* }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_free_ctxtdata(%struct.hfi1_devdata* %0, %struct.hfi1_ctxtdata* %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca %struct.hfi1_ctxtdata*, align 8
  %5 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store %struct.hfi1_ctxtdata* %1, %struct.hfi1_ctxtdata** %4, align 8
  %6 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %7 = icmp ne %struct.hfi1_ctxtdata* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %153

9:                                                ; preds = %2
  %10 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %11 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %51

14:                                               ; preds = %9
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %16 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %20 = call i32 @rcvhdrq_size(%struct.hfi1_ctxtdata* %19)
  %21 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %22 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %25 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %24, i32 0, i32 9
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @dma_free_coherent(i32* %18, i32 %20, i8* %23, i64 %26)
  %28 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %29 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %28, i32 0, i32 0
  store i8* null, i8** %29, align 8
  %30 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %31 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %30, i32 0, i32 7
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %14
  %35 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %36 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %41 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %40, i32 0, i32 7
  %42 = load i32*, i32** %41, align 8
  %43 = bitcast i32* %42 to i8*
  %44 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %45 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %44, i32 0, i32 8
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dma_free_coherent(i32* %38, i32 %39, i8* %43, i64 %46)
  %48 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %49 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %48, i32 0, i32 7
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %34, %14
  br label %51

51:                                               ; preds = %50, %9
  %52 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %53 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = call i32 @kfree(%struct.TYPE_6__* %55)
  %57 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %58 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %59, align 8
  store i64 0, i64* %5, align 8
  br label %60

60:                                               ; preds = %108, %51
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %63 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ult i64 %61, %65
  br i1 %66, label %67, label %111

67:                                               ; preds = %60
  %68 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %69 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i64, i64* %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %107

77:                                               ; preds = %67
  %78 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %79 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %83 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i64, i64* %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %91 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load i64, i64* %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %99 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load i64, i64* %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @dma_free_coherent(i32* %81, i32 %89, i8* %97, i64 %105)
  br label %107

107:                                              ; preds = %77, %67
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %5, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %5, align 8
  br label %60

111:                                              ; preds = %60
  %112 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %113 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %112, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = call i32 @kfree(%struct.TYPE_6__* %115)
  %117 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %118 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %117, i32 0, i32 6
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  store i64 0, i64* %119, align 8
  %120 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %121 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %122, align 8
  %123 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %124 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %123, i32 0, i32 5
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @sc_free(i32* %125)
  %127 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %128 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %127, i32 0, i32 5
  store i32* null, i32** %128, align 8
  %129 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %130 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @vfree(i32* %131)
  %133 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %134 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @vfree(i32* %135)
  %137 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %138 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @vfree(i32* %139)
  %141 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %142 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %141, i32 0, i32 1
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = call i32 @kfree(%struct.TYPE_6__* %143)
  %145 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %146 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %145, i32 0, i32 4
  store i32* null, i32** %146, align 8
  %147 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %148 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %147, i32 0, i32 3
  store i32* null, i32** %148, align 8
  %149 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %150 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %149, i32 0, i32 2
  store i32* null, i32** %150, align 8
  %151 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %152 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %151, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %152, align 8
  br label %153

153:                                              ; preds = %111, %8
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i64) #1

declare dso_local i32 @rcvhdrq_size(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @sc_free(i32*) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
