; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_flat_memory.c_kfd_init_apertures_v9.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_flat_memory.c_kfd_init_apertures_v9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_process_device = type { i32, i32, %struct.TYPE_4__*, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@SVM_USER_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kfd_process_device*, i32)* @kfd_init_apertures_v9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kfd_init_apertures_v9(%struct.kfd_process_device* %0, i32 %1) #0 {
  %3 = alloca %struct.kfd_process_device*, align 8
  %4 = alloca i32, align 4
  store %struct.kfd_process_device* %0, %struct.kfd_process_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @MAKE_LDS_APP_BASE_V9()
  %6 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %7 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %6, i32 0, i32 5
  store i32 %5, i32* %7, align 4
  %8 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %9 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @MAKE_LDS_APP_LIMIT(i32 %10)
  %12 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %13 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @SVM_USER_BASE, align 4
  %15 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %16 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %18 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %22, 1
  %24 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %25 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %24, i32 0, i32 3
  store i64 %23, i64* %25, align 8
  %26 = call i32 (...) @MAKE_SCRATCH_APP_BASE_V9()
  %27 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %28 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %30 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @MAKE_SCRATCH_APP_LIMIT(i32 %31)
  %33 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %34 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  ret void
}

declare dso_local i32 @MAKE_LDS_APP_BASE_V9(...) #1

declare dso_local i32 @MAKE_LDS_APP_LIMIT(i32) #1

declare dso_local i32 @MAKE_SCRATCH_APP_BASE_V9(...) #1

declare dso_local i32 @MAKE_SCRATCH_APP_LIMIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
