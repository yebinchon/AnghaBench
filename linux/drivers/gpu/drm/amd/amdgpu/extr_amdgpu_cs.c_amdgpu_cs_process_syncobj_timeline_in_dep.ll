; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_process_syncobj_timeline_in_dep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_process_syncobj_timeline_in_dep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_cs_parser = type { i32 }
%struct.amdgpu_cs_chunk = type { i32, i64 }
%struct.drm_amdgpu_cs_chunk_syncobj = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_cs_parser*, %struct.amdgpu_cs_chunk*)* @amdgpu_cs_process_syncobj_timeline_in_dep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_cs_process_syncobj_timeline_in_dep(%struct.amdgpu_cs_parser* %0, %struct.amdgpu_cs_chunk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_cs_parser*, align 8
  %5 = alloca %struct.amdgpu_cs_chunk*, align 8
  %6 = alloca %struct.drm_amdgpu_cs_chunk_syncobj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_cs_parser* %0, %struct.amdgpu_cs_parser** %4, align 8
  store %struct.amdgpu_cs_chunk* %1, %struct.amdgpu_cs_chunk** %5, align 8
  %10 = load %struct.amdgpu_cs_chunk*, %struct.amdgpu_cs_chunk** %5, align 8
  %11 = getelementptr inbounds %struct.amdgpu_cs_chunk, %struct.amdgpu_cs_chunk* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.drm_amdgpu_cs_chunk_syncobj*
  store %struct.drm_amdgpu_cs_chunk_syncobj* %13, %struct.drm_amdgpu_cs_chunk_syncobj** %6, align 8
  %14 = load %struct.amdgpu_cs_chunk*, %struct.amdgpu_cs_chunk** %5, align 8
  %15 = getelementptr inbounds %struct.amdgpu_cs_chunk, %struct.amdgpu_cs_chunk* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 4
  %18 = sext i32 %17 to i64
  %19 = udiv i64 %18, 12
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %51, %2
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %21
  %26 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %27 = load %struct.drm_amdgpu_cs_chunk_syncobj*, %struct.drm_amdgpu_cs_chunk_syncobj** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_syncobj, %struct.drm_amdgpu_cs_chunk_syncobj* %27, i64 %29
  %31 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_syncobj, %struct.drm_amdgpu_cs_chunk_syncobj* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.drm_amdgpu_cs_chunk_syncobj*, %struct.drm_amdgpu_cs_chunk_syncobj** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_syncobj, %struct.drm_amdgpu_cs_chunk_syncobj* %33, i64 %35
  %37 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_syncobj, %struct.drm_amdgpu_cs_chunk_syncobj* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.drm_amdgpu_cs_chunk_syncobj*, %struct.drm_amdgpu_cs_chunk_syncobj** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_syncobj, %struct.drm_amdgpu_cs_chunk_syncobj* %39, i64 %41
  %43 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_syncobj, %struct.drm_amdgpu_cs_chunk_syncobj* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @amdgpu_syncobj_lookup_and_add_to_sync(%struct.amdgpu_cs_parser* %26, i32 %32, i32 %38, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %25
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %55

50:                                               ; preds = %25
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %21

54:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %48
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @amdgpu_syncobj_lookup_and_add_to_sync(%struct.amdgpu_cs_parser*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
