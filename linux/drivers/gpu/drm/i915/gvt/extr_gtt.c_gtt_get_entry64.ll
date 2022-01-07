; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_gtt_get_entry64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_gtt_get_entry64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gvt_gtt_entry = type { i32 }
%struct.intel_vgpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.intel_gvt_device_info }
%struct.intel_gvt_device_info = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.intel_gvt_gtt_entry*, i64, i32, i64, %struct.intel_vgpu*)* @gtt_get_entry64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gtt_get_entry64(i8* %0, %struct.intel_gvt_gtt_entry* %1, i64 %2, i32 %3, i64 %4, %struct.intel_vgpu* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.intel_gvt_gtt_entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.intel_vgpu*, align 8
  %14 = alloca %struct.intel_gvt_device_info*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store %struct.intel_gvt_gtt_entry* %1, %struct.intel_gvt_gtt_entry** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store %struct.intel_vgpu* %5, %struct.intel_vgpu** %13, align 8
  %16 = load %struct.intel_vgpu*, %struct.intel_vgpu** %13, align 8
  %17 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store %struct.intel_gvt_device_info* %19, %struct.intel_gvt_device_info** %14, align 8
  %20 = load %struct.intel_gvt_device_info*, %struct.intel_gvt_device_info** %14, align 8
  %21 = getelementptr inbounds %struct.intel_gvt_device_info, %struct.intel_gvt_device_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 8
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %74

30:                                               ; preds = %6
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load %struct.intel_vgpu*, %struct.intel_vgpu** %13, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.intel_gvt_device_info*, %struct.intel_gvt_device_info** %14, align 8
  %38 = getelementptr inbounds %struct.intel_gvt_device_info, %struct.intel_gvt_device_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = shl i64 %36, %39
  %41 = add i64 %35, %40
  %42 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %9, align 8
  %43 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %42, i32 0, i32 0
  %44 = call i32 @intel_gvt_hypervisor_read_gpa(%struct.intel_vgpu* %34, i64 %41, i32* %43, i32 8)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = call i64 @WARN_ON(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %7, align 4
  br label %74

50:                                               ; preds = %33
  br label %73

51:                                               ; preds = %30
  %52 = load i8*, i8** %8, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %51
  %55 = load %struct.intel_vgpu*, %struct.intel_vgpu** %13, align 8
  %56 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @read_pte64(i32 %59, i64 %60)
  %62 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %9, align 8
  %63 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %72

64:                                               ; preds = %51
  %65 = load i8*, i8** %8, align 8
  %66 = bitcast i8* %65 to i32*
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %9, align 8
  %71 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %64, %54
  br label %73

73:                                               ; preds = %72, %50
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %48, %27
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @intel_gvt_hypervisor_read_gpa(%struct.intel_vgpu*, i64, i32*, i32) #1

declare dso_local i32 @read_pte64(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
