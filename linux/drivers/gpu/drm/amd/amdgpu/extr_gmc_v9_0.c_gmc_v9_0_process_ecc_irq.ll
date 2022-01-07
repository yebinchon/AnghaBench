; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_process_ecc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_process_ecc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ras_common_if* }
%struct.ras_common_if = type { i32 }
%struct.amdgpu_irq_src = type { i32 }
%struct.amdgpu_iv_entry = type { i32 }
%struct.ras_dispatch_if = type { %struct.ras_common_if, %struct.amdgpu_iv_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, %struct.amdgpu_iv_entry*)* @gmc_v9_0_process_ecc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v9_0_process_ecc_irq(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, %struct.amdgpu_iv_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_irq_src*, align 8
  %7 = alloca %struct.amdgpu_iv_entry*, align 8
  %8 = alloca %struct.ras_common_if*, align 8
  %9 = alloca %struct.ras_dispatch_if, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %6, align 8
  store %struct.amdgpu_iv_entry* %2, %struct.amdgpu_iv_entry** %7, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ras_common_if*, %struct.ras_common_if** %12, align 8
  store %struct.ras_common_if* %13, %struct.ras_common_if** %8, align 8
  %14 = getelementptr inbounds %struct.ras_dispatch_if, %struct.ras_dispatch_if* %9, i32 0, i32 0
  %15 = bitcast %struct.ras_common_if* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 4, i1 false)
  %16 = getelementptr inbounds %struct.ras_dispatch_if, %struct.ras_dispatch_if* %9, i32 0, i32 1
  %17 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  store %struct.amdgpu_iv_entry* %17, %struct.amdgpu_iv_entry** %16, align 8
  %18 = load %struct.ras_common_if*, %struct.ras_common_if** %8, align 8
  %19 = icmp ne %struct.ras_common_if* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %28

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.ras_dispatch_if, %struct.ras_dispatch_if* %9, i32 0, i32 0
  %23 = load %struct.ras_common_if*, %struct.ras_common_if** %8, align 8
  %24 = bitcast %struct.ras_common_if* %22 to i8*
  %25 = bitcast %struct.ras_common_if* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %27 = call i32 @amdgpu_ras_interrupt_dispatch(%struct.amdgpu_device* %26, %struct.ras_dispatch_if* %9)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %21, %20
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @amdgpu_ras_interrupt_dispatch(%struct.amdgpu_device*, %struct.ras_dispatch_if*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
