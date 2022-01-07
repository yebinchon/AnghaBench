; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_backup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_backup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.radeon_ring = type { i32, i32, i32, i32*, i32*, i64, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_ring_backup(%struct.radeon_device* %0, %struct.radeon_ring* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ring*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %6, align 8
  store i32** %2, i32*** %7, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32**, i32*** %7, align 8
  store i32* null, i32** %14, align 8
  %15 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %16 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %15, i32 0, i32 7
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  store i32 0, i32* %4, align 4
  br label %128

23:                                               ; preds = %3
  %24 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %25 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %26 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @radeon_fence_count_emitted(%struct.radeon_device* %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  store i32 0, i32* %4, align 4
  br label %128

34:                                               ; preds = %23
  %35 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %36 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %41 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @RREG32(i64 %42)
  store i32 %43, i32* %9, align 4
  br label %61

44:                                               ; preds = %34
  %45 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %52 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  store i32 %55, i32* %9, align 4
  br label %60

56:                                               ; preds = %44
  %57 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %58 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  store i32 0, i32* %4, align 4
  br label %128

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %39
  %62 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %63 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %66 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %67, 4
  %69 = add nsw i32 %64, %68
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = sub i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %74 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %61
  %81 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  store i32 0, i32* %4, align 4
  br label %128

84:                                               ; preds = %61
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i32* @kvmalloc_array(i32 %85, i32 4, i32 %86)
  %88 = load i32**, i32*** %7, align 8
  store i32* %87, i32** %88, align 8
  %89 = load i32**, i32*** %7, align 8
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %84
  %93 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %94 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %93, i32 0, i32 0
  %95 = call i32 @mutex_unlock(i32* %94)
  store i32 0, i32* %4, align 4
  br label %128

96:                                               ; preds = %84
  store i32 0, i32* %10, align 4
  br label %97

97:                                               ; preds = %120, %96
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %123

101:                                              ; preds = %97
  %102 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %103 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %9, align 4
  %107 = zext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32**, i32*** %7, align 8
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %109, i32* %114, align 4
  %115 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %116 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %101
  %121 = load i32, i32* %10, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %97

123:                                              ; preds = %97
  %124 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %125 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %124, i32 0, i32 0
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %123, %92, %80, %56, %30, %19
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @radeon_fence_count_emitted(%struct.radeon_device*, i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32* @kvmalloc_array(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
