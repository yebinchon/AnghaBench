; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_cli_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_cli_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_cli = type { %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_cli*)* @nouveau_cli_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_cli_fini(%struct.nouveau_cli* %0) #0 {
  %2 = alloca %struct.nouveau_cli*, align 8
  store %struct.nouveau_cli* %0, %struct.nouveau_cli** %2, align 8
  %3 = load %struct.nouveau_cli*, %struct.nouveau_cli** %2, align 8
  %4 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %3, i32 0, i32 7
  %5 = call i32 @flush_work(i32* %4)
  %6 = load %struct.nouveau_cli*, %struct.nouveau_cli** %2, align 8
  %7 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %6, i32 0, i32 6
  %8 = call i32 @list_empty(i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.nouveau_cli*, %struct.nouveau_cli** %2, align 8
  %14 = call i32 @usif_client_fini(%struct.nouveau_cli* %13)
  %15 = load %struct.nouveau_cli*, %struct.nouveau_cli** %2, align 8
  %16 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %15, i32 0, i32 5
  %17 = call i32 @nouveau_vmm_fini(i32* %16)
  %18 = load %struct.nouveau_cli*, %struct.nouveau_cli** %2, align 8
  %19 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %18, i32 0, i32 4
  %20 = call i32 @nouveau_vmm_fini(i32* %19)
  %21 = load %struct.nouveau_cli*, %struct.nouveau_cli** %2, align 8
  %22 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %21, i32 0, i32 3
  %23 = call i32 @nvif_mmu_fini(i32* %22)
  %24 = load %struct.nouveau_cli*, %struct.nouveau_cli** %2, align 8
  %25 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %24, i32 0, i32 2
  %26 = call i32 @nvif_device_fini(i32* %25)
  %27 = load %struct.nouveau_cli*, %struct.nouveau_cli** %2, align 8
  %28 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.nouveau_cli*, %struct.nouveau_cli** %2, align 8
  %34 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %33, i32 0, i32 1
  %35 = call i32 @nvif_client_fini(i32* %34)
  %36 = load %struct.nouveau_cli*, %struct.nouveau_cli** %2, align 8
  %37 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  ret void
}

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @usif_client_fini(%struct.nouveau_cli*) #1

declare dso_local i32 @nouveau_vmm_fini(i32*) #1

declare dso_local i32 @nvif_mmu_fini(i32*) #1

declare dso_local i32 @nvif_device_fini(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nvif_client_fini(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
