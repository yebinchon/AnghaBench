; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_pt_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_pt_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm_pt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_vmm_pt**)* @nvkm_vmm_pt_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_vmm_pt_del(%struct.nvkm_vmm_pt** %0) #0 {
  %2 = alloca %struct.nvkm_vmm_pt**, align 8
  %3 = alloca %struct.nvkm_vmm_pt*, align 8
  store %struct.nvkm_vmm_pt** %0, %struct.nvkm_vmm_pt*** %2, align 8
  %4 = load %struct.nvkm_vmm_pt**, %struct.nvkm_vmm_pt*** %2, align 8
  %5 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %4, align 8
  store %struct.nvkm_vmm_pt* %5, %struct.nvkm_vmm_pt** %3, align 8
  %6 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %3, align 8
  %7 = icmp ne %struct.nvkm_vmm_pt* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %3, align 8
  %10 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @kvfree(i32 %11)
  %13 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %3, align 8
  %14 = call i32 @kfree(%struct.nvkm_vmm_pt* %13)
  %15 = load %struct.nvkm_vmm_pt**, %struct.nvkm_vmm_pt*** %2, align 8
  store %struct.nvkm_vmm_pt* null, %struct.nvkm_vmm_pt** %15, align 8
  br label %16

16:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @kfree(%struct.nvkm_vmm_pt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
