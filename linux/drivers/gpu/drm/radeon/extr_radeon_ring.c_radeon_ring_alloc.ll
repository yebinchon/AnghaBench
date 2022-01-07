; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32, i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_ring_alloc(%struct.radeon_device* %0, %struct.radeon_ring* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %11 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sdiv i32 %12, 4
  %14 = icmp ugt i32 %9, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %69

18:                                               ; preds = %3
  %19 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %20 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %21 = call i32 @radeon_ring_free_size(%struct.radeon_device* %19, %struct.radeon_ring* %20)
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %24 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add i32 %22, %25
  %27 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %28 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %26, %30
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %59, %18
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %35 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = icmp ugt i32 %33, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %32
  %40 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %41 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %42 = call i32 @radeon_ring_free_size(%struct.radeon_device* %40, %struct.radeon_ring* %41)
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %45 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %60

49:                                               ; preds = %39
  %50 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %51 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %52 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @radeon_fence_wait_next(%struct.radeon_device* %50, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %69

59:                                               ; preds = %49
  br label %32

60:                                               ; preds = %48, %32
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %63 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %65 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %68 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %60, %57, %15
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @radeon_ring_free_size(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_fence_wait_next(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
