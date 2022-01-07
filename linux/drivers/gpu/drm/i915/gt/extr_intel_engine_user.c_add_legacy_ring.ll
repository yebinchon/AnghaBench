; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_user.c_add_legacy_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_user.c_add_legacy_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.legacy_ring = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.intel_engine_cs** }
%struct.intel_engine_cs = type { i64, i32, %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.legacy_ring*, %struct.intel_engine_cs*)* @add_legacy_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_legacy_ring(%struct.legacy_ring* %0, %struct.intel_engine_cs* %1) #0 {
  %3 = alloca %struct.legacy_ring*, align 8
  %4 = alloca %struct.intel_engine_cs*, align 8
  %5 = alloca i32, align 4
  store %struct.legacy_ring* %0, %struct.legacy_ring** %3, align 8
  store %struct.intel_engine_cs* %1, %struct.intel_engine_cs** %4, align 8
  %6 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %7 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load %struct.legacy_ring*, %struct.legacy_ring** %3, align 8
  %10 = getelementptr inbounds %struct.legacy_ring, %struct.legacy_ring* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %8, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %15 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.legacy_ring*, %struct.legacy_ring** %3, align 8
  %18 = getelementptr inbounds %struct.legacy_ring, %struct.legacy_ring* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %13, %2
  %22 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %23 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load %struct.legacy_ring*, %struct.legacy_ring** %3, align 8
  %26 = getelementptr inbounds %struct.legacy_ring, %struct.legacy_ring* %25, i32 0, i32 2
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %26, align 8
  %27 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %28 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.legacy_ring*, %struct.legacy_ring** %3, align 8
  %31 = getelementptr inbounds %struct.legacy_ring, %struct.legacy_ring* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.legacy_ring*, %struct.legacy_ring** %3, align 8
  %33 = getelementptr inbounds %struct.legacy_ring, %struct.legacy_ring* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %21, %13
  %35 = load %struct.legacy_ring*, %struct.legacy_ring** %3, align 8
  %36 = call i32 @legacy_ring_idx(%struct.legacy_ring* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, -1
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %70

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.legacy_ring*, %struct.legacy_ring** %3, align 8
  %46 = getelementptr inbounds %struct.legacy_ring, %struct.legacy_ring* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.intel_engine_cs**, %struct.intel_engine_cs*** %48, align 8
  %50 = call i32 @ARRAY_SIZE(%struct.intel_engine_cs** %49)
  %51 = icmp sge i32 %44, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @GEM_BUG_ON(i32 %52)
  %54 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %55 = load %struct.legacy_ring*, %struct.legacy_ring** %3, align 8
  %56 = getelementptr inbounds %struct.legacy_ring, %struct.legacy_ring* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.intel_engine_cs**, %struct.intel_engine_cs*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.intel_engine_cs*, %struct.intel_engine_cs** %59, i64 %61
  store %struct.intel_engine_cs* %54, %struct.intel_engine_cs** %62, align 8
  %63 = load %struct.legacy_ring*, %struct.legacy_ring** %3, align 8
  %64 = getelementptr inbounds %struct.legacy_ring, %struct.legacy_ring* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %69 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %43, %42
  ret void
}

declare dso_local i32 @legacy_ring_idx(%struct.legacy_ring*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.intel_engine_cs**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
