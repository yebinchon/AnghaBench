; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_intel_vgpu_register_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_intel_vgpu_register_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.vfio_region* }
%struct.vfio_region = type { i32, i32, i64, i8*, i32, %struct.intel_vgpu_regops* }
%struct.intel_vgpu_regops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32, i32, %struct.intel_vgpu_regops*, i64, i32, i8*)* @intel_vgpu_register_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_vgpu_register_reg(%struct.intel_vgpu* %0, i32 %1, i32 %2, %struct.intel_vgpu_regops* %3, i64 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_vgpu*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_vgpu_regops*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.vfio_region*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.intel_vgpu_regops* %3, %struct.intel_vgpu_regops** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %17 = load %struct.intel_vgpu*, %struct.intel_vgpu** %9, align 8
  %18 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.vfio_region*, %struct.vfio_region** %19, align 8
  %21 = load %struct.intel_vgpu*, %struct.intel_vgpu** %9, align 8
  %22 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 40
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.vfio_region* @krealloc(%struct.vfio_region* %20, i32 %28, i32 %29)
  store %struct.vfio_region* %30, %struct.vfio_region** %16, align 8
  %31 = load %struct.vfio_region*, %struct.vfio_region** %16, align 8
  %32 = icmp ne %struct.vfio_region* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %7
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %118

36:                                               ; preds = %7
  %37 = load %struct.vfio_region*, %struct.vfio_region** %16, align 8
  %38 = load %struct.intel_vgpu*, %struct.intel_vgpu** %9, align 8
  %39 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store %struct.vfio_region* %37, %struct.vfio_region** %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.intel_vgpu*, %struct.intel_vgpu** %9, align 8
  %43 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load %struct.vfio_region*, %struct.vfio_region** %44, align 8
  %46 = load %struct.intel_vgpu*, %struct.intel_vgpu** %9, align 8
  %47 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.vfio_region, %struct.vfio_region* %45, i64 %50
  %52 = getelementptr inbounds %struct.vfio_region, %struct.vfio_region* %51, i32 0, i32 0
  store i32 %41, i32* %52, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.intel_vgpu*, %struct.intel_vgpu** %9, align 8
  %55 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load %struct.vfio_region*, %struct.vfio_region** %56, align 8
  %58 = load %struct.intel_vgpu*, %struct.intel_vgpu** %9, align 8
  %59 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.vfio_region, %struct.vfio_region* %57, i64 %62
  %64 = getelementptr inbounds %struct.vfio_region, %struct.vfio_region* %63, i32 0, i32 1
  store i32 %53, i32* %64, align 4
  %65 = load %struct.intel_vgpu_regops*, %struct.intel_vgpu_regops** %12, align 8
  %66 = load %struct.intel_vgpu*, %struct.intel_vgpu** %9, align 8
  %67 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load %struct.vfio_region*, %struct.vfio_region** %68, align 8
  %70 = load %struct.intel_vgpu*, %struct.intel_vgpu** %9, align 8
  %71 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.vfio_region, %struct.vfio_region* %69, i64 %74
  %76 = getelementptr inbounds %struct.vfio_region, %struct.vfio_region* %75, i32 0, i32 5
  store %struct.intel_vgpu_regops* %65, %struct.intel_vgpu_regops** %76, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load %struct.intel_vgpu*, %struct.intel_vgpu** %9, align 8
  %79 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load %struct.vfio_region*, %struct.vfio_region** %80, align 8
  %82 = load %struct.intel_vgpu*, %struct.intel_vgpu** %9, align 8
  %83 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.vfio_region, %struct.vfio_region* %81, i64 %86
  %88 = getelementptr inbounds %struct.vfio_region, %struct.vfio_region* %87, i32 0, i32 2
  store i64 %77, i64* %88, align 8
  %89 = load i32, i32* %14, align 4
  %90 = load %struct.intel_vgpu*, %struct.intel_vgpu** %9, align 8
  %91 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load %struct.vfio_region*, %struct.vfio_region** %92, align 8
  %94 = load %struct.intel_vgpu*, %struct.intel_vgpu** %9, align 8
  %95 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.vfio_region, %struct.vfio_region* %93, i64 %98
  %100 = getelementptr inbounds %struct.vfio_region, %struct.vfio_region* %99, i32 0, i32 4
  store i32 %89, i32* %100, align 8
  %101 = load i8*, i8** %15, align 8
  %102 = load %struct.intel_vgpu*, %struct.intel_vgpu** %9, align 8
  %103 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load %struct.vfio_region*, %struct.vfio_region** %104, align 8
  %106 = load %struct.intel_vgpu*, %struct.intel_vgpu** %9, align 8
  %107 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.vfio_region, %struct.vfio_region* %105, i64 %110
  %112 = getelementptr inbounds %struct.vfio_region, %struct.vfio_region* %111, i32 0, i32 3
  store i8* %101, i8** %112, align 8
  %113 = load %struct.intel_vgpu*, %struct.intel_vgpu** %9, align 8
  %114 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  store i32 0, i32* %8, align 4
  br label %118

118:                                              ; preds = %36, %33
  %119 = load i32, i32* %8, align 4
  ret i32 %119
}

declare dso_local %struct.vfio_region* @krealloc(%struct.vfio_region*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
