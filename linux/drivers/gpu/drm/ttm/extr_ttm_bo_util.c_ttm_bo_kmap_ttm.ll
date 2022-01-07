; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_kmap_ttm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_kmap_ttm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.ttm_tt*, %struct.ttm_mem_reg }
%struct.ttm_tt = type { i32* }
%struct.ttm_mem_reg = type { i32 }
%struct.ttm_bo_kmap_obj = type { i32, i32, i32 }
%struct.ttm_operation_ctx = type { i32, i32 }

@TTM_PL_FLAG_CACHED = common dso_local global i32 0, align 4
@ttm_bo_map_kmap = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@ttm_bo_map_vmap = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i64, i64, %struct.ttm_bo_kmap_obj*)* @ttm_bo_kmap_ttm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_kmap_ttm(%struct.ttm_buffer_object* %0, i64 %1, i64 %2, %struct.ttm_bo_kmap_obj* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ttm_bo_kmap_obj*, align 8
  %10 = alloca %struct.ttm_mem_reg*, align 8
  %11 = alloca %struct.ttm_operation_ctx, align 4
  %12 = alloca %struct.ttm_tt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ttm_bo_kmap_obj* %3, %struct.ttm_bo_kmap_obj** %9, align 8
  %15 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %16 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %15, i32 0, i32 1
  store %struct.ttm_mem_reg* %16, %struct.ttm_mem_reg** %10, align 8
  %17 = bitcast %struct.ttm_operation_ctx* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 8, i1 false)
  %18 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %19 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %18, i32 0, i32 0
  %20 = load %struct.ttm_tt*, %struct.ttm_tt** %19, align 8
  store %struct.ttm_tt* %20, %struct.ttm_tt** %12, align 8
  %21 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %22 = icmp ne %struct.ttm_tt* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %27 = call i32 @ttm_tt_populate(%struct.ttm_tt* %26, %struct.ttm_operation_ctx* %11)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %5, align 4
  br label %90

32:                                               ; preds = %4
  %33 = load i64, i64* %8, align 8
  %34 = icmp eq i64 %33, 1
  br i1 %34, label %35, label %60

35:                                               ; preds = %32
  %36 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %37 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TTM_PL_FLAG_CACHED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %35
  %43 = load i32, i32* @ttm_bo_map_kmap, align 4
  %44 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %45 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %47 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %53 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %55 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @kmap(i32 %56)
  %58 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %59 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %79

60:                                               ; preds = %35, %32
  %61 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %62 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PAGE_KERNEL, align 4
  %65 = call i32 @ttm_io_prot(i32 %63, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* @ttm_bo_map_vmap, align 4
  %67 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %68 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %70 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i64, i64* %8, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @vmap(i32* %73, i64 %74, i32 0, i32 %75)
  %77 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %78 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %60, %42
  %80 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %81 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  br label %88

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87, %84
  %89 = phi i32 [ %86, %84 ], [ 0, %87 ]
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %88, %30
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @ttm_tt_populate(%struct.ttm_tt*, %struct.ttm_operation_ctx*) #2

declare dso_local i32 @kmap(i32) #2

declare dso_local i32 @ttm_io_prot(i32, i32) #2

declare dso_local i32 @vmap(i32*, i64, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
