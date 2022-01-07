; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_nv04.c_nv04_instmem_oneinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_nv04.c_nv04_instmem_oneinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_instmem = type { i32 }
%struct.nv04_instmem = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NVKM_MEM_TARGET_INST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_instmem*)* @nv04_instmem_oneinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_instmem_oneinit(%struct.nvkm_instmem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_instmem*, align 8
  %4 = alloca %struct.nv04_instmem*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.nvkm_instmem* %0, %struct.nvkm_instmem** %3, align 8
  %7 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %3, align 8
  %8 = call %struct.nv04_instmem* @nv04_instmem(%struct.nvkm_instmem* %7)
  store %struct.nv04_instmem* %8, %struct.nv04_instmem** %4, align 8
  %9 = load %struct.nv04_instmem*, %struct.nv04_instmem** %4, align 8
  %10 = getelementptr inbounds %struct.nv04_instmem, %struct.nv04_instmem* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %5, align 8
  %14 = load %struct.nv04_instmem*, %struct.nv04_instmem** %4, align 8
  %15 = getelementptr inbounds %struct.nv04_instmem, %struct.nv04_instmem* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 524288, i32* %16, align 8
  %17 = load %struct.nv04_instmem*, %struct.nv04_instmem** %4, align 8
  %18 = getelementptr inbounds %struct.nv04_instmem, %struct.nv04_instmem* %17, i32 0, i32 1
  %19 = load %struct.nv04_instmem*, %struct.nv04_instmem** %4, align 8
  %20 = getelementptr inbounds %struct.nv04_instmem, %struct.nv04_instmem* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @nvkm_mm_init(i32* %18, i32 0, i32 0, i32 %22, i32 1)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %72

28:                                               ; preds = %1
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %30 = load i32, i32* @NVKM_MEM_TARGET_INST, align 4
  %31 = load %struct.nv04_instmem*, %struct.nv04_instmem** %4, align 8
  %32 = getelementptr inbounds %struct.nv04_instmem, %struct.nv04_instmem* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  %34 = call i32 @nvkm_memory_new(%struct.nvkm_device* %29, i32 %30, i32 65536, i32 0, i32 0, i32* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %72

39:                                               ; preds = %28
  %40 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %41 = load %struct.nv04_instmem*, %struct.nv04_instmem** %4, align 8
  %42 = getelementptr inbounds %struct.nv04_instmem, %struct.nv04_instmem* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = call i32 @nvkm_ramht_new(%struct.nvkm_device* %40, i32 32768, i32 0, i32* null, i32* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %72

49:                                               ; preds = %39
  %50 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %51 = load i32, i32* @NVKM_MEM_TARGET_INST, align 4
  %52 = load %struct.nv04_instmem*, %struct.nv04_instmem** %4, align 8
  %53 = getelementptr inbounds %struct.nv04_instmem, %struct.nv04_instmem* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = call i32 @nvkm_memory_new(%struct.nvkm_device* %50, i32 %51, i32 2048, i32 0, i32 1, i32* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %72

60:                                               ; preds = %49
  %61 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %62 = load i32, i32* @NVKM_MEM_TARGET_INST, align 4
  %63 = load %struct.nv04_instmem*, %struct.nv04_instmem** %4, align 8
  %64 = getelementptr inbounds %struct.nv04_instmem, %struct.nv04_instmem* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = call i32 @nvkm_memory_new(%struct.nvkm_device* %61, i32 %62, i32 512, i32 0, i32 0, i32* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %72

71:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %69, %58, %47, %37, %26
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.nv04_instmem* @nv04_instmem(%struct.nvkm_instmem*) #1

declare dso_local i32 @nvkm_mm_init(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @nvkm_memory_new(%struct.nvkm_device*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @nvkm_ramht_new(%struct.nvkm_device*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
