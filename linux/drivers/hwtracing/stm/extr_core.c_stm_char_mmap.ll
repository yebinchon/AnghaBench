; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c_stm_char_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c_stm_char_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.stm_file* }
%struct.stm_file = type { %struct.TYPE_3__, %struct.stm_device* }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.stm_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.TYPE_4__*, i32, i32, i64)*, i64 }
%struct.vm_area_struct = type { i64, i64, i32, i32*, i32, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_DONTDUMP = common dso_local global i32 0, align 4
@stm_mmap_vmops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @stm_char_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm_char_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.stm_file*, align 8
  %7 = alloca %struct.stm_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.stm_file*, %struct.stm_file** %11, align 8
  store %struct.stm_file* %12, %struct.stm_file** %6, align 8
  %13 = load %struct.stm_file*, %struct.stm_file** %6, align 8
  %14 = getelementptr inbounds %struct.stm_file, %struct.stm_file* %13, i32 0, i32 1
  %15 = load %struct.stm_device*, %struct.stm_device** %14, align 8
  store %struct.stm_device* %15, %struct.stm_device** %7, align 8
  %16 = load %struct.stm_device*, %struct.stm_device** %7, align 8
  %17 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64 (%struct.TYPE_4__*, i32, i32, i64)*, i64 (%struct.TYPE_4__*, i32, i32, i64)** %19, align 8
  %21 = icmp ne i64 (%struct.TYPE_4__*, i32, i32, i64)* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %108

25:                                               ; preds = %2
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %108

33:                                               ; preds = %25
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %36, %39
  store i64 %40, i64* %8, align 8
  %41 = load %struct.stm_file*, %struct.stm_file** %6, align 8
  %42 = getelementptr inbounds %struct.stm_file, %struct.stm_file* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.stm_device*, %struct.stm_device** %7, align 8
  %46 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = mul i64 %44, %49
  %51 = load i64, i64* %8, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %33
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %108

56:                                               ; preds = %33
  %57 = load %struct.stm_device*, %struct.stm_device** %7, align 8
  %58 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64 (%struct.TYPE_4__*, i32, i32, i64)*, i64 (%struct.TYPE_4__*, i32, i32, i64)** %60, align 8
  %62 = load %struct.stm_device*, %struct.stm_device** %7, align 8
  %63 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load %struct.stm_file*, %struct.stm_file** %6, align 8
  %66 = getelementptr inbounds %struct.stm_file, %struct.stm_file* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.stm_file*, %struct.stm_file** %6, align 8
  %70 = getelementptr inbounds %struct.stm_file, %struct.stm_file* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.stm_file*, %struct.stm_file** %6, align 8
  %74 = getelementptr inbounds %struct.stm_file, %struct.stm_file* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 %61(%struct.TYPE_4__* %64, i32 %68, i32 %72, i64 %76)
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %9, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %56
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %108

83:                                               ; preds = %56
  %84 = load %struct.stm_device*, %struct.stm_device** %7, align 8
  %85 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %84, i32 0, i32 0
  %86 = call i32 @pm_runtime_get_sync(i32* %85)
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %88 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @pgprot_noncached(i32 %89)
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %92 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @VM_IO, align 4
  %94 = load i32, i32* @VM_DONTEXPAND, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @VM_DONTDUMP, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %99 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %103 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %102, i32 0, i32 3
  store i32* @stm_mmap_vmops, i32** %103, align 8
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @vm_iomap_memory(%struct.vm_area_struct* %104, i64 %105, i64 %106)
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %83, %80, %53, %30, %22
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @vm_iomap_memory(%struct.vm_area_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
