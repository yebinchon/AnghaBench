; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dmem.c_nouveau_dmem_migrate_vma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dmem.c_nouveau_dmem_migrate_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.migrate_vma = type { i64, i64, i32*, i32*, i64, %struct.vm_area_struct* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@SG_MAX_SINGLE_ALLOC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_dmem_migrate_vma(%struct.nouveau_drm* %0, %struct.vm_area_struct* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.migrate_vma, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = sub i64 %16, %17
  %19 = load i64, i64* @PAGE_SHIFT, align 8
  %20 = lshr i64 %18, %19
  store i64 %20, i64* %9, align 8
  %21 = load i32, i32* @SG_MAX_SINGLE_ALLOC, align 4
  %22 = load i64, i64* %9, align 8
  %23 = call i64 @min(i32 %21, i64 %22)
  store i64 %23, i64* %10, align 8
  %24 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %12, i32 0, i32 0
  %25 = load i64, i64* %7, align 8
  store i64 %25, i64* %24, align 8
  %26 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %12, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %12, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %12, i32 0, i32 3
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %12, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %12, i32 0, i32 5
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  store %struct.vm_area_struct* %31, %struct.vm_area_struct** %30, align 8
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %15, align 4
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kcalloc(i64 %34, i32 8, i32 %35)
  %37 = bitcast i8* %36 to i32*
  %38 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %12, i32 0, i32 2
  store i32* %37, i32** %38, align 8
  %39 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %12, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %4
  br label %107

43:                                               ; preds = %4
  %44 = load i64, i64* %10, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @kcalloc(i64 %44, i32 8, i32 %45)
  %47 = bitcast i8* %46 to i32*
  %48 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %12, i32 0, i32 3
  store i32* %47, i32** %48, align 8
  %49 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %12, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  br label %103

53:                                               ; preds = %43
  %54 = load i64, i64* %10, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32* @kmalloc_array(i64 %54, i32 4, i32 %55)
  store i32* %56, i32** %11, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %99

60:                                               ; preds = %53
  store i64 0, i64* %14, align 8
  br label %61

61:                                               ; preds = %91, %60
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %95

65:                                               ; preds = %61
  %66 = load i32, i32* @SG_MAX_SINGLE_ALLOC, align 4
  %67 = load i64, i64* %9, align 8
  %68 = call i64 @min(i32 %66, i64 %67)
  store i64 %68, i64* %13, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* @PAGE_SHIFT, align 8
  %72 = shl i64 %70, %71
  %73 = add i64 %69, %72
  %74 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %12, i32 0, i32 1
  store i64 %73, i64* %74, align 8
  %75 = call i32 @migrate_vma_setup(%struct.migrate_vma* %12)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  br label %96

79:                                               ; preds = %65
  %80 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %12, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @nouveau_dmem_migrate_chunk(%struct.nouveau_drm* %84, %struct.migrate_vma* %12, i32* %85)
  br label %87

87:                                               ; preds = %83, %79
  %88 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %12, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %12, i32 0, i32 0
  store i64 %89, i64* %90, align 8
  br label %91

91:                                               ; preds = %87
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* %14, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %14, align 8
  br label %61

95:                                               ; preds = %61
  store i32 0, i32* %15, align 4
  br label %96

96:                                               ; preds = %95, %78
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @kfree(i32* %97)
  br label %99

99:                                               ; preds = %96, %59
  %100 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %12, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @kfree(i32* %101)
  br label %103

103:                                              ; preds = %99, %52
  %104 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %12, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @kfree(i32* %105)
  br label %107

107:                                              ; preds = %103, %42
  %108 = load i32, i32* %15, align 4
  ret i32 %108
}

declare dso_local i64 @min(i32, i64) #1

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i32* @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @migrate_vma_setup(%struct.migrate_vma*) #1

declare dso_local i32 @nouveau_dmem_migrate_chunk(%struct.nouveau_drm*, %struct.migrate_vma*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
