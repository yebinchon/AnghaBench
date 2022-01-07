; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__, %struct.radeon_fence_driver* }
%struct.TYPE_2__ = type { i64 }
%struct.radeon_fence_driver = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32)* @radeon_fence_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_fence_read(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_fence_driver*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 1
  %9 = load %struct.radeon_fence_driver*, %struct.radeon_fence_driver** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.radeon_fence_driver, %struct.radeon_fence_driver* %9, i64 %11
  store %struct.radeon_fence_driver* %12, %struct.radeon_fence_driver** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.radeon_fence_driver*, %struct.radeon_fence_driver** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_fence_driver, %struct.radeon_fence_driver* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %18, %2
  %25 = phi i1 [ true, %2 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @likely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load %struct.radeon_fence_driver*, %struct.radeon_fence_driver** %5, align 8
  %31 = getelementptr inbounds %struct.radeon_fence_driver, %struct.radeon_fence_driver* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.radeon_fence_driver*, %struct.radeon_fence_driver** %5, align 8
  %36 = getelementptr inbounds %struct.radeon_fence_driver, %struct.radeon_fence_driver* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  store i32 %39, i32* %6, align 4
  br label %45

40:                                               ; preds = %29
  %41 = load %struct.radeon_fence_driver*, %struct.radeon_fence_driver** %5, align 8
  %42 = getelementptr inbounds %struct.radeon_fence_driver, %struct.radeon_fence_driver* %41, i32 0, i32 1
  %43 = call i32 @atomic64_read(i32* %42)
  %44 = call i32 @lower_32_bits(i32 %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %40, %34
  br label %51

46:                                               ; preds = %24
  %47 = load %struct.radeon_fence_driver*, %struct.radeon_fence_driver** %5, align 8
  %48 = getelementptr inbounds %struct.radeon_fence_driver, %struct.radeon_fence_driver* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @RREG32(i32 %49)
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %46, %45
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
