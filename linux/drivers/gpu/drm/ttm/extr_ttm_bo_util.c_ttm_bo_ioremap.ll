; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_ioremap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_ioremap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.ttm_mem_reg }
%struct.ttm_mem_reg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.ttm_bo_kmap_obj = type { i8*, i32 }

@ttm_bo_map_premapped = common dso_local global i32 0, align 4
@ttm_bo_map_iomap = common dso_local global i32 0, align 4
@TTM_PL_FLAG_WC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i64, i64, %struct.ttm_bo_kmap_obj*)* @ttm_bo_ioremap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_ioremap(%struct.ttm_buffer_object* %0, i64 %1, i64 %2, %struct.ttm_bo_kmap_obj* %3) #0 {
  %5 = alloca %struct.ttm_buffer_object*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ttm_bo_kmap_obj*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.ttm_bo_kmap_obj* %3, %struct.ttm_bo_kmap_obj** %8, align 8
  %10 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %11 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %10, i32 0, i32 0
  store %struct.ttm_mem_reg* %11, %struct.ttm_mem_reg** %9, align 8
  %12 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %13 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %4
  %19 = load i32, i32* @ttm_bo_map_premapped, align 4
  %20 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %8, align 8
  %21 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %23 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = bitcast i32* %29 to i8*
  %31 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %8, align 8
  %32 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  br label %80

33:                                               ; preds = %4
  %34 = load i32, i32* @ttm_bo_map_iomap, align 4
  %35 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %8, align 8
  %36 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %38 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @TTM_PL_FLAG_WC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %33
  %44 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %45 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %50 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %48, %53
  %55 = load i64, i64* %6, align 8
  %56 = add i64 %54, %55
  %57 = load i64, i64* %7, align 8
  %58 = call i8* @ioremap_wc(i64 %56, i64 %57)
  %59 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %8, align 8
  %60 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  br label %79

61:                                               ; preds = %33
  %62 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %63 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %68 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %66, %71
  %73 = load i64, i64* %6, align 8
  %74 = add i64 %72, %73
  %75 = load i64, i64* %7, align 8
  %76 = call i8* @ioremap_nocache(i64 %74, i64 %75)
  %77 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %8, align 8
  %78 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %61, %43
  br label %80

80:                                               ; preds = %79, %18
  %81 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %8, align 8
  %82 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  br label %89

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %85
  %90 = phi i32 [ %87, %85 ], [ 0, %88 ]
  ret i32 %90
}

declare dso_local i8* @ioremap_wc(i64, i64) #1

declare dso_local i8* @ioremap_nocache(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
