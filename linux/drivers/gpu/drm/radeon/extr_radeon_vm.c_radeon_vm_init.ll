; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vm.c_radeon_vm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vm.c_radeon_vm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_vm = type { i32*, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32*, i32*, i64 }

@RADEON_VM_PTB_ALIGN_SIZE = common dso_local global i32 0, align 4
@RADEON_VM_PTE_COUNT = common dso_local global i32 0, align 4
@RADEON_NUM_RINGS = common dso_local global i32 0, align 4
@RB_ROOT_CACHED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Cannot allocate memory for page table array\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_vm_init(%struct.radeon_device* %0, %struct.radeon_vm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_vm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_vm* %1, %struct.radeon_vm** %5, align 8
  %12 = load i32, i32* @RADEON_VM_PTB_ALIGN_SIZE, align 4
  %13 = load i32, i32* @RADEON_VM_PTE_COUNT, align 4
  %14 = mul nsw i32 %13, 8
  %15 = call i32 @min(i32 %12, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %17 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %16, i32 0, i32 9
  store i32* null, i32** %17, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %44, %2
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %18
  %23 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %23, i32 0, i32 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %31 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %30, i32 0, i32 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %38 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %37, i32 0, i32 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %22
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %18

47:                                               ; preds = %18
  %48 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %49 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %48, i32 0, i32 7
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load i32, i32* @RB_ROOT_CACHED, align 4
  %52 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %53 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  %54 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %55 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %54, i32 0, i32 5
  %56 = call i32 @spin_lock_init(i32* %55)
  %57 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %58 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %57, i32 0, i32 4
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %61 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %60, i32 0, i32 3
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %64 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %63, i32 0, i32 2
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %67 = call i32 @radeon_vm_directory_size(%struct.radeon_device* %66)
  store i32 %67, i32* %7, align 4
  %68 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %69 = call i32 @radeon_vm_num_pdes(%struct.radeon_device* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i32* @kzalloc(i32 %74, i32 %75)
  %77 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %78 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %77, i32 0, i32 1
  store i32* %76, i32** %78, align 8
  %79 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %80 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %47
  %84 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %115

87:                                               ; preds = %47
  %88 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %92 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %93 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %92, i32 0, i32 0
  %94 = call i32 @radeon_bo_create(%struct.radeon_device* %88, i32 %89, i32 %90, i32 1, i32 %91, i32 0, i32* null, i32* null, i32** %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %87
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %3, align 4
  br label %115

99:                                               ; preds = %87
  %100 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %101 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %102 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @radeon_vm_clear_bo(%struct.radeon_device* %100, i32* %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %99
  %108 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %109 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %108, i32 0, i32 0
  %110 = call i32 @radeon_bo_unref(i32** %109)
  %111 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %112 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %111, i32 0, i32 0
  store i32* null, i32** %112, align 8
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %3, align 4
  br label %115

114:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %107, %97, %83
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @radeon_vm_directory_size(%struct.radeon_device*) #1

declare dso_local i32 @radeon_vm_num_pdes(%struct.radeon_device*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @radeon_bo_create(%struct.radeon_device*, i32, i32, i32, i32, i32, i32*, i32*, i32**) #1

declare dso_local i32 @radeon_vm_clear_bo(%struct.radeon_device*, i32*) #1

declare dso_local i32 @radeon_bo_unref(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
