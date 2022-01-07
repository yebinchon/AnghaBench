; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_compute_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_compute_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, i32, i32, i32 }
%struct.cik_mqd = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"(%d) create MQD bo failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32)* @gfx_v7_0_compute_queue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v7_0_compute_queue_init(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cik_mqd*, align 8
  %9 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %13, i64 %15
  store %struct.amdgpu_ring* %16, %struct.amdgpu_ring** %9, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %20 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %21 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %20, i32 0, i32 0
  %22 = bitcast %struct.cik_mqd** %8 to i8**
  %23 = call i32 @amdgpu_bo_create_reserved(%struct.amdgpu_device* %17, i32 4, i32 %18, i32 %19, i32* %21, i32* %7, i8** %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dev_warn(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %71

33:                                               ; preds = %2
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %39 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %42 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %45 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cik_srbm_select(%struct.amdgpu_device* %37, i32 %40, i32 %43, i32 %46, i32 0)
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %49 = load %struct.cik_mqd*, %struct.cik_mqd** %8, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %52 = call i32 @gfx_v7_0_mqd_init(%struct.amdgpu_device* %48, %struct.cik_mqd* %49, i32 %50, %struct.amdgpu_ring* %51)
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %54 = call i32 @gfx_v7_0_mqd_deactivate(%struct.amdgpu_device* %53)
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %56 = load %struct.cik_mqd*, %struct.cik_mqd** %8, align 8
  %57 = call i32 @gfx_v7_0_mqd_commit(%struct.amdgpu_device* %55, %struct.cik_mqd* %56)
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %59 = call i32 @cik_srbm_select(%struct.amdgpu_device* %58, i32 0, i32 0, i32 0, i32 0)
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %64 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @amdgpu_bo_kunmap(i32 %65)
  %67 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %68 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @amdgpu_bo_unreserve(i32 %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %33, %26
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @amdgpu_bo_create_reserved(%struct.amdgpu_device*, i32, i32, i32, i32*, i32*, i8**) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cik_srbm_select(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @gfx_v7_0_mqd_init(%struct.amdgpu_device*, %struct.cik_mqd*, i32, %struct.amdgpu_ring*) #1

declare dso_local i32 @gfx_v7_0_mqd_deactivate(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v7_0_mqd_commit(%struct.amdgpu_device*, %struct.cik_mqd*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @amdgpu_bo_kunmap(i32) #1

declare dso_local i32 @amdgpu_bo_unreserve(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
