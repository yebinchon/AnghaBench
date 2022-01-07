; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_intel_vgpu_set_msi_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_intel_vgpu_set_msi_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.eventfd_ctx* }
%struct.eventfd_ctx = type { i32 }

@VFIO_IRQ_SET_DATA_EVENTFD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"eventfd_ctx_fdget failed\0A\00", align 1
@VFIO_IRQ_SET_DATA_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32, i32, i32, i32, i8*)* @intel_vgpu_set_msi_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_vgpu_set_msi_trigger(%struct.intel_vgpu* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_vgpu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.eventfd_ctx*, align 8
  %15 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* @VFIO_IRQ_SET_DATA_EVENTFD, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %6
  %21 = load i8*, i8** %13, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = call %struct.eventfd_ctx* @eventfd_ctx_fdget(i32 %24)
  store %struct.eventfd_ctx* %25, %struct.eventfd_ctx** %14, align 8
  %26 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %14, align 8
  %27 = call i64 @IS_ERR(%struct.eventfd_ctx* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %14, align 8
  %32 = call i32 @PTR_ERR(%struct.eventfd_ctx* %31)
  store i32 %32, i32* %7, align 4
  br label %51

33:                                               ; preds = %20
  %34 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %14, align 8
  %35 = load %struct.intel_vgpu*, %struct.intel_vgpu** %8, align 8
  %36 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.eventfd_ctx* %34, %struct.eventfd_ctx** %37, align 8
  br label %50

38:                                               ; preds = %6
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @VFIO_IRQ_SET_DATA_NONE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load %struct.intel_vgpu*, %struct.intel_vgpu** %8, align 8
  %48 = call i32 @intel_vgpu_release_msi_eventfd_ctx(%struct.intel_vgpu* %47)
  br label %49

49:                                               ; preds = %46, %43, %38
  br label %50

50:                                               ; preds = %49, %33
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %50, %29
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local %struct.eventfd_ctx* @eventfd_ctx_fdget(i32) #1

declare dso_local i64 @IS_ERR(%struct.eventfd_ctx*) #1

declare dso_local i32 @gvt_vgpu_err(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.eventfd_ctx*) #1

declare dso_local i32 @intel_vgpu_release_msi_eventfd_ctx(%struct.intel_vgpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
