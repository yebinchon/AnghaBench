; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vm.c_radeon_vm_get_bos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vm.c_radeon_vm_get_bos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_bo_list = type { %struct.TYPE_6__, i64, %struct.TYPE_5__*, i8*, i8* }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.radeon_device = type { i32 }
%struct.radeon_vm = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.list_head = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radeon_bo_list* @radeon_vm_get_bos(%struct.radeon_device* %0, %struct.radeon_vm* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.radeon_bo_list*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_vm*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.radeon_bo_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_vm* %1, %struct.radeon_vm** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %11 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %12 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.radeon_bo_list* @kvmalloc_array(i32 %14, i32 48, i32 %15)
  store %struct.radeon_bo_list* %16, %struct.radeon_bo_list** %8, align 8
  %17 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %8, align 8
  %18 = icmp ne %struct.radeon_bo_list* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.radeon_bo_list* null, %struct.radeon_bo_list** %4, align 8
  br label %137

20:                                               ; preds = %3
  %21 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %22 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %8, align 8
  %25 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %24, i64 0
  %26 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %25, i32 0, i32 2
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %26, align 8
  %27 = load i8*, i8** @RADEON_GEM_DOMAIN_VRAM, align 8
  %28 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %8, align 8
  %29 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %28, i64 0
  %30 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %29, i32 0, i32 4
  store i8* %27, i8** %30, align 8
  %31 = load i8*, i8** @RADEON_GEM_DOMAIN_VRAM, align 8
  %32 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %8, align 8
  %33 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %32, i64 0
  %34 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %33, i32 0, i32 3
  store i8* %31, i8** %34, align 8
  %35 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %36 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %8, align 8
  %40 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %39, i64 0
  %41 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store i32* %38, i32** %42, align 8
  %43 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %8, align 8
  %44 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %43, i64 0
  %45 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %8, align 8
  %48 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %47, i64 0
  %49 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %8, align 8
  %51 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %50, i64 0
  %52 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load %struct.list_head*, %struct.list_head** %7, align 8
  %55 = call i32 @list_add(i32* %53, %struct.list_head* %54)
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %56

56:                                               ; preds = %132, %20
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %59 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ule i32 %57, %60
  br i1 %61, label %62, label %135

62:                                               ; preds = %56
  %63 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %64 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = icmp ne %struct.TYPE_5__* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %62
  br label %132

73:                                               ; preds = %62
  %74 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %75 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %8, align 8
  %83 = load i32, i32* %10, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %82, i64 %84
  %86 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %85, i32 0, i32 2
  store %struct.TYPE_5__* %81, %struct.TYPE_5__** %86, align 8
  %87 = load i8*, i8** @RADEON_GEM_DOMAIN_VRAM, align 8
  %88 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %8, align 8
  %89 = load i32, i32* %10, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %88, i64 %90
  %92 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %91, i32 0, i32 4
  store i8* %87, i8** %92, align 8
  %93 = load i8*, i8** @RADEON_GEM_DOMAIN_VRAM, align 8
  %94 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %8, align 8
  %95 = load i32, i32* %10, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %94, i64 %96
  %98 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %97, i32 0, i32 3
  store i8* %93, i8** %98, align 8
  %99 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %8, align 8
  %100 = load i32, i32* %10, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %99, i64 %101
  %103 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %102, i32 0, i32 2
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %8, align 8
  %107 = load i32, i32* %10, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %106, i64 %108
  %110 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  store i32* %105, i32** %111, align 8
  %112 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %8, align 8
  %113 = load i32, i32* %10, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %112, i64 %114
  %116 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  %118 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %8, align 8
  %119 = load i32, i32* %10, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %118, i64 %120
  %122 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %121, i32 0, i32 1
  store i64 0, i64* %122, align 8
  %123 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %8, align 8
  %124 = load i32, i32* %10, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %10, align 4
  %126 = zext i32 %124 to i64
  %127 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %123, i64 %126
  %128 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load %struct.list_head*, %struct.list_head** %7, align 8
  %131 = call i32 @list_add(i32* %129, %struct.list_head* %130)
  br label %132

132:                                              ; preds = %73, %72
  %133 = load i32, i32* %9, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %56

135:                                              ; preds = %56
  %136 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %8, align 8
  store %struct.radeon_bo_list* %136, %struct.radeon_bo_list** %4, align 8
  br label %137

137:                                              ; preds = %135, %19
  %138 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %4, align 8
  ret %struct.radeon_bo_list* %138
}

declare dso_local %struct.radeon_bo_list* @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
