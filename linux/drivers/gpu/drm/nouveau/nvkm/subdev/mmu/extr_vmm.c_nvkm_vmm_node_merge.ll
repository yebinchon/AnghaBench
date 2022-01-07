; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_node_merge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_node_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { i32 }
%struct.nvkm_vma = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvkm_vma* (%struct.nvkm_vmm*, %struct.nvkm_vma*, %struct.nvkm_vma*, %struct.nvkm_vma*, i64)* @nvkm_vmm_node_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvkm_vma* @nvkm_vmm_node_merge(%struct.nvkm_vmm* %0, %struct.nvkm_vma* %1, %struct.nvkm_vma* %2, %struct.nvkm_vma* %3, i64 %4) #0 {
  %6 = alloca %struct.nvkm_vma*, align 8
  %7 = alloca %struct.nvkm_vmm*, align 8
  %8 = alloca %struct.nvkm_vma*, align 8
  %9 = alloca %struct.nvkm_vma*, align 8
  %10 = alloca %struct.nvkm_vma*, align 8
  %11 = alloca i64, align 8
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %7, align 8
  store %struct.nvkm_vma* %1, %struct.nvkm_vma** %8, align 8
  store %struct.nvkm_vma* %2, %struct.nvkm_vma** %9, align 8
  store %struct.nvkm_vma* %3, %struct.nvkm_vma** %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load %struct.nvkm_vma*, %struct.nvkm_vma** %10, align 8
  %13 = icmp ne %struct.nvkm_vma* %12, null
  br i1 %13, label %14, label %74

14:                                               ; preds = %5
  %15 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  %16 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %11, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %14
  %21 = load %struct.nvkm_vma*, %struct.nvkm_vma** %10, align 8
  %22 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  %25 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, %23
  store i64 %27, i64* %25, align 8
  %28 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %29 = load %struct.nvkm_vma*, %struct.nvkm_vma** %10, align 8
  %30 = call i32 @nvkm_vmm_node_delete(%struct.nvkm_vmm* %28, %struct.nvkm_vma* %29)
  %31 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %32 = icmp ne %struct.nvkm_vma* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %20
  %34 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  %35 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %38 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, %36
  store i64 %40, i64* %38, align 8
  %41 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %42 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  %43 = call i32 @nvkm_vmm_node_delete(%struct.nvkm_vmm* %41, %struct.nvkm_vma* %42)
  %44 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  store %struct.nvkm_vma* %44, %struct.nvkm_vma** %6, align 8
  br label %122

45:                                               ; preds = %20
  %46 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  store %struct.nvkm_vma* %46, %struct.nvkm_vma** %6, align 8
  br label %122

47:                                               ; preds = %14
  %48 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %49 = call i32 @BUG_ON(%struct.nvkm_vma* %48)
  %50 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %51 = load %struct.nvkm_vma*, %struct.nvkm_vma** %10, align 8
  %52 = call i32 @nvkm_vmm_node_remove(%struct.nvkm_vmm* %50, %struct.nvkm_vma* %51)
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  %55 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load %struct.nvkm_vma*, %struct.nvkm_vma** %10, align 8
  %60 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = sub nsw i64 %62, %58
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.nvkm_vma*, %struct.nvkm_vma** %10, align 8
  %67 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, %65
  store i64 %69, i64* %67, align 8
  %70 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %71 = load %struct.nvkm_vma*, %struct.nvkm_vma** %10, align 8
  %72 = call i32 @nvkm_vmm_node_insert(%struct.nvkm_vmm* %70, %struct.nvkm_vma* %71)
  %73 = load %struct.nvkm_vma*, %struct.nvkm_vma** %10, align 8
  store %struct.nvkm_vma* %73, %struct.nvkm_vma** %6, align 8
  br label %122

74:                                               ; preds = %5
  %75 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %76 = icmp ne %struct.nvkm_vma* %75, null
  br i1 %76, label %77, label %120

77:                                               ; preds = %74
  %78 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  %79 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %11, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %107

83:                                               ; preds = %77
  %84 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %85 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  %86 = call i32 @nvkm_vmm_node_remove(%struct.nvkm_vmm* %84, %struct.nvkm_vma* %85)
  %87 = load i64, i64* %11, align 8
  %88 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %89 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, %87
  store i64 %91, i64* %89, align 8
  %92 = load i64, i64* %11, align 8
  %93 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  %94 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %92
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  %101 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %102, %99
  store i64 %103, i64* %101, align 8
  %104 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %105 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  %106 = call i32 @nvkm_vmm_node_insert(%struct.nvkm_vmm* %104, %struct.nvkm_vma* %105)
  br label %118

107:                                              ; preds = %77
  %108 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  %109 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %112 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, %110
  store i64 %114, i64* %112, align 8
  %115 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %116 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  %117 = call i32 @nvkm_vmm_node_delete(%struct.nvkm_vmm* %115, %struct.nvkm_vma* %116)
  br label %118

118:                                              ; preds = %107, %83
  %119 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  store %struct.nvkm_vma* %119, %struct.nvkm_vma** %6, align 8
  br label %122

120:                                              ; preds = %74
  %121 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  store %struct.nvkm_vma* %121, %struct.nvkm_vma** %6, align 8
  br label %122

122:                                              ; preds = %120, %118, %47, %45, %33
  %123 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  ret %struct.nvkm_vma* %123
}

declare dso_local i32 @nvkm_vmm_node_delete(%struct.nvkm_vmm*, %struct.nvkm_vma*) #1

declare dso_local i32 @BUG_ON(%struct.nvkm_vma*) #1

declare dso_local i32 @nvkm_vmm_node_remove(%struct.nvkm_vmm*, %struct.nvkm_vma*) #1

declare dso_local i32 @nvkm_vmm_node_insert(%struct.nvkm_vmm*, %struct.nvkm_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
