; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.radeon_device*)*, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 (%struct.radeon_device*, %struct.radeon_ring*)* }
%struct.radeon_ring = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_ring_commit(%struct.radeon_device* %0, %struct.radeon_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %3
  %10 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %13, align 8
  %15 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %16 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %14, i64 %17
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (%struct.radeon_device*, %struct.radeon_ring*)*, i32 (%struct.radeon_device*, %struct.radeon_ring*)** %20, align 8
  %22 = icmp ne i32 (%struct.radeon_device*, %struct.radeon_ring*)* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %9
  %24 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %27, align 8
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %30 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %28, i64 %31
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.radeon_device*, %struct.radeon_ring*)*, i32 (%struct.radeon_device*, %struct.radeon_ring*)** %34, align 8
  %36 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %37 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %38 = call i32 %35(%struct.radeon_device* %36, %struct.radeon_ring* %37)
  br label %39

39:                                               ; preds = %23, %9, %3
  br label %40

40:                                               ; preds = %49, %39
  %41 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %42 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %45 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %51 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %52 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @radeon_ring_write(%struct.radeon_ring* %50, i32 %53)
  br label %40

55:                                               ; preds = %40
  %56 = call i32 (...) @mb()
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32 (%struct.radeon_device*)*, i32 (%struct.radeon_device*)** %63, align 8
  %65 = icmp ne i32 (%struct.radeon_device*)* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32 (%struct.radeon_device*)*, i32 (%struct.radeon_device*)** %70, align 8
  %72 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %73 = call i32 %71(%struct.radeon_device* %72)
  br label %74

74:                                               ; preds = %66, %59, %55
  %75 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %76 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %77 = call i32 @radeon_ring_set_wptr(%struct.radeon_device* %75, %struct.radeon_ring* %76)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @radeon_ring_set_wptr(%struct.radeon_device*, %struct.radeon_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
