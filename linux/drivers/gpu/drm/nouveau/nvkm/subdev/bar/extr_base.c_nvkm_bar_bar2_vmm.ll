; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bar/extr_base.c_nvkm_bar_bar2_vmm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bar/extr_base.c_nvkm_bar_bar2_vmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { i32 }
%struct.nvkm_device = type { %struct.nvkm_bar* }
%struct.nvkm_bar = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_vmm* (%struct.nvkm_bar*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nvkm_vmm* @nvkm_bar_bar2_vmm(%struct.nvkm_device* %0) #0 {
  %2 = alloca %struct.nvkm_vmm*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca %struct.nvkm_bar*, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %3, align 8
  %5 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %6 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %5, i32 0, i32 0
  %7 = load %struct.nvkm_bar*, %struct.nvkm_bar** %6, align 8
  store %struct.nvkm_bar* %7, %struct.nvkm_bar** %4, align 8
  %8 = load %struct.nvkm_bar*, %struct.nvkm_bar** %4, align 8
  %9 = icmp ne %struct.nvkm_bar* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.nvkm_bar*, %struct.nvkm_bar** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_bar, %struct.nvkm_bar* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load %struct.nvkm_bar*, %struct.nvkm_bar** %4, align 8
  %17 = getelementptr inbounds %struct.nvkm_bar, %struct.nvkm_bar* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.nvkm_vmm* (%struct.nvkm_bar*)*, %struct.nvkm_vmm* (%struct.nvkm_bar*)** %20, align 8
  %22 = load %struct.nvkm_bar*, %struct.nvkm_bar** %4, align 8
  %23 = call %struct.nvkm_vmm* %21(%struct.nvkm_bar* %22)
  store %struct.nvkm_vmm* %23, %struct.nvkm_vmm** %2, align 8
  br label %25

24:                                               ; preds = %10, %1
  store %struct.nvkm_vmm* null, %struct.nvkm_vmm** %2, align 8
  br label %25

25:                                               ; preds = %24, %15
  %26 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %2, align 8
  ret %struct.nvkm_vmm* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
