; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_base.c_nvkm_gr_cclass_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_base.c_nvkm_gr_cclass_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_chan = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.nvkm_gr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_gr*, %struct.nvkm_fifo_chan*, %struct.nvkm_oclass*, %struct.nvkm_object**)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_fifo_chan*, %struct.nvkm_oclass*, %struct.nvkm_object**)* @nvkm_gr_cclass_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_gr_cclass_new(%struct.nvkm_fifo_chan* %0, %struct.nvkm_oclass* %1, %struct.nvkm_object** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_fifo_chan*, align 8
  %6 = alloca %struct.nvkm_oclass*, align 8
  %7 = alloca %struct.nvkm_object**, align 8
  %8 = alloca %struct.nvkm_gr*, align 8
  store %struct.nvkm_fifo_chan* %0, %struct.nvkm_fifo_chan** %5, align 8
  store %struct.nvkm_oclass* %1, %struct.nvkm_oclass** %6, align 8
  store %struct.nvkm_object** %2, %struct.nvkm_object*** %7, align 8
  %9 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %10 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.nvkm_gr* @nvkm_gr(i32 %11)
  store %struct.nvkm_gr* %12, %struct.nvkm_gr** %8, align 8
  %13 = load %struct.nvkm_gr*, %struct.nvkm_gr** %8, align 8
  %14 = getelementptr inbounds %struct.nvkm_gr, %struct.nvkm_gr* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.nvkm_gr*, %struct.nvkm_fifo_chan*, %struct.nvkm_oclass*, %struct.nvkm_object**)*, i32 (%struct.nvkm_gr*, %struct.nvkm_fifo_chan*, %struct.nvkm_oclass*, %struct.nvkm_object**)** %16, align 8
  %18 = icmp ne i32 (%struct.nvkm_gr*, %struct.nvkm_fifo_chan*, %struct.nvkm_oclass*, %struct.nvkm_object**)* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load %struct.nvkm_gr*, %struct.nvkm_gr** %8, align 8
  %21 = getelementptr inbounds %struct.nvkm_gr, %struct.nvkm_gr* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.nvkm_gr*, %struct.nvkm_fifo_chan*, %struct.nvkm_oclass*, %struct.nvkm_object**)*, i32 (%struct.nvkm_gr*, %struct.nvkm_fifo_chan*, %struct.nvkm_oclass*, %struct.nvkm_object**)** %23, align 8
  %25 = load %struct.nvkm_gr*, %struct.nvkm_gr** %8, align 8
  %26 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %5, align 8
  %27 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %28 = load %struct.nvkm_object**, %struct.nvkm_object*** %7, align 8
  %29 = call i32 %24(%struct.nvkm_gr* %25, %struct.nvkm_fifo_chan* %26, %struct.nvkm_oclass* %27, %struct.nvkm_object** %28)
  store i32 %29, i32* %4, align 4
  br label %31

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %19
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.nvkm_gr* @nvkm_gr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
