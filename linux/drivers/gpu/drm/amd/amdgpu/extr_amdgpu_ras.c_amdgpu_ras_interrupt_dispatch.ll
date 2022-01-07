; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_interrupt_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_interrupt_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.ras_dispatch_if = type { i32, i32 }
%struct.ras_manager = type { %struct.ras_ih_data }
%struct.ras_ih_data = type { i64, i64, i32, i32, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ras_interrupt_dispatch(%struct.amdgpu_device* %0, %struct.ras_dispatch_if* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.ras_dispatch_if*, align 8
  %6 = alloca %struct.ras_manager*, align 8
  %7 = alloca %struct.ras_ih_data*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.ras_dispatch_if* %1, %struct.ras_dispatch_if** %5, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %9 = load %struct.ras_dispatch_if*, %struct.ras_dispatch_if** %5, align 8
  %10 = getelementptr inbounds %struct.ras_dispatch_if, %struct.ras_dispatch_if* %9, i32 0, i32 1
  %11 = call %struct.ras_manager* @amdgpu_ras_find_obj(%struct.amdgpu_device* %8, i32* %10)
  store %struct.ras_manager* %11, %struct.ras_manager** %6, align 8
  %12 = load %struct.ras_manager*, %struct.ras_manager** %6, align 8
  %13 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %12, i32 0, i32 0
  store %struct.ras_ih_data* %13, %struct.ras_ih_data** %7, align 8
  %14 = load %struct.ras_manager*, %struct.ras_manager** %6, align 8
  %15 = icmp ne %struct.ras_manager* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %59

19:                                               ; preds = %2
  %20 = load %struct.ras_ih_data*, %struct.ras_ih_data** %7, align 8
  %21 = getelementptr inbounds %struct.ras_ih_data, %struct.ras_ih_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %59

25:                                               ; preds = %19
  %26 = load %struct.ras_ih_data*, %struct.ras_ih_data** %7, align 8
  %27 = getelementptr inbounds %struct.ras_ih_data, %struct.ras_ih_data* %26, i32 0, i32 6
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.ras_ih_data*, %struct.ras_ih_data** %7, align 8
  %30 = getelementptr inbounds %struct.ras_ih_data, %struct.ras_ih_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load %struct.ras_dispatch_if*, %struct.ras_dispatch_if** %5, align 8
  %34 = getelementptr inbounds %struct.ras_dispatch_if, %struct.ras_dispatch_if* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ras_ih_data*, %struct.ras_ih_data** %7, align 8
  %37 = getelementptr inbounds %struct.ras_ih_data, %struct.ras_ih_data* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memcpy(i32* %32, i32 %35, i32 %38)
  %40 = call i32 (...) @wmb()
  %41 = load %struct.ras_ih_data*, %struct.ras_ih_data** %7, align 8
  %42 = getelementptr inbounds %struct.ras_ih_data, %struct.ras_ih_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = load %struct.ras_ih_data*, %struct.ras_ih_data** %7, align 8
  %46 = getelementptr inbounds %struct.ras_ih_data, %struct.ras_ih_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %44, %47
  %49 = load %struct.ras_ih_data*, %struct.ras_ih_data** %7, align 8
  %50 = getelementptr inbounds %struct.ras_ih_data, %struct.ras_ih_data* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = urem i64 %48, %52
  %54 = load %struct.ras_ih_data*, %struct.ras_ih_data** %7, align 8
  %55 = getelementptr inbounds %struct.ras_ih_data, %struct.ras_ih_data* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.ras_ih_data*, %struct.ras_ih_data** %7, align 8
  %57 = getelementptr inbounds %struct.ras_ih_data, %struct.ras_ih_data* %56, i32 0, i32 4
  %58 = call i32 @schedule_work(i32* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %25, %24, %16
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.ras_manager* @amdgpu_ras_find_obj(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
