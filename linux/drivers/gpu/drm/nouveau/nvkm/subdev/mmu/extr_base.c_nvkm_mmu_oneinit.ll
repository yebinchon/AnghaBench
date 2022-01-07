; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_base.c_nvkm_mmu_oneinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_base.c_nvkm_mmu_oneinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { i32 }
%struct.nvkm_mmu = type { i32, %struct.TYPE_7__*, %struct.TYPE_10__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"gart\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_subdev*)* @nvkm_mmu_oneinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_mmu_oneinit(%struct.nvkm_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_mmu*, align 8
  %5 = alloca i32, align 4
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %3, align 8
  %6 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %7 = call %struct.nvkm_mmu* @nvkm_mmu(%struct.nvkm_subdev* %6)
  store %struct.nvkm_mmu* %7, %struct.nvkm_mmu** %4, align 8
  %8 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %4, align 8
  %9 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %4, align 8
  %17 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %4, align 8
  %27 = call i32 @nvkm_mmu_vram(%struct.nvkm_mmu* %26)
  br label %31

28:                                               ; preds = %15, %1
  %29 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %4, align 8
  %30 = call i32 @nvkm_mmu_host(%struct.nvkm_mmu* %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %4, align 8
  %33 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %31
  %40 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %41 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %4, align 8
  %44 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %43, i32 0, i32 0
  %45 = call i32 @nvkm_vmm_new(i32 %42, i32 0, i32 0, i32* null, i32 0, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %52

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %31
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.nvkm_mmu* @nvkm_mmu(%struct.nvkm_subdev*) #1

declare dso_local i32 @nvkm_mmu_vram(%struct.nvkm_mmu*) #1

declare dso_local i32 @nvkm_mmu_host(%struct.nvkm_mmu*) #1

declare dso_local i32 @nvkm_vmm_new(i32, i32, i32, i32*, i32, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
