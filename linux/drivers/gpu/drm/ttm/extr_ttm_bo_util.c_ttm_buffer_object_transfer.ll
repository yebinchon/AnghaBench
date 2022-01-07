; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_buffer_object_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_buffer_object_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_8__, i64, i32*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32*, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ttm_transfer_obj = type { %struct.ttm_buffer_object, %struct.ttm_buffer_object* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TTM_PL_FLAG_NO_EVICT = common dso_local global i32 0, align 4
@ttm_transfered_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, %struct.ttm_buffer_object**)* @ttm_buffer_object_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_buffer_object_transfer(%struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca %struct.ttm_buffer_object**, align 8
  %6 = alloca %struct.ttm_transfer_obj*, align 8
  %7 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %4, align 8
  store %struct.ttm_buffer_object** %1, %struct.ttm_buffer_object*** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ttm_transfer_obj* @kmalloc(i32 104, i32 %8)
  store %struct.ttm_transfer_obj* %9, %struct.ttm_transfer_obj** %6, align 8
  %10 = load %struct.ttm_transfer_obj*, %struct.ttm_transfer_obj** %6, align 8
  %11 = icmp ne %struct.ttm_transfer_obj* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %114

15:                                               ; preds = %2
  %16 = load %struct.ttm_transfer_obj*, %struct.ttm_transfer_obj** %6, align 8
  %17 = getelementptr inbounds %struct.ttm_transfer_obj, %struct.ttm_transfer_obj* %16, i32 0, i32 0
  %18 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %19 = bitcast %struct.ttm_buffer_object* %17 to i8*
  %20 = bitcast %struct.ttm_buffer_object* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 96, i1 false)
  %21 = load i32, i32* @TTM_PL_FLAG_NO_EVICT, align 4
  %22 = load %struct.ttm_transfer_obj*, %struct.ttm_transfer_obj** %6, align 8
  %23 = getelementptr inbounds %struct.ttm_transfer_obj, %struct.ttm_transfer_obj* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %23, i32 0, i32 13
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %21
  store i32 %27, i32* %25, align 8
  %28 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %29 = call i32 @ttm_bo_get(%struct.ttm_buffer_object* %28)
  %30 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %31 = load %struct.ttm_transfer_obj*, %struct.ttm_transfer_obj** %6, align 8
  %32 = getelementptr inbounds %struct.ttm_transfer_obj, %struct.ttm_transfer_obj* %31, i32 0, i32 1
  store %struct.ttm_buffer_object* %30, %struct.ttm_buffer_object** %32, align 8
  %33 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %34 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %33, i32 0, i32 12
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = call i32 @atomic_inc(i32* %38)
  %40 = load %struct.ttm_transfer_obj*, %struct.ttm_transfer_obj** %6, align 8
  %41 = getelementptr inbounds %struct.ttm_transfer_obj, %struct.ttm_transfer_obj* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %41, i32 0, i32 11
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.ttm_transfer_obj*, %struct.ttm_transfer_obj** %6, align 8
  %45 = getelementptr inbounds %struct.ttm_transfer_obj, %struct.ttm_transfer_obj* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %45, i32 0, i32 10
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.ttm_transfer_obj*, %struct.ttm_transfer_obj** %6, align 8
  %49 = getelementptr inbounds %struct.ttm_transfer_obj, %struct.ttm_transfer_obj* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %49, i32 0, i32 9
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.ttm_transfer_obj*, %struct.ttm_transfer_obj** %6, align 8
  %53 = getelementptr inbounds %struct.ttm_transfer_obj, %struct.ttm_transfer_obj* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %53, i32 0, i32 8
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.ttm_transfer_obj*, %struct.ttm_transfer_obj** %6, align 8
  %57 = getelementptr inbounds %struct.ttm_transfer_obj, %struct.ttm_transfer_obj* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %57, i32 0, i32 7
  %59 = call i32 @mutex_init(i32* %58)
  %60 = load %struct.ttm_transfer_obj*, %struct.ttm_transfer_obj** %6, align 8
  %61 = getelementptr inbounds %struct.ttm_transfer_obj, %struct.ttm_transfer_obj* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %61, i32 0, i32 6
  store i32* null, i32** %62, align 8
  %63 = load %struct.ttm_transfer_obj*, %struct.ttm_transfer_obj** %6, align 8
  %64 = getelementptr inbounds %struct.ttm_transfer_obj, %struct.ttm_transfer_obj* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = call i32 @drm_vma_node_reset(i32* %66)
  %68 = load %struct.ttm_transfer_obj*, %struct.ttm_transfer_obj** %6, align 8
  %69 = getelementptr inbounds %struct.ttm_transfer_obj, %struct.ttm_transfer_obj* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %69, i32 0, i32 5
  %71 = call i32 @atomic_set(i32* %70, i32 0)
  %72 = load %struct.ttm_transfer_obj*, %struct.ttm_transfer_obj** %6, align 8
  %73 = getelementptr inbounds %struct.ttm_transfer_obj, %struct.ttm_transfer_obj* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %73, i32 0, i32 4
  %75 = call i32 @kref_init(i32* %74)
  %76 = load %struct.ttm_transfer_obj*, %struct.ttm_transfer_obj** %6, align 8
  %77 = getelementptr inbounds %struct.ttm_transfer_obj, %struct.ttm_transfer_obj* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %77, i32 0, i32 3
  %79 = call i32 @kref_init(i32* %78)
  %80 = load %struct.ttm_transfer_obj*, %struct.ttm_transfer_obj** %6, align 8
  %81 = getelementptr inbounds %struct.ttm_transfer_obj, %struct.ttm_transfer_obj* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %81, i32 0, i32 2
  store i32* @ttm_transfered_destroy, i32** %82, align 8
  %83 = load %struct.ttm_transfer_obj*, %struct.ttm_transfer_obj** %6, align 8
  %84 = getelementptr inbounds %struct.ttm_transfer_obj, %struct.ttm_transfer_obj* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.ttm_transfer_obj*, %struct.ttm_transfer_obj** %6, align 8
  %87 = getelementptr inbounds %struct.ttm_transfer_obj, %struct.ttm_transfer_obj* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load %struct.ttm_transfer_obj*, %struct.ttm_transfer_obj** %6, align 8
  %91 = getelementptr inbounds %struct.ttm_transfer_obj, %struct.ttm_transfer_obj* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store i32* %89, i32** %93, align 8
  %94 = load %struct.ttm_transfer_obj*, %struct.ttm_transfer_obj** %6, align 8
  %95 = getelementptr inbounds %struct.ttm_transfer_obj, %struct.ttm_transfer_obj* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @dma_resv_init(i32* %98)
  %100 = load %struct.ttm_transfer_obj*, %struct.ttm_transfer_obj** %6, align 8
  %101 = getelementptr inbounds %struct.ttm_transfer_obj, %struct.ttm_transfer_obj* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @dma_resv_trylock(i32* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i32 @WARN_ON(i32 %109)
  %111 = load %struct.ttm_transfer_obj*, %struct.ttm_transfer_obj** %6, align 8
  %112 = getelementptr inbounds %struct.ttm_transfer_obj, %struct.ttm_transfer_obj* %111, i32 0, i32 0
  %113 = load %struct.ttm_buffer_object**, %struct.ttm_buffer_object*** %5, align 8
  store %struct.ttm_buffer_object* %112, %struct.ttm_buffer_object** %113, align 8
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %15, %12
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.ttm_transfer_obj* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ttm_bo_get(%struct.ttm_buffer_object*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @drm_vma_node_reset(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @dma_resv_init(i32*) #1

declare dso_local i32 @dma_resv_trylock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
