; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_vmm.c_nouveau_vmm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_vmm.c_nouveau_vmm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_cli = type { i32 }
%struct.nouveau_vmm = type { %struct.nouveau_cli*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_vmm_init(%struct.nouveau_cli* %0, i32 %1, %struct.nouveau_vmm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_cli*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_vmm*, align 8
  %8 = alloca i32, align 4
  store %struct.nouveau_cli* %0, %struct.nouveau_cli** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nouveau_vmm* %2, %struct.nouveau_vmm** %7, align 8
  %9 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %10 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %9, i32 0, i32 0
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = load %struct.nouveau_vmm*, %struct.nouveau_vmm** %7, align 8
  %14 = getelementptr inbounds %struct.nouveau_vmm, %struct.nouveau_vmm* %13, i32 0, i32 1
  %15 = call i32 @nvif_vmm_init(i32* %10, i32 %11, i32 0, i32 %12, i32 0, i32* null, i32 0, i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %24

20:                                               ; preds = %3
  %21 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %22 = load %struct.nouveau_vmm*, %struct.nouveau_vmm** %7, align 8
  %23 = getelementptr inbounds %struct.nouveau_vmm, %struct.nouveau_vmm* %22, i32 0, i32 0
  store %struct.nouveau_cli* %21, %struct.nouveau_cli** %23, align 8
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %18
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @nvif_vmm_init(i32*, i32, i32, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
