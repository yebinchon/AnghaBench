; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_crat.c_fill_in_pcache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_crat.c_fill_in_pcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crat_subtype_cache = type { i32, i32, i8**, i32, i32, i32, i32 }
%struct.kfd_gpu_cache_info = type { i32, i32, i32, i32 }
%struct.kfd_cu_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CRAT_SUBTYPE_CACHE_AFFINITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crat_subtype_cache*, %struct.kfd_gpu_cache_info*, %struct.kfd_cu_info*, i32, i32, i32, i32, i32)* @fill_in_pcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_in_pcache(%struct.crat_subtype_cache* %0, %struct.kfd_gpu_cache_info* %1, %struct.kfd_cu_info* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.crat_subtype_cache*, align 8
  %11 = alloca %struct.kfd_gpu_cache_info*, align 8
  %12 = alloca %struct.kfd_cu_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.crat_subtype_cache* %0, %struct.crat_subtype_cache** %10, align 8
  store %struct.kfd_gpu_cache_info* %1, %struct.kfd_gpu_cache_info** %11, align 8
  store %struct.kfd_cu_info* %2, %struct.kfd_cu_info** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %20 = load i32, i32* %13, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ugt i64 32, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %8
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %123

26:                                               ; preds = %8
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* %18, align 4
  %30 = lshr i32 %29, %28
  store i32 %30, i32* %18, align 4
  %31 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** %11, align 8
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.kfd_gpu_cache_info, %struct.kfd_gpu_cache_info* %31, i64 %33
  %35 = getelementptr inbounds %struct.kfd_gpu_cache_info, %struct.kfd_gpu_cache_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 1, %36
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %18, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = call i32 @ffs(i32 %41)
  store i32 %42, i32* %19, align 4
  %43 = load i32, i32* %19, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %122

45:                                               ; preds = %26
  %46 = load %struct.crat_subtype_cache*, %struct.crat_subtype_cache** %10, align 8
  %47 = call i32 @memset(%struct.crat_subtype_cache* %46, i32 0, i32 32)
  %48 = load i32, i32* @CRAT_SUBTYPE_CACHE_AFFINITY, align 4
  %49 = load %struct.crat_subtype_cache*, %struct.crat_subtype_cache** %10, align 8
  %50 = getelementptr inbounds %struct.crat_subtype_cache, %struct.crat_subtype_cache* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 4
  %51 = load %struct.crat_subtype_cache*, %struct.crat_subtype_cache** %10, align 8
  %52 = getelementptr inbounds %struct.crat_subtype_cache, %struct.crat_subtype_cache* %51, i32 0, i32 0
  store i32 32, i32* %52, align 8
  %53 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** %11, align 8
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.kfd_gpu_cache_info, %struct.kfd_gpu_cache_info* %53, i64 %55
  %57 = getelementptr inbounds %struct.kfd_gpu_cache_info, %struct.kfd_gpu_cache_info* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.crat_subtype_cache*, %struct.crat_subtype_cache** %10, align 8
  %60 = getelementptr inbounds %struct.crat_subtype_cache, %struct.crat_subtype_cache* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %19, align 4
  %63 = sub nsw i32 %62, 1
  %64 = add i32 %61, %63
  %65 = load %struct.crat_subtype_cache*, %struct.crat_subtype_cache** %10, align 8
  %66 = getelementptr inbounds %struct.crat_subtype_cache, %struct.crat_subtype_cache* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** %11, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.kfd_gpu_cache_info, %struct.kfd_gpu_cache_info* %67, i64 %69
  %71 = getelementptr inbounds %struct.kfd_gpu_cache_info, %struct.kfd_gpu_cache_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.crat_subtype_cache*, %struct.crat_subtype_cache** %10, align 8
  %74 = getelementptr inbounds %struct.crat_subtype_cache, %struct.crat_subtype_cache* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** %11, align 8
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.kfd_gpu_cache_info, %struct.kfd_gpu_cache_info* %75, i64 %77
  %79 = getelementptr inbounds %struct.kfd_gpu_cache_info, %struct.kfd_gpu_cache_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.crat_subtype_cache*, %struct.crat_subtype_cache** %10, align 8
  %82 = getelementptr inbounds %struct.crat_subtype_cache, %struct.crat_subtype_cache* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %19, align 4
  %85 = sub nsw i32 %84, 1
  %86 = lshr i32 %83, %85
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %18, align 4
  %88 = and i32 %87, 255
  %89 = zext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = load %struct.crat_subtype_cache*, %struct.crat_subtype_cache** %10, align 8
  %92 = getelementptr inbounds %struct.crat_subtype_cache, %struct.crat_subtype_cache* %91, i32 0, i32 2
  %93 = load i8**, i8*** %92, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 0
  store i8* %90, i8** %94, align 8
  %95 = load i32, i32* %18, align 4
  %96 = lshr i32 %95, 8
  %97 = and i32 %96, 255
  %98 = zext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = load %struct.crat_subtype_cache*, %struct.crat_subtype_cache** %10, align 8
  %101 = getelementptr inbounds %struct.crat_subtype_cache, %struct.crat_subtype_cache* %100, i32 0, i32 2
  %102 = load i8**, i8*** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 1
  store i8* %99, i8** %103, align 8
  %104 = load i32, i32* %18, align 4
  %105 = lshr i32 %104, 16
  %106 = and i32 %105, 255
  %107 = zext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = load %struct.crat_subtype_cache*, %struct.crat_subtype_cache** %10, align 8
  %110 = getelementptr inbounds %struct.crat_subtype_cache, %struct.crat_subtype_cache* %109, i32 0, i32 2
  %111 = load i8**, i8*** %110, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 2
  store i8* %108, i8** %112, align 8
  %113 = load i32, i32* %18, align 4
  %114 = lshr i32 %113, 24
  %115 = and i32 %114, 255
  %116 = zext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.crat_subtype_cache*, %struct.crat_subtype_cache** %10, align 8
  %119 = getelementptr inbounds %struct.crat_subtype_cache, %struct.crat_subtype_cache* %118, i32 0, i32 2
  %120 = load i8**, i8*** %119, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 3
  store i8* %117, i8** %121, align 8
  store i32 0, i32* %9, align 4
  br label %123

122:                                              ; preds = %26
  store i32 1, i32* %9, align 4
  br label %123

123:                                              ; preds = %122, %45, %23
  %124 = load i32, i32* %9, align 4
  ret i32 %124
}

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @memset(%struct.crat_subtype_cache*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
