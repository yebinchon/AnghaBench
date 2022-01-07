; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_fw_device_op_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_fw_device_op_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.client* }
%struct.client = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.vm_area_struct = type { i32, i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @fw_device_op_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_device_op_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.client*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.client*, %struct.client** %11, align 8
  store %struct.client* %12, %struct.client** %6, align 8
  %13 = load %struct.client*, %struct.client** %6, align 8
  %14 = getelementptr inbounds %struct.client, %struct.client* %13, i32 0, i32 2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = call i64 @fw_device_is_shutdown(%struct.TYPE_7__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %139

21:                                               ; preds = %2
  %22 = load %struct.client*, %struct.client** %6, align 8
  %23 = getelementptr inbounds %struct.client, %struct.client* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %139

30:                                               ; preds = %21
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @VM_SHARED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %139

40:                                               ; preds = %30
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PAGE_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %139

51:                                               ; preds = %40
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.client*, %struct.client** %6, align 8
  %56 = getelementptr inbounds %struct.client, %struct.client* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = sub i64 %59, %63
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @PAGE_SHIFT, align 8
  %67 = lshr i64 %65, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %8, align 4
  %69 = load i64, i64* %7, align 8
  %70 = load i32, i32* @PAGE_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = sext i32 %71 to i64
  %73 = and i64 %69, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %51
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %139

78:                                               ; preds = %51
  %79 = load %struct.client*, %struct.client** %6, align 8
  %80 = getelementptr inbounds %struct.client, %struct.client* %79, i32 0, i32 3
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @fw_iso_buffer_alloc(%struct.TYPE_6__* %80, i32 %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %3, align 4
  br label %139

87:                                               ; preds = %78
  %88 = load %struct.client*, %struct.client** %6, align 8
  %89 = getelementptr inbounds %struct.client, %struct.client* %88, i32 0, i32 4
  %90 = call i32 @spin_lock_irq(i32* %89)
  %91 = load %struct.client*, %struct.client** %6, align 8
  %92 = getelementptr inbounds %struct.client, %struct.client* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %113

95:                                               ; preds = %87
  %96 = load %struct.client*, %struct.client** %6, align 8
  %97 = getelementptr inbounds %struct.client, %struct.client* %96, i32 0, i32 3
  %98 = load %struct.client*, %struct.client** %6, align 8
  %99 = getelementptr inbounds %struct.client, %struct.client* %98, i32 0, i32 2
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.client*, %struct.client** %6, align 8
  %104 = getelementptr inbounds %struct.client, %struct.client* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @iso_dma_direction(i64 %105)
  %107 = call i32 @fw_iso_buffer_map_dma(%struct.TYPE_6__* %97, i32 %102, i32 %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp eq i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = load %struct.client*, %struct.client** %6, align 8
  %112 = getelementptr inbounds %struct.client, %struct.client* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %95, %87
  %114 = load %struct.client*, %struct.client** %6, align 8
  %115 = getelementptr inbounds %struct.client, %struct.client* %114, i32 0, i32 4
  %116 = call i32 @spin_unlock_irq(i32* %115)
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %129

120:                                              ; preds = %113
  %121 = load %struct.client*, %struct.client** %6, align 8
  %122 = getelementptr inbounds %struct.client, %struct.client* %121, i32 0, i32 3
  %123 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %124 = call i32 @fw_iso_buffer_map_vma(%struct.TYPE_6__* %122, %struct.vm_area_struct* %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %129

128:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %139

129:                                              ; preds = %127, %119
  %130 = load %struct.client*, %struct.client** %6, align 8
  %131 = getelementptr inbounds %struct.client, %struct.client* %130, i32 0, i32 3
  %132 = load %struct.client*, %struct.client** %6, align 8
  %133 = getelementptr inbounds %struct.client, %struct.client* %132, i32 0, i32 2
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @fw_iso_buffer_destroy(%struct.TYPE_6__* %131, i32 %136)
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %129, %128, %85, %75, %48, %37, %27, %18
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i64 @fw_device_is_shutdown(%struct.TYPE_7__*) #1

declare dso_local i32 @fw_iso_buffer_alloc(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @fw_iso_buffer_map_dma(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @iso_dma_direction(i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @fw_iso_buffer_map_vma(%struct.TYPE_6__*, %struct.vm_area_struct*) #1

declare dso_local i32 @fw_iso_buffer_destroy(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
