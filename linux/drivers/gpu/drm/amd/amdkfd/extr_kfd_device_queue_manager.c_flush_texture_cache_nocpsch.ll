; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_flush_texture_cache_nocpsch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_flush_texture_cache_nocpsch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i32 }
%struct.qcm_process_device = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.packet_manager_funcs* }
%struct.packet_manager_funcs = type { i32 (i32, i32*)*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@KGD_ENGINE_MEC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kfd_dev*, %struct.qcm_process_device*)* @flush_texture_cache_nocpsch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_texture_cache_nocpsch(%struct.kfd_dev* %0, %struct.qcm_process_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kfd_dev*, align 8
  %5 = alloca %struct.qcm_process_device*, align 8
  %6 = alloca %struct.packet_manager_funcs*, align 8
  %7 = alloca i32, align 4
  store %struct.kfd_dev* %0, %struct.kfd_dev** %4, align 8
  store %struct.qcm_process_device* %1, %struct.qcm_process_device** %5, align 8
  %8 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %9 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.packet_manager_funcs*, %struct.packet_manager_funcs** %12, align 8
  store %struct.packet_manager_funcs* %13, %struct.packet_manager_funcs** %6, align 8
  %14 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %15 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %59

21:                                               ; preds = %2
  %22 = load %struct.packet_manager_funcs*, %struct.packet_manager_funcs** %6, align 8
  %23 = getelementptr inbounds %struct.packet_manager_funcs, %struct.packet_manager_funcs* %22, i32 0, i32 0
  %24 = load i32 (i32, i32*)*, i32 (i32, i32*)** %23, align 8
  %25 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %26 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %29 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = call i32 %24(i32 %27, i32* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %59

37:                                               ; preds = %21
  %38 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %39 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @KGD_ENGINE_MEC1, align 4
  %42 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %43 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %46 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %49 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = load %struct.packet_manager_funcs*, %struct.packet_manager_funcs** %6, align 8
  %53 = getelementptr inbounds %struct.packet_manager_funcs, %struct.packet_manager_funcs* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = udiv i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = call i32 @amdgpu_amdkfd_submit_ib(i32 %40, i32 %41, i32 %44, i32 %47, i32* %51, i32 %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %37, %35, %18
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @amdgpu_amdkfd_submit_ib(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
