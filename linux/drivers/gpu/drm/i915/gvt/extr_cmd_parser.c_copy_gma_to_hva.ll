; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_copy_gma_to_hva.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_copy_gma_to_hva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32 }
%struct.intel_vgpu_mm = type { i32 }

@INTEL_GVT_INVALID_ADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"invalid gma address: %lx\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@I915_GTT_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, %struct.intel_vgpu_mm*, i64, i64, i8*)* @copy_gma_to_hva to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_gma_to_hva(%struct.intel_vgpu* %0, %struct.intel_vgpu_mm* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_vgpu*, align 8
  %8 = alloca %struct.intel_vgpu_mm*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %7, align 8
  store %struct.intel_vgpu_mm* %1, %struct.intel_vgpu_mm** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 0, i64* %14, align 8
  br label %16

16:                                               ; preds = %55, %5
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %70

20:                                               ; preds = %16
  %21 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i64 @intel_vgpu_gma_to_gpa(%struct.intel_vgpu_mm* %21, i64 %22)
  store i64 %23, i64* %15, align 8
  %24 = load i64, i64* %15, align 8
  %25 = load i64, i64* @INTEL_GVT_INVALID_ADDR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @EFAULT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %73

32:                                               ; preds = %20
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = and i64 %33, %36
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = sub i64 %38, %39
  %41 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %13, align 8
  %44 = sub i64 %42, %43
  %45 = icmp uge i64 %40, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %32
  %47 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %13, align 8
  %50 = sub i64 %48, %49
  br label %55

51:                                               ; preds = %32
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %9, align 8
  %54 = sub i64 %52, %53
  br label %55

55:                                               ; preds = %51, %46
  %56 = phi i64 [ %50, %46 ], [ %54, %51 ]
  store i64 %56, i64* %12, align 8
  %57 = load %struct.intel_vgpu*, %struct.intel_vgpu** %7, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i64, i64* %14, align 8
  %61 = getelementptr i8, i8* %59, i64 %60
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @intel_gvt_hypervisor_read_gpa(%struct.intel_vgpu* %57, i64 %58, i8* %61, i64 %62)
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %14, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %14, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %9, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %9, align 8
  br label %16

70:                                               ; preds = %16
  %71 = load i64, i64* %14, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %70, %27
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i64 @intel_vgpu_gma_to_gpa(%struct.intel_vgpu_mm*, i64) #1

declare dso_local i32 @gvt_vgpu_err(i8*, i64) #1

declare dso_local i32 @intel_gvt_hypervisor_read_gpa(%struct.intel_vgpu*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
