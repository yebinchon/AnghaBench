; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_base.c_nvkm_fifo_dtor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_base.c_nvkm_fifo_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { i32 }
%struct.nvkm_fifo = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* (%struct.nvkm_fifo*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nvkm_engine*)* @nvkm_fifo_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nvkm_fifo_dtor(%struct.nvkm_engine* %0) #0 {
  %2 = alloca %struct.nvkm_engine*, align 8
  %3 = alloca %struct.nvkm_fifo*, align 8
  %4 = alloca i8*, align 8
  store %struct.nvkm_engine* %0, %struct.nvkm_engine** %2, align 8
  %5 = load %struct.nvkm_engine*, %struct.nvkm_engine** %2, align 8
  %6 = call %struct.nvkm_fifo* @nvkm_fifo(%struct.nvkm_engine* %5)
  store %struct.nvkm_fifo* %6, %struct.nvkm_fifo** %3, align 8
  %7 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %3, align 8
  %8 = bitcast %struct.nvkm_fifo* %7 to i8*
  store i8* %8, i8** %4, align 8
  %9 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %3, align 8
  %10 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8* (%struct.nvkm_fifo*)*, i8* (%struct.nvkm_fifo*)** %12, align 8
  %14 = icmp ne i8* (%struct.nvkm_fifo*)* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %3, align 8
  %17 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8* (%struct.nvkm_fifo*)*, i8* (%struct.nvkm_fifo*)** %19, align 8
  %21 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %3, align 8
  %22 = call i8* %20(%struct.nvkm_fifo* %21)
  store i8* %22, i8** %4, align 8
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %3, align 8
  %25 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %24, i32 0, i32 2
  %26 = call i32 @nvkm_event_fini(i32* %25)
  %27 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %3, align 8
  %28 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %27, i32 0, i32 1
  %29 = call i32 @nvkm_event_fini(i32* %28)
  %30 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %3, align 8
  %31 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %30, i32 0, i32 0
  %32 = call i32 @nvkm_event_fini(i32* %31)
  %33 = load i8*, i8** %4, align 8
  ret i8* %33
}

declare dso_local %struct.nvkm_fifo* @nvkm_fifo(%struct.nvkm_engine*) #1

declare dso_local i32 @nvkm_event_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
