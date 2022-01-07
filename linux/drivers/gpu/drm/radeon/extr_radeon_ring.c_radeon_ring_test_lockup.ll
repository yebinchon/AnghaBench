; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_test_lockup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_test_lockup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32, i32, i32 }

@jiffies_64 = common dso_local global i64 0, align 8
@radeon_lockup_timeout = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"ring %d stalled for more than %llumsec\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_ring_test_lockup(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %5, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %10 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %11 = call i64 @radeon_ring_get_rptr(%struct.radeon_device* %9, %struct.radeon_ring* %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %13 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %12, i32 0, i32 2
  %14 = call i64 @atomic64_read(i32* %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %17 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %16, i32 0, i32 1
  %18 = call i64 @atomic_read(i32* %17)
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %22 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %23 = call i32 @radeon_ring_lockup_update(%struct.radeon_device* %21, %struct.radeon_ring* %22)
  store i32 0, i32* %3, align 4
  br label %45

24:                                               ; preds = %2
  %25 = load i64, i64* @jiffies_64, align 8
  %26 = load i64, i64* %7, align 8
  %27 = sub nsw i64 %25, %26
  %28 = call i64 @jiffies_to_msecs(i64 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* @radeon_lockup_timeout, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @radeon_lockup_timeout, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %40 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %42)
  store i32 1, i32* %3, align 4
  br label %45

44:                                               ; preds = %31, %24
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %35, %20
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @radeon_ring_get_rptr(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @radeon_ring_lockup_update(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i64 @jiffies_to_msecs(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
