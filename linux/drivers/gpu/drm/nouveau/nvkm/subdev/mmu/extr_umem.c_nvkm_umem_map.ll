; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_umem.c_nvkm_umem_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_umem.c_nvkm_umem_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_umem = type { i32, i32, i32, i32, i64, i32, %struct.nvkm_mmu* }
%struct.nvkm_mmu = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.nvkm_mmu*, i32, i8*, i32, i64*, i64*, i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@NVKM_MEM_HOST = common dso_local global i32 0, align 4
@NVKM_OBJECT_MAP_VA = common dso_local global i32 0, align 4
@NVKM_MEM_VRAM = common dso_local global i32 0, align 4
@NVKM_MEM_KIND = common dso_local global i32 0, align 4
@NVKM_OBJECT_MAP_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, i8*, i32, i32*, i64*, i64*)* @nvkm_umem_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_umem_map(%struct.nvkm_object* %0, i8* %1, i32 %2, i32* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_object*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.nvkm_umem*, align 8
  %15 = alloca %struct.nvkm_mmu*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nvkm_object* %0, %struct.nvkm_object** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %18 = load %struct.nvkm_object*, %struct.nvkm_object** %8, align 8
  %19 = call %struct.nvkm_umem* @nvkm_umem(%struct.nvkm_object* %18)
  store %struct.nvkm_umem* %19, %struct.nvkm_umem** %14, align 8
  %20 = load %struct.nvkm_umem*, %struct.nvkm_umem** %14, align 8
  %21 = getelementptr inbounds %struct.nvkm_umem, %struct.nvkm_umem* %20, i32 0, i32 6
  %22 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %21, align 8
  store %struct.nvkm_mmu* %22, %struct.nvkm_mmu** %15, align 8
  %23 = load %struct.nvkm_umem*, %struct.nvkm_umem** %14, align 8
  %24 = getelementptr inbounds %struct.nvkm_umem, %struct.nvkm_umem* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %6
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %124

30:                                               ; preds = %6
  %31 = load %struct.nvkm_umem*, %struct.nvkm_umem** %14, align 8
  %32 = getelementptr inbounds %struct.nvkm_umem, %struct.nvkm_umem* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EEXIST, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %124

38:                                               ; preds = %30
  %39 = load %struct.nvkm_umem*, %struct.nvkm_umem** %14, align 8
  %40 = getelementptr inbounds %struct.nvkm_umem, %struct.nvkm_umem* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @NVKM_MEM_HOST, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %38
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %73, label %48

48:                                               ; preds = %45
  %49 = load %struct.nvkm_umem*, %struct.nvkm_umem** %14, align 8
  %50 = getelementptr inbounds %struct.nvkm_umem, %struct.nvkm_umem* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nvkm_umem*, %struct.nvkm_umem** %14, align 8
  %53 = getelementptr inbounds %struct.nvkm_umem, %struct.nvkm_umem* %52, i32 0, i32 4
  %54 = call i32 @nvkm_mem_map_host(i32 %51, i64* %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %16, align 4
  store i32 %58, i32* %7, align 4
  br label %124

59:                                               ; preds = %48
  %60 = load %struct.nvkm_umem*, %struct.nvkm_umem** %14, align 8
  %61 = getelementptr inbounds %struct.nvkm_umem, %struct.nvkm_umem* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = ptrtoint i8* %63 to i64
  %65 = load i64*, i64** %12, align 8
  store i64 %64, i64* %65, align 8
  %66 = load %struct.nvkm_umem*, %struct.nvkm_umem** %14, align 8
  %67 = getelementptr inbounds %struct.nvkm_umem, %struct.nvkm_umem* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @nvkm_memory_size(i32 %68)
  %70 = load i64*, i64** %13, align 8
  store i64 %69, i64* %70, align 8
  %71 = load i32, i32* @NVKM_OBJECT_MAP_VA, align 4
  %72 = load i32*, i32** %11, align 8
  store i32 %71, i32* %72, align 4
  store i32 0, i32* %7, align 4
  br label %124

73:                                               ; preds = %45, %38
  %74 = load %struct.nvkm_umem*, %struct.nvkm_umem** %14, align 8
  %75 = getelementptr inbounds %struct.nvkm_umem, %struct.nvkm_umem* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @NVKM_MEM_VRAM, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = load %struct.nvkm_umem*, %struct.nvkm_umem** %14, align 8
  %82 = getelementptr inbounds %struct.nvkm_umem, %struct.nvkm_umem* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @NVKM_MEM_KIND, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %112

87:                                               ; preds = %80, %73
  %88 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %15, align 8
  %89 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32 (%struct.nvkm_mmu*, i32, i8*, i32, i64*, i64*, i32*)*, i32 (%struct.nvkm_mmu*, i32, i8*, i32, i64*, i64*, i32*)** %92, align 8
  %94 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %15, align 8
  %95 = load %struct.nvkm_umem*, %struct.nvkm_umem** %14, align 8
  %96 = getelementptr inbounds %struct.nvkm_umem, %struct.nvkm_umem* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %9, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i64*, i64** %12, align 8
  %101 = load i64*, i64** %13, align 8
  %102 = load %struct.nvkm_umem*, %struct.nvkm_umem** %14, align 8
  %103 = getelementptr inbounds %struct.nvkm_umem, %struct.nvkm_umem* %102, i32 0, i32 2
  %104 = call i32 %93(%struct.nvkm_mmu* %94, i32 %97, i8* %98, i32 %99, i64* %100, i64* %101, i32* %103)
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %17, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %87
  %108 = load i32, i32* %17, align 4
  store i32 %108, i32* %7, align 4
  br label %124

109:                                              ; preds = %87
  %110 = load i32, i32* @NVKM_OBJECT_MAP_IO, align 4
  %111 = load i32*, i32** %11, align 8
  store i32 %110, i32* %111, align 4
  br label %115

112:                                              ; preds = %80
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %7, align 4
  br label %124

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @NVKM_OBJECT_MAP_IO, align 4
  %120 = icmp eq i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load %struct.nvkm_umem*, %struct.nvkm_umem** %14, align 8
  %123 = getelementptr inbounds %struct.nvkm_umem, %struct.nvkm_umem* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %116, %112, %107, %59, %57, %35, %27
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local %struct.nvkm_umem* @nvkm_umem(%struct.nvkm_object*) #1

declare dso_local i32 @nvkm_mem_map_host(i32, i64*) #1

declare dso_local i64 @nvkm_memory_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
