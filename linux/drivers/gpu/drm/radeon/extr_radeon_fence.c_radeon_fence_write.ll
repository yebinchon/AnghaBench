; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__, %struct.radeon_fence_driver* }
%struct.TYPE_2__ = type { i64 }
%struct.radeon_fence_driver = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, i32)* @radeon_fence_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_fence_write(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_fence_driver*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 1
  %10 = load %struct.radeon_fence_driver*, %struct.radeon_fence_driver** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.radeon_fence_driver, %struct.radeon_fence_driver* %10, i64 %12
  store %struct.radeon_fence_driver* %13, %struct.radeon_fence_driver** %7, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.radeon_fence_driver*, %struct.radeon_fence_driver** %7, align 8
  %21 = getelementptr inbounds %struct.radeon_fence_driver, %struct.radeon_fence_driver* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %19, %3
  %26 = phi i1 [ true, %3 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.radeon_fence_driver*, %struct.radeon_fence_driver** %7, align 8
  %32 = getelementptr inbounds %struct.radeon_fence_driver, %struct.radeon_fence_driver* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @cpu_to_le32(i32 %36)
  %38 = load %struct.radeon_fence_driver*, %struct.radeon_fence_driver** %7, align 8
  %39 = getelementptr inbounds %struct.radeon_fence_driver, %struct.radeon_fence_driver* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %30
  br label %48

42:                                               ; preds = %25
  %43 = load %struct.radeon_fence_driver*, %struct.radeon_fence_driver** %7, align 8
  %44 = getelementptr inbounds %struct.radeon_fence_driver, %struct.radeon_fence_driver* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @WREG32(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %41
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
