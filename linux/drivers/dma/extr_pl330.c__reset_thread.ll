; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__reset_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__reset_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl330_thread = type { i32, i32, %struct.TYPE_2__*, %struct.pl330_dmac* }
%struct.TYPE_2__ = type { i32*, i64, i64 }
%struct.pl330_dmac = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl330_thread*)* @_reset_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_reset_thread(%struct.pl330_thread* %0) #0 {
  %2 = alloca %struct.pl330_thread*, align 8
  %3 = alloca %struct.pl330_dmac*, align 8
  store %struct.pl330_thread* %0, %struct.pl330_thread** %2, align 8
  %4 = load %struct.pl330_thread*, %struct.pl330_thread** %2, align 8
  %5 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %4, i32 0, i32 3
  %6 = load %struct.pl330_dmac*, %struct.pl330_dmac** %5, align 8
  store %struct.pl330_dmac* %6, %struct.pl330_dmac** %3, align 8
  %7 = load %struct.pl330_dmac*, %struct.pl330_dmac** %3, align 8
  %8 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.pl330_thread*, %struct.pl330_thread** %2, align 8
  %11 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.pl330_dmac*, %struct.pl330_dmac** %3, align 8
  %14 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 %12, %15
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %9, %17
  %19 = load %struct.pl330_thread*, %struct.pl330_thread** %2, align 8
  %20 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i64 %18, i64* %23, align 8
  %24 = load %struct.pl330_dmac*, %struct.pl330_dmac** %3, align 8
  %25 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.pl330_thread*, %struct.pl330_thread** %2, align 8
  %28 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.pl330_dmac*, %struct.pl330_dmac** %3, align 8
  %31 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %29, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %26, %34
  %36 = load %struct.pl330_thread*, %struct.pl330_thread** %2, align 8
  %37 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i64 %35, i64* %40, align 8
  %41 = load %struct.pl330_thread*, %struct.pl330_thread** %2, align 8
  %42 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  %46 = load %struct.pl330_thread*, %struct.pl330_thread** %2, align 8
  %47 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.pl330_dmac*, %struct.pl330_dmac** %3, align 8
  %53 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sdiv i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %51, %56
  %58 = load %struct.pl330_thread*, %struct.pl330_thread** %2, align 8
  %59 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i64 %57, i64* %62, align 8
  %63 = load %struct.pl330_thread*, %struct.pl330_thread** %2, align 8
  %64 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.pl330_dmac*, %struct.pl330_dmac** %3, align 8
  %70 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sdiv i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %68, %73
  %75 = load %struct.pl330_thread*, %struct.pl330_thread** %2, align 8
  %76 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i64 %74, i64* %79, align 8
  %80 = load %struct.pl330_thread*, %struct.pl330_thread** %2, align 8
  %81 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32* null, i32** %84, align 8
  %85 = load %struct.pl330_thread*, %struct.pl330_thread** %2, align 8
  %86 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %85, i32 0, i32 1
  store i32 -1, i32* %86, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
