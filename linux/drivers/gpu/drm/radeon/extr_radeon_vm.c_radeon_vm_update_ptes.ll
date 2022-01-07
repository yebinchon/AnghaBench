; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vm.c_radeon_vm_update_ptes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vm.c_radeon_vm_update_ptes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_vm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.radeon_bo* }
%struct.radeon_bo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.radeon_ib = type { i32 }

@RADEON_VM_PTE_COUNT = common dso_local global i32 0, align 4
@radeon_vm_block_size = common dso_local global i64 0, align 8
@RADEON_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_vm*, %struct.radeon_ib*, i64, i64, i64, i32)* @radeon_vm_update_ptes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_vm_update_ptes(%struct.radeon_device* %0, %struct.radeon_vm* %1, %struct.radeon_ib* %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.radeon_device*, align 8
  %10 = alloca %struct.radeon_vm*, align 8
  %11 = alloca %struct.radeon_ib*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.radeon_bo*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %9, align 8
  store %struct.radeon_vm* %1, %struct.radeon_vm** %10, align 8
  store %struct.radeon_ib* %2, %struct.radeon_ib** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %26 = load i32, i32* @RADEON_VM_PTE_COUNT, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %16, align 8
  store i64 -1, i64* %17, align 8
  store i64 -1, i64* %18, align 8
  store i32 0, i32* %19, align 4
  %29 = load i64, i64* %12, align 8
  store i64 %29, i64* %20, align 8
  br label %30

30:                                               ; preds = %126, %7
  %31 = load i64, i64* %20, align 8
  %32 = load i64, i64* %13, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %137

34:                                               ; preds = %30
  %35 = load i64, i64* %20, align 8
  %36 = load i64, i64* @radeon_vm_block_size, align 8
  %37 = lshr i64 %35, %36
  store i64 %37, i64* %21, align 8
  %38 = load %struct.radeon_vm*, %struct.radeon_vm** %10, align 8
  %39 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i64, i64* %21, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.radeon_bo*, %struct.radeon_bo** %43, align 8
  store %struct.radeon_bo* %44, %struct.radeon_bo** %22, align 8
  %45 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %46 = load %struct.radeon_ib*, %struct.radeon_ib** %11, align 8
  %47 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %46, i32 0, i32 0
  %48 = load %struct.radeon_bo*, %struct.radeon_bo** %22, align 8
  %49 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @radeon_sync_resv(%struct.radeon_device* %45, i32* %47, i32 %52, i32 1)
  %54 = load %struct.radeon_bo*, %struct.radeon_bo** %22, align 8
  %55 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dma_resv_reserve_shared(i32 %58, i32 1)
  store i32 %59, i32* %25, align 4
  %60 = load i32, i32* %25, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %34
  %63 = load i32, i32* %25, align 4
  store i32 %63, i32* %8, align 4
  br label %153

64:                                               ; preds = %34
  %65 = load i64, i64* %20, align 8
  %66 = load i64, i64* %16, align 8
  %67 = xor i64 %66, -1
  %68 = and i64 %65, %67
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* %16, align 8
  %71 = xor i64 %70, -1
  %72 = and i64 %69, %71
  %73 = icmp eq i64 %68, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* %20, align 8
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %23, align 4
  br label %87

79:                                               ; preds = %64
  %80 = load i32, i32* @RADEON_VM_PTE_COUNT, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %20, align 8
  %83 = load i64, i64* %16, align 8
  %84 = and i64 %82, %83
  %85 = sub i64 %81, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %23, align 4
  br label %87

87:                                               ; preds = %79, %74
  %88 = load %struct.radeon_bo*, %struct.radeon_bo** %22, align 8
  %89 = call i64 @radeon_bo_gpu_offset(%struct.radeon_bo* %88)
  store i64 %89, i64* %24, align 8
  %90 = load i64, i64* %20, align 8
  %91 = load i64, i64* %16, align 8
  %92 = and i64 %90, %91
  %93 = mul i64 %92, 8
  %94 = load i64, i64* %24, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %24, align 8
  %96 = load i64, i64* %17, align 8
  %97 = load i32, i32* %19, align 4
  %98 = mul i32 8, %97
  %99 = zext i32 %98 to i64
  %100 = add i64 %96, %99
  %101 = load i64, i64* %24, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %122

103:                                              ; preds = %87
  %104 = load i32, i32* %19, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %103
  %107 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %108 = load %struct.radeon_ib*, %struct.radeon_ib** %11, align 8
  %109 = load i64, i64* %17, align 8
  %110 = load i64, i64* %17, align 8
  %111 = load i32, i32* %19, align 4
  %112 = mul i32 8, %111
  %113 = zext i32 %112 to i64
  %114 = add i64 %110, %113
  %115 = load i64, i64* %18, align 8
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @radeon_vm_frag_ptes(%struct.radeon_device* %107, %struct.radeon_ib* %108, i64 %109, i64 %114, i64 %115, i32 %116)
  br label %118

118:                                              ; preds = %106, %103
  %119 = load i32, i32* %23, align 4
  store i32 %119, i32* %19, align 4
  %120 = load i64, i64* %24, align 8
  store i64 %120, i64* %17, align 8
  %121 = load i64, i64* %14, align 8
  store i64 %121, i64* %18, align 8
  br label %126

122:                                              ; preds = %87
  %123 = load i32, i32* %23, align 4
  %124 = load i32, i32* %19, align 4
  %125 = add i32 %124, %123
  store i32 %125, i32* %19, align 4
  br label %126

126:                                              ; preds = %122, %118
  %127 = load i32, i32* %23, align 4
  %128 = zext i32 %127 to i64
  %129 = load i64, i64* %20, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %20, align 8
  %131 = load i32, i32* %23, align 4
  %132 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %133 = mul i32 %131, %132
  %134 = zext i32 %133 to i64
  %135 = load i64, i64* %14, align 8
  %136 = add i64 %135, %134
  store i64 %136, i64* %14, align 8
  br label %30

137:                                              ; preds = %30
  %138 = load i32, i32* %19, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %137
  %141 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %142 = load %struct.radeon_ib*, %struct.radeon_ib** %11, align 8
  %143 = load i64, i64* %17, align 8
  %144 = load i64, i64* %17, align 8
  %145 = load i32, i32* %19, align 4
  %146 = mul i32 8, %145
  %147 = zext i32 %146 to i64
  %148 = add i64 %144, %147
  %149 = load i64, i64* %18, align 8
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @radeon_vm_frag_ptes(%struct.radeon_device* %141, %struct.radeon_ib* %142, i64 %143, i64 %148, i64 %149, i32 %150)
  br label %152

152:                                              ; preds = %140, %137
  store i32 0, i32* %8, align 4
  br label %153

153:                                              ; preds = %152, %62
  %154 = load i32, i32* %8, align 4
  ret i32 %154
}

declare dso_local i32 @radeon_sync_resv(%struct.radeon_device*, i32*, i32, i32) #1

declare dso_local i32 @dma_resv_reserve_shared(i32, i32) #1

declare dso_local i64 @radeon_bo_gpu_offset(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_vm_frag_ptes(%struct.radeon_device*, %struct.radeon_ib*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
