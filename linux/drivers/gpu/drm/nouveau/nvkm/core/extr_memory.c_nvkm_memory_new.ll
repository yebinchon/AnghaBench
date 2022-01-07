; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_memory.c_nvkm_memory_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_memory.c_nvkm_memory_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { %struct.nvkm_instmem* }
%struct.nvkm_instmem = type { i32 }
%struct.nvkm_memory = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@NVKM_MEM_TARGET_INST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_memory_new(%struct.nvkm_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.nvkm_memory** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvkm_memory**, align 8
  %14 = alloca %struct.nvkm_instmem*, align 8
  %15 = alloca %struct.nvkm_memory*, align 8
  %16 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.nvkm_memory** %5, %struct.nvkm_memory*** %13, align 8
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %18 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %17, i32 0, i32 0
  %19 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %18, align 8
  store %struct.nvkm_instmem* %19, %struct.nvkm_instmem** %14, align 8
  %20 = load i32, i32* @ENOSYS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @NVKM_MEM_TARGET_INST, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %6
  %26 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %14, align 8
  %27 = icmp ne %struct.nvkm_instmem* %26, null
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %25, %6
  %30 = phi i1 [ true, %6 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOSYS, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %50

37:                                               ; preds = %29
  %38 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %14, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @nvkm_instobj_new(%struct.nvkm_instmem* %38, i32 %39, i32 %40, i32 %41, %struct.nvkm_memory** %15)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %7, align 4
  br label %50

47:                                               ; preds = %37
  %48 = load %struct.nvkm_memory*, %struct.nvkm_memory** %15, align 8
  %49 = load %struct.nvkm_memory**, %struct.nvkm_memory*** %13, align 8
  store %struct.nvkm_memory* %48, %struct.nvkm_memory** %49, align 8
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %47, %45, %34
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nvkm_instobj_new(%struct.nvkm_instmem*, i32, i32, i32, %struct.nvkm_memory**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
