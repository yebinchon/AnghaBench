; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_mock_engine.c_mock_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_mock_engine.c_mock_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring = type { i64, i64, i32, i8*, i32 }
%struct.intel_engine_cs = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_ring* (%struct.intel_engine_cs*)* @mock_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_ring* @mock_ring(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_ring*, align 8
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.intel_ring*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  %6 = load i32, i32* @PAGE_SIZE, align 4
  %7 = sdiv i32 %6, 2
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = add i64 40, %9
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.intel_ring* @kzalloc(i32 %11, i32 %12)
  store %struct.intel_ring* %13, %struct.intel_ring** %5, align 8
  %14 = load %struct.intel_ring*, %struct.intel_ring** %5, align 8
  %15 = icmp ne %struct.intel_ring* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store %struct.intel_ring* null, %struct.intel_ring** %2, align 8
  br label %38

17:                                               ; preds = %1
  %18 = load %struct.intel_ring*, %struct.intel_ring** %5, align 8
  %19 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %18, i32 0, i32 4
  %20 = call i32 @kref_init(i32* %19)
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.intel_ring*, %struct.intel_ring** %5, align 8
  %23 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.intel_ring*, %struct.intel_ring** %5, align 8
  %26 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.intel_ring*, %struct.intel_ring** %5, align 8
  %28 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %27, i64 1
  %29 = bitcast %struct.intel_ring* %28 to i8*
  %30 = load %struct.intel_ring*, %struct.intel_ring** %5, align 8
  %31 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load %struct.intel_ring*, %struct.intel_ring** %5, align 8
  %33 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %32, i32 0, i32 2
  %34 = call i32 @atomic_set(i32* %33, i32 1)
  %35 = load %struct.intel_ring*, %struct.intel_ring** %5, align 8
  %36 = call i32 @intel_ring_update_space(%struct.intel_ring* %35)
  %37 = load %struct.intel_ring*, %struct.intel_ring** %5, align 8
  store %struct.intel_ring* %37, %struct.intel_ring** %2, align 8
  br label %38

38:                                               ; preds = %17, %16
  %39 = load %struct.intel_ring*, %struct.intel_ring** %2, align 8
  ret %struct.intel_ring* %39
}

declare dso_local %struct.intel_ring* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @intel_ring_update_space(%struct.intel_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
