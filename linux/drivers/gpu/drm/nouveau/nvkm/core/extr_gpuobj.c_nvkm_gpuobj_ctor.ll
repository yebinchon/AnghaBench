; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_gpuobj.c_nvkm_gpuobj_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_gpuobj.c_nvkm_gpuobj_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_gpuobj = type { i64, i32, i32, i64, i32*, %struct.TYPE_3__*, %struct.nvkm_gpuobj* }
%struct.TYPE_3__ = type { i64, i64 }

@nvkm_gpuobj_func = common dso_local global i32 0, align 4
@NVKM_MEM_TARGET_INST = common dso_local global i32 0, align 4
@nvkm_gpuobj_heap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_device*, i64, i32, i32, %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj*)* @nvkm_gpuobj_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_gpuobj_ctor(%struct.nvkm_device* %0, i64 %1, i32 %2, i32 %3, %struct.nvkm_gpuobj* %4, %struct.nvkm_gpuobj* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nvkm_gpuobj*, align 8
  %13 = alloca %struct.nvkm_gpuobj*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.nvkm_gpuobj* %4, %struct.nvkm_gpuobj** %12, align 8
  store %struct.nvkm_gpuobj* %5, %struct.nvkm_gpuobj** %13, align 8
  %16 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %12, align 8
  %17 = icmp ne %struct.nvkm_gpuobj* %16, null
  br i1 %17, label %18, label %92

18:                                               ; preds = %6
  %19 = load i32, i32* %10, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %12, align 8
  %23 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %22, i32 0, i32 1
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @max(i32 %26, i32 1)
  %28 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %13, align 8
  %29 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %28, i32 0, i32 5
  %30 = call i32 @nvkm_mm_head(i32* %23, i32 0, i32 1, i64 %24, i64 %25, i32 %27, %struct.TYPE_3__** %29)
  store i32 %30, i32* %15, align 4
  br label %41

31:                                               ; preds = %18
  %32 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %12, align 8
  %33 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %32, i32 0, i32 1
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 0, %36
  %38 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %13, align 8
  %39 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %38, i32 0, i32 5
  %40 = call i32 @nvkm_mm_tail(i32* %33, i32 0, i32 1, i64 %34, i64 %35, i32 %37, %struct.TYPE_3__** %39)
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %31, %21
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %15, align 4
  store i32 %45, i32* %7, align 4
  br label %128

46:                                               ; preds = %41
  %47 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %12, align 8
  %48 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %13, align 8
  %49 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %48, i32 0, i32 6
  store %struct.nvkm_gpuobj* %47, %struct.nvkm_gpuobj** %49, align 8
  %50 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %13, align 8
  %51 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %50, i32 0, i32 4
  store i32* @nvkm_gpuobj_func, i32** %51, align 8
  %52 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %12, align 8
  %53 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %13, align 8
  %56 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %55, i32 0, i32 5
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %54, %59
  %61 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %13, align 8
  %62 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %61, i32 0, i32 3
  store i64 %60, i64* %62, align 8
  %63 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %13, align 8
  %64 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %63, i32 0, i32 5
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %13, align 8
  %69 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %46
  %73 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %13, align 8
  %74 = call i32 @nvkm_kmap(%struct.nvkm_gpuobj* %73)
  store i64 0, i64* %14, align 8
  br label %75

75:                                               ; preds = %85, %72
  %76 = load i64, i64* %14, align 8
  %77 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %13, align 8
  %78 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %13, align 8
  %83 = load i64, i64* %14, align 8
  %84 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %82, i64 %83, i32 0)
  br label %85

85:                                               ; preds = %81
  %86 = load i64, i64* %14, align 8
  %87 = add nsw i64 %86, 4
  store i64 %87, i64* %14, align 8
  br label %75

88:                                               ; preds = %75
  %89 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %13, align 8
  %90 = call i32 @nvkm_done(%struct.nvkm_gpuobj* %89)
  br label %91

91:                                               ; preds = %88, %46
  br label %121

92:                                               ; preds = %6
  %93 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %94 = load i32, i32* @NVKM_MEM_TARGET_INST, align 4
  %95 = load i64, i64* %9, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @abs(i32 %96) #3
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %13, align 8
  %100 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %99, i32 0, i32 2
  %101 = call i32 @nvkm_memory_new(%struct.nvkm_device* %93, i32 %94, i64 %95, i32 %97, i32 %98, i32* %100)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %92
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %7, align 4
  br label %128

106:                                              ; preds = %92
  %107 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %13, align 8
  %108 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %107, i32 0, i32 4
  store i32* @nvkm_gpuobj_heap, i32** %108, align 8
  %109 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %13, align 8
  %110 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @nvkm_memory_addr(i32 %111)
  %113 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %13, align 8
  %114 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %113, i32 0, i32 3
  store i64 %112, i64* %114, align 8
  %115 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %13, align 8
  %116 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @nvkm_memory_size(i32 %117)
  %119 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %13, align 8
  %120 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %106, %91
  %122 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %13, align 8
  %123 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %122, i32 0, i32 1
  %124 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %13, align 8
  %125 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @nvkm_mm_init(i32* %123, i32 0, i32 0, i64 %126, i32 1)
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %121, %104, %44
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local i32 @nvkm_mm_head(i32*, i32, i32, i64, i64, i32, %struct.TYPE_3__**) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @nvkm_mm_tail(i32*, i32, i32, i64, i64, i32, %struct.TYPE_3__**) #1

declare dso_local i32 @nvkm_kmap(%struct.nvkm_gpuobj*) #1

declare dso_local i32 @nvkm_wo32(%struct.nvkm_gpuobj*, i64, i32) #1

declare dso_local i32 @nvkm_done(%struct.nvkm_gpuobj*) #1

declare dso_local i32 @nvkm_memory_new(%struct.nvkm_device*, i32, i64, i32, i32, i32*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i64 @nvkm_memory_addr(i32) #1

declare dso_local i64 @nvkm_memory_size(i32) #1

declare dso_local i32 @nvkm_mm_init(i32*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
