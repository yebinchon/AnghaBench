; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_vm.c_ttm_bo_vm_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_vm.c_ttm_bo_vm_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.ttm_buffer_object*, i32 }
%struct.ttm_buffer_object = type { i32, %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.ttm_buffer_object*, i64, i8*, i32, i32)* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_SWAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)* @ttm_bo_vm_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_vm_access(%struct.vm_area_struct* %0, i64 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.ttm_buffer_object*, align 8
  %14 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = sub i64 %15, %19
  store i64 %20, i64* %12, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %22, align 8
  store %struct.ttm_buffer_object* %23, %struct.ttm_buffer_object** %13, align 8
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %38, label %26

26:                                               ; preds = %5
  %27 = load i64, i64* %12, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %27, %29
  %31 = load i64, i64* @PAGE_SHIFT, align 8
  %32 = lshr i64 %30, %31
  %33 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %13, align 8
  %34 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = icmp ugt i64 %32, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %26, %5
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %115

41:                                               ; preds = %26
  %42 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %13, align 8
  %43 = call i32 @ttm_bo_reserve(%struct.ttm_buffer_object* %42, i32 1, i32 0, i32* null)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %6, align 4
  br label %115

48:                                               ; preds = %41
  %49 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %13, align 8
  %50 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %84 [
    i32 129, label %53
    i32 128, label %77
  ]

53:                                               ; preds = %48
  %54 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %13, align 8
  %55 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %54, i32 0, i32 2
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @TTM_PAGE_FLAG_SWAPPED, align 4
  %60 = and i32 %58, %59
  %61 = call i32 @unlikely(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %53
  %64 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %13, align 8
  %65 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %64, i32 0, i32 2
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = call i32 @ttm_tt_swapin(%struct.TYPE_8__* %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @unlikely(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %6, align 4
  br label %115

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %53
  br label %77

77:                                               ; preds = %48, %76
  %78 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %13, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @ttm_bo_vm_access_kmap(%struct.ttm_buffer_object* %78, i64 %79, i8* %80, i32 %81, i32 %82)
  store i32 %83, i32* %14, align 4
  br label %111

84:                                               ; preds = %48
  %85 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %13, align 8
  %86 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32 (%struct.ttm_buffer_object*, i64, i8*, i32, i32)*, i32 (%struct.ttm_buffer_object*, i64, i8*, i32, i32)** %90, align 8
  %92 = icmp ne i32 (%struct.ttm_buffer_object*, i64, i8*, i32, i32)* %91, null
  br i1 %92, label %93, label %107

93:                                               ; preds = %84
  %94 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %13, align 8
  %95 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %94, i32 0, i32 1
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32 (%struct.ttm_buffer_object*, i64, i8*, i32, i32)*, i32 (%struct.ttm_buffer_object*, i64, i8*, i32, i32)** %99, align 8
  %101 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %13, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 %100(%struct.ttm_buffer_object* %101, i64 %102, i8* %103, i32 %104, i32 %105)
  store i32 %106, i32* %14, align 4
  br label %110

107:                                              ; preds = %84
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %14, align 4
  br label %110

110:                                              ; preds = %107, %93
  br label %111

111:                                              ; preds = %110, %77
  %112 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %13, align 8
  %113 = call i32 @ttm_bo_unreserve(%struct.ttm_buffer_object* %112)
  %114 = load i32, i32* %14, align 4
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %111, %73, %46, %38
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i32 @ttm_bo_reserve(%struct.ttm_buffer_object*, i32, i32, i32*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @ttm_tt_swapin(%struct.TYPE_8__*) #1

declare dso_local i32 @ttm_bo_vm_access_kmap(%struct.ttm_buffer_object*, i64, i8*, i32, i32) #1

declare dso_local i32 @ttm_bo_unreserve(%struct.ttm_buffer_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
