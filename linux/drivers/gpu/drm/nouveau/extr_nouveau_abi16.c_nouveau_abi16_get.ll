; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_abi16.c_nouveau_abi16_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_abi16.c_nouveau_abi16_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_abi16 = type { i32 }
%struct.drm_file = type { i32 }
%struct.nouveau_cli = type { i32, %struct.nouveau_abi16* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nouveau_abi16* @nouveau_abi16_get(%struct.drm_file* %0) #0 {
  %2 = alloca %struct.nouveau_abi16*, align 8
  %3 = alloca %struct.drm_file*, align 8
  %4 = alloca %struct.nouveau_cli*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %3, align 8
  %5 = load %struct.drm_file*, %struct.drm_file** %3, align 8
  %6 = call %struct.nouveau_cli* @nouveau_cli(%struct.drm_file* %5)
  store %struct.nouveau_cli* %6, %struct.nouveau_cli** %4, align 8
  %7 = load %struct.nouveau_cli*, %struct.nouveau_cli** %4, align 8
  %8 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.drm_file*, %struct.drm_file** %3, align 8
  %11 = call i64 @nouveau_abi16(%struct.drm_file* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.nouveau_cli*, %struct.nouveau_cli** %4, align 8
  %15 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %14, i32 0, i32 1
  %16 = load %struct.nouveau_abi16*, %struct.nouveau_abi16** %15, align 8
  store %struct.nouveau_abi16* %16, %struct.nouveau_abi16** %2, align 8
  br label %21

17:                                               ; preds = %1
  %18 = load %struct.nouveau_cli*, %struct.nouveau_cli** %4, align 8
  %19 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  store %struct.nouveau_abi16* null, %struct.nouveau_abi16** %2, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.nouveau_abi16*, %struct.nouveau_abi16** %2, align 8
  ret %struct.nouveau_abi16* %22
}

declare dso_local %struct.nouveau_cli* @nouveau_cli(%struct.drm_file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @nouveau_abi16(%struct.drm_file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
