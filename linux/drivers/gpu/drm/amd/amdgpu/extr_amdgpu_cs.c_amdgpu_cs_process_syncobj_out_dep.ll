; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_process_syncobj_out_dep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_process_syncobj_out_dep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_cs_parser = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32*, i32 }
%struct.amdgpu_cs_chunk = type { i32, i64 }
%struct.drm_amdgpu_cs_chunk_sem = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_cs_parser*, %struct.amdgpu_cs_chunk*)* @amdgpu_cs_process_syncobj_out_dep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_cs_process_syncobj_out_dep(%struct.amdgpu_cs_parser* %0, %struct.amdgpu_cs_chunk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_cs_parser*, align 8
  %5 = alloca %struct.amdgpu_cs_chunk*, align 8
  %6 = alloca %struct.drm_amdgpu_cs_chunk_sem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_cs_parser* %0, %struct.amdgpu_cs_parser** %4, align 8
  store %struct.amdgpu_cs_chunk* %1, %struct.amdgpu_cs_chunk** %5, align 8
  %9 = load %struct.amdgpu_cs_chunk*, %struct.amdgpu_cs_chunk** %5, align 8
  %10 = getelementptr inbounds %struct.amdgpu_cs_chunk, %struct.amdgpu_cs_chunk* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.drm_amdgpu_cs_chunk_sem*
  store %struct.drm_amdgpu_cs_chunk_sem* %12, %struct.drm_amdgpu_cs_chunk_sem** %6, align 8
  %13 = load %struct.amdgpu_cs_chunk*, %struct.amdgpu_cs_chunk** %5, align 8
  %14 = getelementptr inbounds %struct.amdgpu_cs_chunk, %struct.amdgpu_cs_chunk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 %15, 4
  %17 = sext i32 %16 to i64
  %18 = udiv i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %21 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %100

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.TYPE_2__* @kmalloc_array(i32 %28, i32 24, i32 %29)
  %31 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %32 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %31, i32 0, i32 1
  store %struct.TYPE_2__* %30, %struct.TYPE_2__** %32, align 8
  %33 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %34 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %36 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = icmp ne %struct.TYPE_2__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %100

42:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %96, %42
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %99

47:                                               ; preds = %43
  %48 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %49 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.drm_amdgpu_cs_chunk_sem*, %struct.drm_amdgpu_cs_chunk_sem** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_sem, %struct.drm_amdgpu_cs_chunk_sem* %51, i64 %53
  %55 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_sem, %struct.drm_amdgpu_cs_chunk_sem* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @drm_syncobj_find(i32 %50, i32 %56)
  %58 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %59 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i32 %57, i32* %64, align 8
  %65 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %66 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %47
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %100

77:                                               ; preds = %47
  %78 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %79 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i32* null, i32** %84, align 8
  %85 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %86 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %93 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %77
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %43

99:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %74, %39, %24
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.TYPE_2__* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @drm_syncobj_find(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
