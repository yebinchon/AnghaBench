; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_process_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_process_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.amdgpu_irq_src = type { i32 }
%struct.amdgpu_iv_entry = type { i32, i32* }

@.str = private unnamed_addr constant [14 x i8] c"IH: UVD TRAP\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Unhandled interrupt: %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, %struct.amdgpu_iv_entry*)* @uvd_v6_0_process_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvd_v6_0_process_interrupt(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, %struct.amdgpu_iv_entry* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_irq_src*, align 8
  %6 = alloca %struct.amdgpu_iv_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %5, align 8
  store %struct.amdgpu_iv_entry* %2, %struct.amdgpu_iv_entry** %6, align 8
  store i32 1, i32* %7, align 4
  %8 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %10 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %51 [
    i32 124, label %12
    i32 119, label %19
    i32 120, label %35
  ]

12:                                               ; preds = %3
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = call i32 @amdgpu_fence_process(i32* %17)
  br label %51

19:                                               ; preds = %3
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %21 = call i32 @uvd_v6_0_enc_support(%struct.amdgpu_device* %20)
  %22 = call i32 @likely(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = call i32 @amdgpu_fence_process(i32* %31)
  br label %34

33:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %24
  br label %51

35:                                               ; preds = %3
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %37 = call i32 @uvd_v6_0_enc_support(%struct.amdgpu_device* %36)
  %38 = call i32 @likely(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = call i32 @amdgpu_fence_process(i32* %47)
  br label %50

49:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %40
  br label %51

51:                                               ; preds = %3, %50, %34, %12
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 0, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %56 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %59 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %62)
  br label %64

64:                                               ; preds = %54, %51
  ret i32 0
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @amdgpu_fence_process(i32*) #1

declare dso_local i32 @likely(i32) #1

declare dso_local i32 @uvd_v6_0_enc_support(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
