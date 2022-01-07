; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_mmio.c_failsafe_emulate_mmio_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_mmio.c_failsafe_emulate_mmio_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32, %struct.TYPE_8__, %struct.intel_gvt* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.intel_gvt = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_vgpu*, i32, i8*, i32, i32)* @failsafe_emulate_mmio_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @failsafe_emulate_mmio_rw(%struct.intel_vgpu* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.intel_gvt*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store %struct.intel_gvt* null, %struct.intel_gvt** %11, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %15 = icmp ne %struct.intel_vgpu* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %5
  br label %92

20:                                               ; preds = %16
  %21 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %22 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %21, i32 0, i32 2
  %23 = load %struct.intel_gvt*, %struct.intel_gvt** %22, align 8
  store %struct.intel_gvt* %23, %struct.intel_gvt** %11, align 8
  %24 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %25 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @intel_vgpu_gpa_to_mmio_offset(%struct.intel_vgpu* %27, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load %struct.intel_gvt*, %struct.intel_gvt** %11, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i64 @reg_is_mmio(%struct.intel_gvt* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %20
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @intel_vgpu_default_mmio_read(%struct.intel_vgpu* %38, i32 %39, i8* %40, i32 %41)
  br label %49

43:                                               ; preds = %34
  %44 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @intel_vgpu_default_mmio_write(%struct.intel_vgpu* %44, i32 %45, i8* %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %37
  br label %88

50:                                               ; preds = %20
  %51 = load %struct.intel_gvt*, %struct.intel_gvt** %11, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i64 @reg_is_gtt(%struct.intel_gvt* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %50
  %56 = load %struct.intel_gvt*, %struct.intel_gvt** %11, align 8
  %57 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = zext i32 %60 to i64
  %62 = sub nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %13, align 4
  %64 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %65 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr i8, i8* %70, i64 %72
  store i8* %73, i8** %12, align 8
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %55
  %77 = load i8*, i8** %8, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @memcpy(i8* %77, i8* %78, i32 %79)
  br label %86

81:                                               ; preds = %55
  %82 = load i8*, i8** %12, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @memcpy(i8* %82, i8* %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %76
  br label %87

87:                                               ; preds = %86, %50
  br label %88

88:                                               ; preds = %87, %49
  %89 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %90 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  br label %92

92:                                               ; preds = %88, %19
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_vgpu_gpa_to_mmio_offset(%struct.intel_vgpu*, i32) #1

declare dso_local i64 @reg_is_mmio(%struct.intel_gvt*, i32) #1

declare dso_local i32 @intel_vgpu_default_mmio_read(%struct.intel_vgpu*, i32, i8*, i32) #1

declare dso_local i32 @intel_vgpu_default_mmio_write(%struct.intel_vgpu*, i32, i8*, i32) #1

declare dso_local i64 @reg_is_gtt(%struct.intel_gvt*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
