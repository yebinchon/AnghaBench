; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_vm.c_lima_vm_map_page_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_vm.c_lima_vm_map_page_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_vm = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i64* }
%struct.TYPE_5__ = type { i64* }
%struct.TYPE_4__ = type { i32 }

@LIMA_PAGE_SIZE = common dso_local global i64 0, align 8
@LIMA_VM_NUM_PT_PER_BT_SHIFT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LIMA_VM_NUM_PT_PER_BT = common dso_local global i32 0, align 4
@LIMA_VM_FLAG_PRESENT = common dso_local global i64 0, align 8
@LIMA_VM_FLAGS_CACHE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lima_vm*, i64*, i64, i64)* @lima_vm_map_page_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_vm_map_page_table(%struct.lima_vm* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lima_vm*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  store %struct.lima_vm* %0, %struct.lima_vm** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %10, align 8
  br label %18

18:                                               ; preds = %134, %4
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %138

22:                                               ; preds = %18
  %23 = load i64, i64* %10, align 8
  %24 = call i64 @LIMA_PBE(i64 %23)
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i64 @LIMA_BTE(i64 %25)
  store i64 %26, i64* %13, align 8
  %27 = load %struct.lima_vm*, %struct.lima_vm** %6, align 8
  %28 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i64, i64* %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = icmp ne i64* %33, null
  br i1 %34, label %116, label %35

35:                                               ; preds = %22
  %36 = load %struct.lima_vm*, %struct.lima_vm** %6, align 8
  %37 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* @LIMA_PAGE_SIZE, align 8
  %42 = load i64, i64* @LIMA_VM_NUM_PT_PER_BT_SHIFT, align 8
  %43 = shl i64 %41, %42
  %44 = load %struct.lima_vm*, %struct.lima_vm** %6, align 8
  %45 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = load i32, i32* @__GFP_ZERO, align 4
  %52 = or i32 %50, %51
  %53 = call i64* @dma_alloc_wc(i32 %40, i64 %43, i64* %49, i32 %52)
  %54 = load %struct.lima_vm*, %struct.lima_vm** %6, align 8
  %55 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i64* %53, i64** %59, align 8
  %60 = load %struct.lima_vm*, %struct.lima_vm** %6, align 8
  %61 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i64, i64* %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = icmp ne i64* %66, null
  br i1 %67, label %81, label %68

68:                                               ; preds = %35
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load %struct.lima_vm*, %struct.lima_vm** %6, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %10, align 8
  %76 = sub nsw i64 %75, 1
  %77 = call i32 @lima_vm_unmap_page_table(%struct.lima_vm* %73, i64 %74, i64 %76)
  br label %78

78:                                               ; preds = %72, %68
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %139

81:                                               ; preds = %35
  %82 = load %struct.lima_vm*, %struct.lima_vm** %6, align 8
  %83 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i64, i64* %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %14, align 8
  %89 = load %struct.lima_vm*, %struct.lima_vm** %6, align 8
  %90 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* @LIMA_VM_NUM_PT_PER_BT_SHIFT, align 8
  %95 = shl i64 %93, %94
  %96 = getelementptr inbounds i64, i64* %92, i64 %95
  store i64* %96, i64** %15, align 8
  store i32 0, i32* %16, align 4
  br label %97

97:                                               ; preds = %112, %81
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* @LIMA_VM_NUM_PT_PER_BT, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %97
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* @LIMA_VM_FLAG_PRESENT, align 8
  %104 = or i64 %102, %103
  %105 = load i64*, i64** %15, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  store i64 %104, i64* %108, align 8
  %109 = load i64, i64* @LIMA_PAGE_SIZE, align 8
  %110 = load i64, i64* %14, align 8
  %111 = add nsw i64 %110, %109
  store i64 %111, i64* %14, align 8
  br label %112

112:                                              ; preds = %101
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %16, align 4
  br label %97

115:                                              ; preds = %97
  br label %116

116:                                              ; preds = %115, %22
  %117 = load i64*, i64** %7, align 8
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i64, i64* %117, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @LIMA_VM_FLAGS_CACHE, align 8
  %124 = or i64 %122, %123
  %125 = load %struct.lima_vm*, %struct.lima_vm** %6, align 8
  %126 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %125, i32 0, i32 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load i64, i64* %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i64*, i64** %130, align 8
  %132 = load i64, i64* %13, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  store i64 %124, i64* %133, align 8
  br label %134

134:                                              ; preds = %116
  %135 = load i64, i64* @LIMA_PAGE_SIZE, align 8
  %136 = load i64, i64* %10, align 8
  %137 = add nsw i64 %136, %135
  store i64 %137, i64* %10, align 8
  br label %18

138:                                              ; preds = %18
  store i32 0, i32* %5, align 4
  br label %139

139:                                              ; preds = %138, %78
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i64 @LIMA_PBE(i64) #1

declare dso_local i64 @LIMA_BTE(i64) #1

declare dso_local i64* @dma_alloc_wc(i32, i64, i64*, i32) #1

declare dso_local i32 @lima_vm_unmap_page_table(%struct.lima_vm*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
