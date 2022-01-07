; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_flat_memory.c_kfd_init_apertures_vi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_flat_memory.c_kfd_init_apertures_vi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_process_device = type { i32, i32, %struct.TYPE_6__*, i32, i64, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@SVM_USER_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kfd_process_device*, i64)* @kfd_init_apertures_vi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kfd_init_apertures_vi(%struct.kfd_process_device* %0, i64 %1) #0 {
  %3 = alloca %struct.kfd_process_device*, align 8
  %4 = alloca i64, align 8
  store %struct.kfd_process_device* %0, %struct.kfd_process_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = call i32 (...) @MAKE_LDS_APP_BASE_VI()
  %6 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %7 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %6, i32 0, i32 5
  store i32 %5, i32* %7, align 8
  %8 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %9 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @MAKE_LDS_APP_LIMIT(i32 %10)
  %12 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %13 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 4
  %14 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %15 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @SVM_USER_BASE, align 4
  %24 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %25 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %27 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %31, 1
  %33 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %34 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %33, i32 0, i32 4
  store i64 %32, i64* %34, align 8
  br label %53

35:                                               ; preds = %2
  %36 = load i64, i64* %4, align 8
  %37 = add nsw i64 %36, 1
  %38 = call i32 @MAKE_GPUVM_APP_BASE_VI(i64 %37)
  %39 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %40 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %42 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %45 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @MAKE_GPUVM_APP_LIMIT(i32 %43, i64 %49)
  %51 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %52 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %51, i32 0, i32 4
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %35, %22
  %54 = call i32 (...) @MAKE_SCRATCH_APP_BASE_VI()
  %55 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %56 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %58 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @MAKE_SCRATCH_APP_LIMIT(i32 %59)
  %61 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %62 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  ret void
}

declare dso_local i32 @MAKE_LDS_APP_BASE_VI(...) #1

declare dso_local i32 @MAKE_LDS_APP_LIMIT(i32) #1

declare dso_local i32 @MAKE_GPUVM_APP_BASE_VI(i64) #1

declare dso_local i64 @MAKE_GPUVM_APP_LIMIT(i32, i64) #1

declare dso_local i32 @MAKE_SCRATCH_APP_BASE_VI(...) #1

declare dso_local i32 @MAKE_SCRATCH_APP_LIMIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
