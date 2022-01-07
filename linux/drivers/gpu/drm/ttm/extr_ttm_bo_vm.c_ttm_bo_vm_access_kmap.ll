; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_vm.c_ttm_bo_vm_access_kmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_vm.c_ttm_bo_vm_access_kmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32 }
%struct.ttm_bo_kmap_obj = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i64, i8*, i32, i32)* @ttm_bo_vm_access_kmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_vm_access_kmap(%struct.ttm_buffer_object* %0, i64 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.ttm_bo_kmap_obj, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @PAGE_SHIFT, align 8
  %21 = lshr i64 %19, %20
  store i64 %21, i64* %12, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = shl i64 %24, %25
  %27 = load i64, i64* %8, align 8
  %28 = sub i64 %27, %26
  store i64 %28, i64* %8, align 8
  br label %29

29:                                               ; preds = %71, %5
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = load i64, i64* %8, align 8
  %33 = sub i64 %31, %32
  %34 = call i64 @min(i64 %30, i64 %33)
  store i64 %34, i64* %15, align 8
  %35 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @ttm_bo_kmap(%struct.ttm_buffer_object* %35, i64 %36, i32 1, %struct.ttm_bo_kmap_obj* %16)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %6, align 4
  br label %76

42:                                               ; preds = %29
  %43 = call i64 @ttm_kmap_obj_virtual(%struct.ttm_bo_kmap_obj* %16, i32* %18)
  %44 = inttoptr i64 %43 to i8*
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr i8, i8* %44, i64 %45
  store i8* %46, i8** %17, align 8
  %47 = load i32, i32* %18, align 4
  %48 = call i32 @WARN_ON_ONCE(i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load i8*, i8** %17, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i64, i64* %15, align 8
  %55 = call i32 @memcpy(i8* %52, i8* %53, i64 %54)
  br label %61

56:                                               ; preds = %42
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %17, align 8
  %59 = load i64, i64* %15, align 8
  %60 = call i32 @memcpy(i8* %57, i8* %58, i64 %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = call i32 @ttm_bo_kunmap(%struct.ttm_bo_kmap_obj* %16)
  %63 = load i64, i64* %12, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %15, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr i8, i8* %66, i64 %65
  store i8* %67, i8** %9, align 8
  %68 = load i64, i64* %15, align 8
  %69 = load i64, i64* %13, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %13, align 8
  store i64 0, i64* %8, align 8
  br label %71

71:                                               ; preds = %61
  %72 = load i64, i64* %13, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %29, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %74, %40
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @ttm_bo_kmap(%struct.ttm_buffer_object*, i64, i32, %struct.ttm_bo_kmap_obj*) #1

declare dso_local i64 @ttm_kmap_obj_virtual(%struct.ttm_bo_kmap_obj*, i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @ttm_bo_kunmap(%struct.ttm_bo_kmap_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
