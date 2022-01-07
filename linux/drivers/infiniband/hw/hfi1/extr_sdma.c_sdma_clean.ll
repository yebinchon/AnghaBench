; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, %struct.sdma_engine*, %struct.sdma_engine*, i32, i32, %struct.TYPE_2__*, i64, i32*, i64, i32* }
%struct.sdma_engine = type { i8*, i32, i32*, i64, i64, i32* }
%struct.TYPE_2__ = type { i32 }

@SDMA_PAD = common dso_local global i32 0, align 4
@sdma_rht_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdma_clean(%struct.hfi1_devdata* %0, i64 %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sdma_engine*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %8 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %7, i32 0, i32 9
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %13 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %12, i32 0, i32 5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* @SDMA_PAD, align 4
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %18 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %17, i32 0, i32 9
  %19 = load i32*, i32** %18, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %22 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @dma_free_coherent(i32* %15, i32 %16, i8* %20, i64 %23)
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %26 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %25, i32 0, i32 9
  store i32* null, i32** %26, align 8
  %27 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %28 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %27, i32 0, i32 8
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %11, %2
  %30 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %31 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %30, i32 0, i32 7
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %36 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %35, i32 0, i32 5
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %40 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %43 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %42, i32 0, i32 7
  %44 = load i32*, i32** %43, align 8
  %45 = bitcast i32* %44 to i8*
  %46 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %47 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @dma_free_coherent(i32* %38, i32 %41, i8* %45, i64 %48)
  %50 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %51 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %50, i32 0, i32 7
  store i32* null, i32** %51, align 8
  %52 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %53 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %52, i32 0, i32 6
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %34, %29
  store i64 0, i64* %5, align 8
  br label %55

55:                                               ; preds = %109, %54
  %56 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %57 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %56, i32 0, i32 2
  %58 = load %struct.sdma_engine*, %struct.sdma_engine** %57, align 8
  %59 = icmp ne %struct.sdma_engine* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %4, align 8
  %63 = icmp ult i64 %61, %62
  br label %64

64:                                               ; preds = %60, %55
  %65 = phi i1 [ false, %55 ], [ %63, %60 ]
  br i1 %65, label %66, label %112

66:                                               ; preds = %64
  %67 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %68 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %67, i32 0, i32 2
  %69 = load %struct.sdma_engine*, %struct.sdma_engine** %68, align 8
  %70 = load i64, i64* %5, align 8
  %71 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %69, i64 %70
  store %struct.sdma_engine* %71, %struct.sdma_engine** %6, align 8
  %72 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %73 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %72, i32 0, i32 5
  store i32* null, i32** %73, align 8
  %74 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %75 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %74, i32 0, i32 4
  store i64 0, i64* %75, align 8
  %76 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %77 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %102

80:                                               ; preds = %66
  %81 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %82 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %81, i32 0, i32 5
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %86 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 8
  %90 = trunc i64 %89 to i32
  %91 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %92 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %95 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @dma_free_coherent(i32* %84, i32 %90, i8* %93, i64 %96)
  %98 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %99 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %98, i32 0, i32 0
  store i8* null, i8** %99, align 8
  %100 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %101 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %100, i32 0, i32 3
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %80, %66
  %103 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %104 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @kvfree(i32* %105)
  %107 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %108 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %107, i32 0, i32 2
  store i32* null, i32** %108, align 8
  br label %109

109:                                              ; preds = %102
  %110 = load i64, i64* %5, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %5, align 8
  br label %55

112:                                              ; preds = %64
  %113 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %114 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %113, i32 0, i32 3
  %115 = call i32 @spin_lock_irq(i32* %114)
  %116 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %117 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @rcu_access_pointer(i32 %118)
  %120 = call i32 @sdma_map_free(i32 %119)
  %121 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %122 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @RCU_INIT_POINTER(i32 %123, i32* null)
  %125 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %126 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %125, i32 0, i32 3
  %127 = call i32 @spin_unlock_irq(i32* %126)
  %128 = call i32 (...) @synchronize_rcu()
  %129 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %130 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %129, i32 0, i32 2
  %131 = load %struct.sdma_engine*, %struct.sdma_engine** %130, align 8
  %132 = call i32 @kfree(%struct.sdma_engine* %131)
  %133 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %134 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %133, i32 0, i32 2
  store %struct.sdma_engine* null, %struct.sdma_engine** %134, align 8
  %135 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %136 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %135, i32 0, i32 1
  %137 = load %struct.sdma_engine*, %struct.sdma_engine** %136, align 8
  %138 = icmp ne %struct.sdma_engine* %137, null
  br i1 %138, label %139, label %151

139:                                              ; preds = %112
  %140 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %141 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %140, i32 0, i32 1
  %142 = load %struct.sdma_engine*, %struct.sdma_engine** %141, align 8
  %143 = load i32, i32* @sdma_rht_free, align 4
  %144 = call i32 @rhashtable_free_and_destroy(%struct.sdma_engine* %142, i32 %143, i32* null)
  %145 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %146 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %145, i32 0, i32 1
  %147 = load %struct.sdma_engine*, %struct.sdma_engine** %146, align 8
  %148 = call i32 @kfree(%struct.sdma_engine* %147)
  %149 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %150 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %149, i32 0, i32 1
  store %struct.sdma_engine* null, %struct.sdma_engine** %150, align 8
  br label %151

151:                                              ; preds = %139, %112
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i64) #1

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @sdma_map_free(i32) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @kfree(%struct.sdma_engine*) #1

declare dso_local i32 @rhashtable_free_and_destroy(%struct.sdma_engine*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
