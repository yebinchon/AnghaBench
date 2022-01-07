; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_irq.c_amdgpu_irq_add_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_irq.c_amdgpu_irq_add_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.amdgpu_irq_src** }
%struct.amdgpu_irq_src = type { i32, i32*, i32 }

@AMDGPU_IRQ_CLIENTID_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_MAX_IRQ_SRC_ID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %0, i32 %1, i32 %2, %struct.amdgpu_irq_src* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_irq_src*, align 8
  %10 = alloca i32*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.amdgpu_irq_src* %3, %struct.amdgpu_irq_src** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @AMDGPU_IRQ_CLIENTID_MAX, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %128

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @AMDGPU_MAX_IRQ_SRC_ID, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %128

24:                                               ; preds = %17
  %25 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %9, align 8
  %26 = getelementptr inbounds %struct.amdgpu_irq_src, %struct.amdgpu_irq_src* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %128

32:                                               ; preds = %24
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.amdgpu_irq_src**, %struct.amdgpu_irq_src*** %40, align 8
  %42 = icmp ne %struct.amdgpu_irq_src** %41, null
  br i1 %42, label %70, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @AMDGPU_MAX_IRQ_SRC_ID, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @kcalloc(i32 %44, i32 8, i32 %45)
  %47 = bitcast i8* %46 to %struct.amdgpu_irq_src**
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store %struct.amdgpu_irq_src** %47, %struct.amdgpu_irq_src*** %55, align 8
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load %struct.amdgpu_irq_src**, %struct.amdgpu_irq_src*** %63, align 8
  %65 = icmp ne %struct.amdgpu_irq_src** %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %43
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %128

69:                                               ; preds = %43
  br label %70

70:                                               ; preds = %69, %32
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load %struct.amdgpu_irq_src**, %struct.amdgpu_irq_src*** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %79, i64 %81
  %83 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %82, align 8
  %84 = icmp ne %struct.amdgpu_irq_src* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %70
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %128

88:                                               ; preds = %70
  %89 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %9, align 8
  %90 = getelementptr inbounds %struct.amdgpu_irq_src, %struct.amdgpu_irq_src* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %88
  %94 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %9, align 8
  %95 = getelementptr inbounds %struct.amdgpu_irq_src, %struct.amdgpu_irq_src* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %114, label %98

98:                                               ; preds = %93
  %99 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %9, align 8
  %100 = getelementptr inbounds %struct.amdgpu_irq_src, %struct.amdgpu_irq_src* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call i8* @kcalloc(i32 %101, i32 4, i32 %102)
  %104 = bitcast i8* %103 to i32*
  store i32* %104, i32** %10, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %98
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %128

110:                                              ; preds = %98
  %111 = load i32*, i32** %10, align 8
  %112 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %9, align 8
  %113 = getelementptr inbounds %struct.amdgpu_irq_src, %struct.amdgpu_irq_src* %112, i32 0, i32 1
  store i32* %111, i32** %113, align 8
  br label %114

114:                                              ; preds = %110, %93, %88
  %115 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %9, align 8
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %117 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load %struct.amdgpu_irq_src**, %struct.amdgpu_irq_src*** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %124, i64 %126
  store %struct.amdgpu_irq_src* %115, %struct.amdgpu_irq_src** %127, align 8
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %114, %107, %85, %66, %29, %21, %14
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
