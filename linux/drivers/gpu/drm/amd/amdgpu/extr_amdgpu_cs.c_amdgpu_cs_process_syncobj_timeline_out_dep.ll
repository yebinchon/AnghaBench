; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_process_syncobj_timeline_out_dep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_process_syncobj_timeline_out_dep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_cs_parser = type { i64, i32, %struct.amdgpu_cs_post_dep* }
%struct.amdgpu_cs_post_dep = type { i64, i32*, i32 }
%struct.amdgpu_cs_chunk = type { i32, i64 }
%struct.drm_amdgpu_cs_chunk_syncobj = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_cs_parser*, %struct.amdgpu_cs_chunk*)* @amdgpu_cs_process_syncobj_timeline_out_dep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_cs_process_syncobj_timeline_out_dep(%struct.amdgpu_cs_parser* %0, %struct.amdgpu_cs_chunk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_cs_parser*, align 8
  %5 = alloca %struct.amdgpu_cs_chunk*, align 8
  %6 = alloca %struct.drm_amdgpu_cs_chunk_syncobj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_cs_post_dep*, align 8
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
  %19 = udiv i64 %18, 16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %22 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %21, i32 0, i32 2
  %23 = load %struct.amdgpu_cs_post_dep*, %struct.amdgpu_cs_post_dep** %22, align 8
  %24 = icmp ne %struct.amdgpu_cs_post_dep* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %118

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.amdgpu_cs_post_dep* @kmalloc_array(i32 %29, i32 24, i32 %30)
  %32 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %33 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %32, i32 0, i32 2
  store %struct.amdgpu_cs_post_dep* %31, %struct.amdgpu_cs_post_dep** %33, align 8
  %34 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %35 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %37 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %36, i32 0, i32 2
  %38 = load %struct.amdgpu_cs_post_dep*, %struct.amdgpu_cs_post_dep** %37, align 8
  %39 = icmp ne %struct.amdgpu_cs_post_dep* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %28
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %118

43:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %114, %43
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %117

48:                                               ; preds = %44
  %49 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %50 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %49, i32 0, i32 2
  %51 = load %struct.amdgpu_cs_post_dep*, %struct.amdgpu_cs_post_dep** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.amdgpu_cs_post_dep, %struct.amdgpu_cs_post_dep* %51, i64 %53
  store %struct.amdgpu_cs_post_dep* %54, %struct.amdgpu_cs_post_dep** %9, align 8
  %55 = load %struct.amdgpu_cs_post_dep*, %struct.amdgpu_cs_post_dep** %9, align 8
  %56 = getelementptr inbounds %struct.amdgpu_cs_post_dep, %struct.amdgpu_cs_post_dep* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  %57 = load %struct.drm_amdgpu_cs_chunk_syncobj*, %struct.drm_amdgpu_cs_chunk_syncobj** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_syncobj, %struct.drm_amdgpu_cs_chunk_syncobj* %57, i64 %59
  %61 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_syncobj, %struct.drm_amdgpu_cs_chunk_syncobj* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %48
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i32* @kmalloc(i32 4, i32 %65)
  %67 = load %struct.amdgpu_cs_post_dep*, %struct.amdgpu_cs_post_dep** %9, align 8
  %68 = getelementptr inbounds %struct.amdgpu_cs_post_dep, %struct.amdgpu_cs_post_dep* %67, i32 0, i32 1
  store i32* %66, i32** %68, align 8
  %69 = load %struct.amdgpu_cs_post_dep*, %struct.amdgpu_cs_post_dep** %9, align 8
  %70 = getelementptr inbounds %struct.amdgpu_cs_post_dep, %struct.amdgpu_cs_post_dep* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %64
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %118

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %48
  %78 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %79 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.drm_amdgpu_cs_chunk_syncobj*, %struct.drm_amdgpu_cs_chunk_syncobj** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_syncobj, %struct.drm_amdgpu_cs_chunk_syncobj* %81, i64 %83
  %85 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_syncobj, %struct.drm_amdgpu_cs_chunk_syncobj* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @drm_syncobj_find(i32 %80, i32 %86)
  %88 = load %struct.amdgpu_cs_post_dep*, %struct.amdgpu_cs_post_dep** %9, align 8
  %89 = getelementptr inbounds %struct.amdgpu_cs_post_dep, %struct.amdgpu_cs_post_dep* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.amdgpu_cs_post_dep*, %struct.amdgpu_cs_post_dep** %9, align 8
  %91 = getelementptr inbounds %struct.amdgpu_cs_post_dep, %struct.amdgpu_cs_post_dep* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %77
  %95 = load %struct.amdgpu_cs_post_dep*, %struct.amdgpu_cs_post_dep** %9, align 8
  %96 = getelementptr inbounds %struct.amdgpu_cs_post_dep, %struct.amdgpu_cs_post_dep* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @kfree(i32* %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %118

101:                                              ; preds = %77
  %102 = load %struct.drm_amdgpu_cs_chunk_syncobj*, %struct.drm_amdgpu_cs_chunk_syncobj** %6, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_syncobj, %struct.drm_amdgpu_cs_chunk_syncobj* %102, i64 %104
  %106 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_syncobj, %struct.drm_amdgpu_cs_chunk_syncobj* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.amdgpu_cs_post_dep*, %struct.amdgpu_cs_post_dep** %9, align 8
  %109 = getelementptr inbounds %struct.amdgpu_cs_post_dep, %struct.amdgpu_cs_post_dep* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %111 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %111, align 8
  br label %114

114:                                              ; preds = %101
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %44

117:                                              ; preds = %44
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %94, %73, %40, %25
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.amdgpu_cs_post_dep* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @drm_syncobj_find(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
