; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dmaengine.c_dma_chan_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dmaengine.c_dma_chan_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 (i32, i32*)* }
%struct.TYPE_3__ = type { i32 (%struct.dma_chan*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @dma_chan_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_chan_put(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %3 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %4 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %68

8:                                                ; preds = %1
  %9 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %10, align 8
  %13 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %14 = call i32 @dma_chan_to_owner(%struct.dma_chan* %13)
  %15 = call i32 @module_put(i32 %14)
  %16 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %17 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %8
  %21 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %22 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.dma_chan*)*, i32 (%struct.dma_chan*)** %24, align 8
  %26 = icmp ne i32 (%struct.dma_chan*)* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %29 = call i32 @dmaengine_synchronize(%struct.dma_chan* %28)
  %30 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %31 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.dma_chan*)*, i32 (%struct.dma_chan*)** %33, align 8
  %35 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %36 = call i32 %34(%struct.dma_chan* %35)
  br label %37

37:                                               ; preds = %27, %20, %8
  %38 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %39 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %68

42:                                               ; preds = %37
  %43 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %44 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32 (i32, i32*)*, i32 (i32, i32*)** %46, align 8
  %48 = icmp ne i32 (i32, i32*)* %47, null
  br i1 %48, label %49, label %68

49:                                               ; preds = %42
  %50 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %51 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32 (i32, i32*)*, i32 (i32, i32*)** %53, align 8
  %55 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %56 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %61 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 %54(i32 %59, i32* %62)
  %64 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %65 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %64, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %65, align 8
  %66 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %67 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %7, %49, %42, %37
  ret void
}

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @dma_chan_to_owner(%struct.dma_chan*) #1

declare dso_local i32 @dmaengine_synchronize(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
