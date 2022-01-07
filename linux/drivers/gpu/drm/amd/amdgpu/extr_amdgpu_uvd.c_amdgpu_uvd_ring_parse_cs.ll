; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_uvd.c_amdgpu_uvd_ring_parse_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_uvd.c_amdgpu_uvd_ring_parse_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_cs_parser = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32*, %struct.amdgpu_ib* }
%struct.amdgpu_ib = type { i32, i32, i32 }
%struct.amdgpu_uvd_cs_ctx = type { i32*, i64, i32, %struct.amdgpu_cs_parser* }

@__const.amdgpu_uvd_ring_parse_cs.buf_sizes = private unnamed_addr constant [5 x i32] [i32 2048, i32 -1, i32 -1, i32 2048, i32 -1], align 16
@.str = private unnamed_addr constant [43 x i8] c"UVD IB length (%d) not 16 dwords aligned!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@amdgpu_uvd_cs_pass1 = common dso_local global i32 0, align 4
@amdgpu_uvd_cs_pass2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"UVD-IBs need a msg command!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_uvd_ring_parse_cs(%struct.amdgpu_cs_parser* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_cs_parser*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.amdgpu_uvd_cs_ctx, align 8
  %7 = alloca [5 x i32], align 16
  %8 = alloca %struct.amdgpu_ib*, align 8
  %9 = alloca i32, align 4
  store %struct.amdgpu_cs_parser* %0, %struct.amdgpu_cs_parser** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = bitcast %struct.amdgpu_uvd_cs_ctx* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 32, i1 false)
  %11 = bitcast [5 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([5 x i32]* @__const.amdgpu_uvd_ring_parse_cs.buf_sizes to i8*), i64 20, i1 false)
  %12 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %16, i64 %17
  store %struct.amdgpu_ib* %18, %struct.amdgpu_ib** %8, align 8
  %19 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %20 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %8, align 8
  %24 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @amdgpu_sa_bo_gpu_addr(i32 %25)
  %27 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %8, align 8
  %28 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %8, align 8
  %30 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = srem i32 %31, 16
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %8, align 8
  %36 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %79

41:                                               ; preds = %2
  %42 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %43 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %6, i32 0, i32 3
  store %struct.amdgpu_cs_parser* %42, %struct.amdgpu_cs_parser** %43, align 8
  %44 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %45 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %6, i32 0, i32 0
  store i32* %44, i32** %45, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %6, i32 0, i32 1
  store i64 %46, i64* %47, align 8
  %48 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %49 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %41
  %56 = load i32, i32* @amdgpu_uvd_cs_pass1, align 4
  %57 = call i32 @amdgpu_uvd_cs_packets(%struct.amdgpu_uvd_cs_ctx* %6, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %79

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %41
  %64 = load i32, i32* @amdgpu_uvd_cs_pass2, align 4
  %65 = call i32 @amdgpu_uvd_cs_packets(%struct.amdgpu_uvd_cs_ctx* %6, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %79

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %6, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %79

78:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %74, %68, %60, %34
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @amdgpu_sa_bo_gpu_addr(i32) #2

declare dso_local i32 @DRM_ERROR(i8*, ...) #2

declare dso_local i32 @amdgpu_uvd_cs_packets(%struct.amdgpu_uvd_cs_ctx*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
