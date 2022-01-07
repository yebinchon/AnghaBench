; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_pfn_split_merge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_pfn_split_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { i32 }
%struct.nvkm_vma = type { i64, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvkm_vma* (%struct.nvkm_vmm*, %struct.nvkm_vma*, i64, i64, i32, i32)* @nvkm_vmm_pfn_split_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvkm_vma* @nvkm_vmm_pfn_split_merge(%struct.nvkm_vmm* %0, %struct.nvkm_vma* %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.nvkm_vma*, align 8
  %8 = alloca %struct.nvkm_vmm*, align 8
  %9 = alloca %struct.nvkm_vma*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nvkm_vma*, align 8
  %15 = alloca %struct.nvkm_vma*, align 8
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %8, align 8
  store %struct.nvkm_vma* %1, %struct.nvkm_vma** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.nvkm_vma* null, %struct.nvkm_vma** %14, align 8
  store %struct.nvkm_vma* null, %struct.nvkm_vma** %15, align 8
  %16 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  %17 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %6
  %22 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  %23 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  %28 = load %struct.nvkm_vma*, %struct.nvkm_vma** %14, align 8
  %29 = call %struct.nvkm_vma* @node(%struct.nvkm_vma* %27, %struct.nvkm_vma* %28)
  store %struct.nvkm_vma* %29, %struct.nvkm_vma** %14, align 8
  %30 = icmp ne %struct.nvkm_vma* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load %struct.nvkm_vma*, %struct.nvkm_vma** %14, align 8
  %33 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load %struct.nvkm_vma*, %struct.nvkm_vma** %14, align 8
  %38 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %31
  store %struct.nvkm_vma* null, %struct.nvkm_vma** %14, align 8
  br label %43

43:                                               ; preds = %42, %36
  br label %44

44:                                               ; preds = %43, %26, %21, %6
  %45 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  %46 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  %49 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = add nsw i64 %52, %53
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %44
  %57 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  %58 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %59 = call %struct.nvkm_vma* @node(%struct.nvkm_vma* %57, %struct.nvkm_vma* %58)
  store %struct.nvkm_vma* %59, %struct.nvkm_vma** %15, align 8
  %60 = icmp ne %struct.nvkm_vma* %59, null
  br i1 %60, label %61, label %79

61:                                               ; preds = %56
  %62 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %63 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %68 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %66
  %72 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %73 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71, %66, %61
  store %struct.nvkm_vma* null, %struct.nvkm_vma** %15, align 8
  br label %78

78:                                               ; preds = %77, %71
  br label %79

79:                                               ; preds = %78, %56, %44
  %80 = load %struct.nvkm_vma*, %struct.nvkm_vma** %14, align 8
  %81 = icmp ne %struct.nvkm_vma* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %84 = icmp ne %struct.nvkm_vma* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %82, %79
  %86 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %8, align 8
  %87 = load %struct.nvkm_vma*, %struct.nvkm_vma** %14, align 8
  %88 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  %89 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call %struct.nvkm_vma* @nvkm_vmm_node_merge(%struct.nvkm_vmm* %86, %struct.nvkm_vma* %87, %struct.nvkm_vma* %88, %struct.nvkm_vma* %89, i64 %90)
  store %struct.nvkm_vma* %91, %struct.nvkm_vma** %7, align 8
  br label %98

92:                                               ; preds = %82
  %93 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %8, align 8
  %94 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %11, align 8
  %97 = call %struct.nvkm_vma* @nvkm_vmm_node_split(%struct.nvkm_vmm* %93, %struct.nvkm_vma* %94, i64 %95, i64 %96)
  store %struct.nvkm_vma* %97, %struct.nvkm_vma** %7, align 8
  br label %98

98:                                               ; preds = %92, %85
  %99 = load %struct.nvkm_vma*, %struct.nvkm_vma** %7, align 8
  ret %struct.nvkm_vma* %99
}

declare dso_local %struct.nvkm_vma* @node(%struct.nvkm_vma*, %struct.nvkm_vma*) #1

declare dso_local %struct.nvkm_vma* @nvkm_vmm_node_merge(%struct.nvkm_vmm*, %struct.nvkm_vma*, %struct.nvkm_vma*, %struct.nvkm_vma*, i64) #1

declare dso_local %struct.nvkm_vma* @nvkm_vmm_node_split(%struct.nvkm_vmm*, %struct.nvkm_vma*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
