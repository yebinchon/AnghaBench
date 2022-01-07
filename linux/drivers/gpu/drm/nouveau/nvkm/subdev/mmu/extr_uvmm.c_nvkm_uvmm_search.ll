; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_uvmm.c_nvkm_uvmm_search.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_uvmm.c_nvkm_uvmm_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type opaque
%struct.nvkm_client = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.TYPE_3__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nvkm_vmm* @nvkm_uvmm_search(%struct.nvkm_client* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_vmm*, align 8
  %4 = alloca %struct.nvkm_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_object*, align 8
  store %struct.nvkm_client* %0, %struct.nvkm_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nvkm_client*, %struct.nvkm_client** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.nvkm_object* @nvkm_object_search(%struct.nvkm_client* %7, i32 %8, %struct.TYPE_3__* (%struct.nvkm_object*)* @nvkm_uvmm)
  store %struct.nvkm_object* %9, %struct.nvkm_object** %6, align 8
  %10 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %11 = call i64 @IS_ERR(%struct.nvkm_object* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %15 = bitcast %struct.nvkm_object* %14 to i8*
  %16 = bitcast i8* %15 to %struct.nvkm_vmm*
  store %struct.nvkm_vmm* %16, %struct.nvkm_vmm** %3, align 8
  br label %23

17:                                               ; preds = %2
  %18 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %19 = call %struct.TYPE_3__* @nvkm_uvmm(%struct.nvkm_object* %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to %struct.nvkm_vmm*
  store %struct.nvkm_vmm* %22, %struct.nvkm_vmm** %3, align 8
  br label %23

23:                                               ; preds = %17, %13
  %24 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  ret %struct.nvkm_vmm* %24
}

declare dso_local %struct.nvkm_object* @nvkm_object_search(%struct.nvkm_client*, i32, %struct.TYPE_3__* (%struct.nvkm_object*)*) #1

declare dso_local %struct.TYPE_3__* @nvkm_uvmm(%struct.nvkm_object*) #1

declare dso_local i64 @IS_ERR(%struct.nvkm_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
