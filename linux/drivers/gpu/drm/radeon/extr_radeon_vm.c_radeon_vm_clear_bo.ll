; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vm.c_radeon_vm_clear_bo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vm.c_radeon_vm_clear_bo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_operation_ctx = type { i32, i32 }
%struct.radeon_device = type { i32 }
%struct.radeon_bo = type { i32, i32 }
%struct.radeon_ib = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@__const.radeon_vm_clear_bo.ctx = private unnamed_addr constant %struct.ttm_operation_ctx { i32 1, i32 0 }, align 4
@R600_RING_TYPE_DMA_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_bo*)* @radeon_vm_clear_bo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_vm_clear_bo(%struct.radeon_device* %0, %struct.radeon_bo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_bo*, align 8
  %6 = alloca %struct.ttm_operation_ctx, align 4
  %7 = alloca %struct.radeon_ib, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_bo* %1, %struct.radeon_bo** %5, align 8
  %11 = bitcast %struct.ttm_operation_ctx* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.ttm_operation_ctx* @__const.radeon_vm_clear_bo.ctx to i8*), i64 8, i1 false)
  %12 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %13 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %12, i32 0)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %3, align 4
  br label %72

18:                                               ; preds = %2
  %19 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %19, i32 0, i32 1
  %21 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %22 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %21, i32 0, i32 0
  %23 = call i32 @ttm_bo_validate(i32* %20, i32* %22, %struct.ttm_operation_ctx* %6)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %68

27:                                               ; preds = %18
  %28 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %29 = call i32 @radeon_bo_gpu_offset(%struct.radeon_bo* %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %31 = call i32 @radeon_bo_size(%struct.radeon_bo* %30)
  %32 = sdiv i32 %31, 8
  store i32 %32, i32* %8, align 4
  %33 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %34 = load i32, i32* @R600_RING_TYPE_DMA_INDEX, align 4
  %35 = call i32 @radeon_ib_get(%struct.radeon_device* %33, i32 %34, %struct.radeon_ib* %7, i32* null, i32 256)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %68

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %7, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @radeon_vm_set_pages(%struct.radeon_device* %41, %struct.radeon_ib* %7, i32 %42, i32 0, i32 %43, i32 0, i32 0)
  %45 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %46 = call i32 @radeon_asic_vm_pad_ib(%struct.radeon_device* %45, %struct.radeon_ib* %7)
  %47 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 64
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON(i32 %50)
  %52 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %53 = call i32 @radeon_ib_schedule(%struct.radeon_device* %52, %struct.radeon_ib* %7, i32* null, i32 0)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %39
  br label %65

57:                                               ; preds = %39
  %58 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %7, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  %61 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %62 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %7, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = call i32 @radeon_bo_fence(%struct.radeon_bo* %61, %struct.TYPE_2__* %63, i32 0)
  br label %65

65:                                               ; preds = %57, %56
  %66 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %67 = call i32 @radeon_ib_free(%struct.radeon_device* %66, %struct.radeon_ib* %7)
  br label %68

68:                                               ; preds = %65, %38, %26
  %69 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %70 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %69)
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %16
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #2

declare dso_local i32 @ttm_bo_validate(i32*, i32*, %struct.ttm_operation_ctx*) #2

declare dso_local i32 @radeon_bo_gpu_offset(%struct.radeon_bo*) #2

declare dso_local i32 @radeon_bo_size(%struct.radeon_bo*) #2

declare dso_local i32 @radeon_ib_get(%struct.radeon_device*, i32, %struct.radeon_ib*, i32*, i32) #2

declare dso_local i32 @radeon_vm_set_pages(%struct.radeon_device*, %struct.radeon_ib*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @radeon_asic_vm_pad_ib(%struct.radeon_device*, %struct.radeon_ib*) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @radeon_ib_schedule(%struct.radeon_device*, %struct.radeon_ib*, i32*, i32) #2

declare dso_local i32 @radeon_bo_fence(%struct.radeon_bo*, %struct.TYPE_2__*, i32) #2

declare dso_local i32 @radeon_ib_free(%struct.radeon_device*, %struct.radeon_ib*) #2

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
