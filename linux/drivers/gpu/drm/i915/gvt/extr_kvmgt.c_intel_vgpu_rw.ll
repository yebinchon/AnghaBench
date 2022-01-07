; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_intel_vgpu_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_intel_vgpu_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.intel_vgpu*, i32, i8*, i64)*, i32 (%struct.intel_vgpu*, i32, i8*, i64)* }
%struct.intel_vgpu = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (%struct.intel_vgpu*, i8*, i64, i32*, i32)* }
%struct.mdev_device = type { i32 }

@VFIO_PCI_OFFSET_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@VFIO_PCI_NUM_REGIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid index: %u\0A\00", align 1
@intel_gvt_ops = common dso_local global %struct.TYPE_8__* null, align 8
@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mdev_device*, i8*, i64, i32*, i32)* @intel_vgpu_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @intel_vgpu_rw(%struct.mdev_device* %0, i8* %1, i64 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.mdev_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_vgpu*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mdev_device* %0, %struct.mdev_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.mdev_device*, %struct.mdev_device** %7, align 8
  %17 = call %struct.intel_vgpu* @mdev_get_drvdata(%struct.mdev_device* %16)
  store %struct.intel_vgpu* %17, %struct.intel_vgpu** %12, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @VFIO_PCI_OFFSET_TO_INDEX(i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @VFIO_PCI_OFFSET_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %14, align 4
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @VFIO_PCI_NUM_REGIONS, align 4
  %30 = load %struct.intel_vgpu*, %struct.intel_vgpu** %12, align 8
  %31 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add i32 %29, %33
  %35 = icmp uge i32 %28, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %5
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %6, align 8
  br label %124

41:                                               ; preds = %5
  %42 = load i32, i32* %13, align 4
  switch i32 %42, label %81 [
    i32 130, label %43
    i32 136, label %65
    i32 134, label %73
    i32 135, label %80
    i32 133, label %80
    i32 132, label %80
    i32 131, label %80
    i32 128, label %80
    i32 129, label %80
  ]

43:                                               ; preds = %41
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @intel_gvt_ops, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32 (%struct.intel_vgpu*, i32, i8*, i64)*, i32 (%struct.intel_vgpu*, i32, i8*, i64)** %48, align 8
  %50 = load %struct.intel_vgpu*, %struct.intel_vgpu** %12, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 %49(%struct.intel_vgpu* %50, i32 %51, i8* %52, i64 %53)
  store i32 %54, i32* %15, align 4
  br label %64

55:                                               ; preds = %43
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** @intel_gvt_ops, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32 (%struct.intel_vgpu*, i32, i8*, i64)*, i32 (%struct.intel_vgpu*, i32, i8*, i64)** %57, align 8
  %59 = load %struct.intel_vgpu*, %struct.intel_vgpu** %12, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 %58(%struct.intel_vgpu* %59, i32 %60, i8* %61, i64 %62)
  store i32 %63, i32* %15, align 4
  br label %64

64:                                               ; preds = %55, %46
  br label %114

65:                                               ; preds = %41
  %66 = load %struct.intel_vgpu*, %struct.intel_vgpu** %12, align 8
  %67 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @intel_vgpu_bar_rw(%struct.intel_vgpu* %66, i32 %67, i32 %68, i8* %69, i64 %70, i32 %71)
  store i32 %72, i32* %15, align 4
  br label %114

73:                                               ; preds = %41
  %74 = load %struct.intel_vgpu*, %struct.intel_vgpu** %12, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @intel_vgpu_aperture_rw(%struct.intel_vgpu* %74, i32 %75, i8* %76, i64 %77, i32 %78)
  store i32 %79, i32* %15, align 4
  br label %114

80:                                               ; preds = %41, %41, %41, %41, %41, %41
  br label %114

81:                                               ; preds = %41
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @VFIO_PCI_NUM_REGIONS, align 4
  %84 = load %struct.intel_vgpu*, %struct.intel_vgpu** %12, align 8
  %85 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add i32 %83, %87
  %89 = icmp uge i32 %82, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load i64, i64* @EINVAL, align 8
  %92 = sub i64 0, %91
  store i64 %92, i64* %6, align 8
  br label %124

93:                                               ; preds = %81
  %94 = load i32, i32* @VFIO_PCI_NUM_REGIONS, align 4
  %95 = load i32, i32* %13, align 4
  %96 = sub i32 %95, %94
  store i32 %96, i32* %13, align 4
  %97 = load %struct.intel_vgpu*, %struct.intel_vgpu** %12, align 8
  %98 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i32, i32* %13, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i64 (%struct.intel_vgpu*, i8*, i64, i32*, i32)*, i64 (%struct.intel_vgpu*, i8*, i64, i32*, i32)** %106, align 8
  %108 = load %struct.intel_vgpu*, %struct.intel_vgpu** %12, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i64 %107(%struct.intel_vgpu* %108, i8* %109, i64 %110, i32* %111, i32 %112)
  store i64 %113, i64* %6, align 8
  br label %124

114:                                              ; preds = %80, %73, %65, %64
  %115 = load i32, i32* %15, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i64, i64* %9, align 8
  br label %122

119:                                              ; preds = %114
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  br label %122

122:                                              ; preds = %119, %117
  %123 = phi i64 [ %118, %117 ], [ %121, %119 ]
  store i64 %123, i64* %6, align 8
  br label %124

124:                                              ; preds = %122, %93, %90, %36
  %125 = load i64, i64* %6, align 8
  ret i64 %125
}

declare dso_local %struct.intel_vgpu* @mdev_get_drvdata(%struct.mdev_device*) #1

declare dso_local i32 @VFIO_PCI_OFFSET_TO_INDEX(i32) #1

declare dso_local i32 @gvt_vgpu_err(i8*, i32) #1

declare dso_local i32 @intel_vgpu_bar_rw(%struct.intel_vgpu*, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @intel_vgpu_aperture_rw(%struct.intel_vgpu*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
