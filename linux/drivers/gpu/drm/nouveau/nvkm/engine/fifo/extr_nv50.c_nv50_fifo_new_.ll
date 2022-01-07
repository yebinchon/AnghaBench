; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_nv50.c_nv50_fifo_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_nv50.c_nv50_fifo_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_func = type { i32 }
%struct.nvkm_device = type { i32 }
%struct.nvkm_fifo = type { i32 }
%struct.nv50_fifo = type { %struct.nvkm_fifo }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_fifo_new_(%struct.nvkm_fifo_func* %0, %struct.nvkm_device* %1, i32 %2, %struct.nvkm_fifo** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_fifo_func*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_fifo**, align 8
  %10 = alloca %struct.nv50_fifo*, align 8
  %11 = alloca i32, align 4
  store %struct.nvkm_fifo_func* %0, %struct.nvkm_fifo_func** %6, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_fifo** %3, %struct.nvkm_fifo*** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.nv50_fifo* @kzalloc(i32 4, i32 %12)
  store %struct.nv50_fifo* %13, %struct.nv50_fifo** %10, align 8
  %14 = icmp ne %struct.nv50_fifo* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %43

18:                                               ; preds = %4
  %19 = load %struct.nv50_fifo*, %struct.nv50_fifo** %10, align 8
  %20 = getelementptr inbounds %struct.nv50_fifo, %struct.nv50_fifo* %19, i32 0, i32 0
  %21 = load %struct.nvkm_fifo**, %struct.nvkm_fifo*** %9, align 8
  store %struct.nvkm_fifo* %20, %struct.nvkm_fifo** %21, align 8
  %22 = load %struct.nvkm_fifo_func*, %struct.nvkm_fifo_func** %6, align 8
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.nv50_fifo*, %struct.nv50_fifo** %10, align 8
  %26 = getelementptr inbounds %struct.nv50_fifo, %struct.nv50_fifo* %25, i32 0, i32 0
  %27 = call i32 @nvkm_fifo_ctor(%struct.nvkm_fifo_func* %22, %struct.nvkm_device* %23, i32 %24, i32 128, %struct.nvkm_fifo* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %43

32:                                               ; preds = %18
  %33 = load %struct.nv50_fifo*, %struct.nv50_fifo** %10, align 8
  %34 = getelementptr inbounds %struct.nv50_fifo, %struct.nv50_fifo* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @set_bit(i32 0, i32 %36)
  %38 = load %struct.nv50_fifo*, %struct.nv50_fifo** %10, align 8
  %39 = getelementptr inbounds %struct.nv50_fifo, %struct.nv50_fifo* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @set_bit(i32 127, i32 %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %32, %30, %15
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.nv50_fifo* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_fifo_ctor(%struct.nvkm_fifo_func*, %struct.nvkm_device*, i32, i32, %struct.nvkm_fifo*) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
