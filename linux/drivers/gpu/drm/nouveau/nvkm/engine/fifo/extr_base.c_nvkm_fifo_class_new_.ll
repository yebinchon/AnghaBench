; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_base.c_nvkm_fifo_class_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_base.c_nvkm_fifo_class_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.nvkm_fifo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_fifo*, %struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object**)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_device*, %struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object**)* @nvkm_fifo_class_new_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_fifo_class_new_(%struct.nvkm_device* %0, %struct.nvkm_oclass* %1, i8* %2, i32 %3, %struct.nvkm_object** %4) #0 {
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca %struct.nvkm_oclass*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_object**, align 8
  %11 = alloca %struct.nvkm_fifo*, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %6, align 8
  store %struct.nvkm_oclass* %1, %struct.nvkm_oclass** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.nvkm_object** %4, %struct.nvkm_object*** %10, align 8
  %12 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %13 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.nvkm_fifo* @nvkm_fifo(i32 %14)
  store %struct.nvkm_fifo* %15, %struct.nvkm_fifo** %11, align 8
  %16 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %11, align 8
  %17 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.nvkm_fifo*, %struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object**)*, i32 (%struct.nvkm_fifo*, %struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object**)** %19, align 8
  %21 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %11, align 8
  %22 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.nvkm_object**, %struct.nvkm_object*** %10, align 8
  %26 = call i32 %20(%struct.nvkm_fifo* %21, %struct.nvkm_oclass* %22, i8* %23, i32 %24, %struct.nvkm_object** %25)
  ret i32 %26
}

declare dso_local %struct.nvkm_fifo* @nvkm_fifo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
