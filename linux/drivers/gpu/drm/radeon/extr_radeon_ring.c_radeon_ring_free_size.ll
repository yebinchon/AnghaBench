; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_free_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_free_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_ring_free_size(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %4, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %8 = call i32 @radeon_ring_get_rptr(%struct.radeon_device* %6, %struct.radeon_ring* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %11 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sdiv i32 %12, 4
  %14 = add nsw i32 %9, %13
  %15 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %16 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %18 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %21 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %25 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %28 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %32 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %2
  %36 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %37 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, 4
  %40 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %41 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %44 = call i32 @radeon_ring_lockup_update(%struct.radeon_device* %42, %struct.radeon_ring* %43)
  br label %45

45:                                               ; preds = %35, %2
  ret void
}

declare dso_local i32 @radeon_ring_get_rptr(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ring_lockup_update(%struct.radeon_device*, %struct.radeon_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
