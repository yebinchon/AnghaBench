; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk104_fifo_func = type { i32 }
%struct.nvkm_device = type { i32 }
%struct.nvkm_fifo = type { i32 }
%struct.gk104_fifo = type { %struct.nvkm_fifo, %struct.TYPE_2__, %struct.gk104_fifo_func* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gk104_fifo_recover_work = common dso_local global i32 0, align 4
@gk104_fifo_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gk104_fifo_new_(%struct.gk104_fifo_func* %0, %struct.nvkm_device* %1, i32 %2, i32 %3, %struct.nvkm_fifo** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gk104_fifo_func*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_fifo**, align 8
  %12 = alloca %struct.gk104_fifo*, align 8
  store %struct.gk104_fifo_func* %0, %struct.gk104_fifo_func** %7, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nvkm_fifo** %4, %struct.nvkm_fifo*** %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.gk104_fifo* @kzalloc(i32 16, i32 %13)
  store %struct.gk104_fifo* %14, %struct.gk104_fifo** %12, align 8
  %15 = icmp ne %struct.gk104_fifo* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %37

19:                                               ; preds = %5
  %20 = load %struct.gk104_fifo_func*, %struct.gk104_fifo_func** %7, align 8
  %21 = load %struct.gk104_fifo*, %struct.gk104_fifo** %12, align 8
  %22 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %21, i32 0, i32 2
  store %struct.gk104_fifo_func* %20, %struct.gk104_fifo_func** %22, align 8
  %23 = load %struct.gk104_fifo*, %struct.gk104_fifo** %12, align 8
  %24 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* @gk104_fifo_recover_work, align 4
  %27 = call i32 @INIT_WORK(i32* %25, i32 %26)
  %28 = load %struct.gk104_fifo*, %struct.gk104_fifo** %12, align 8
  %29 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %28, i32 0, i32 0
  %30 = load %struct.nvkm_fifo**, %struct.nvkm_fifo*** %11, align 8
  store %struct.nvkm_fifo* %29, %struct.nvkm_fifo** %30, align 8
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.gk104_fifo*, %struct.gk104_fifo** %12, align 8
  %35 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %34, i32 0, i32 0
  %36 = call i32 @nvkm_fifo_ctor(i32* @gk104_fifo_, %struct.nvkm_device* %31, i32 %32, i32 %33, %struct.nvkm_fifo* %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %19, %16
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local %struct.gk104_fifo* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @nvkm_fifo_ctor(i32*, %struct.nvkm_device*, i32, i32, %struct.nvkm_fifo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
