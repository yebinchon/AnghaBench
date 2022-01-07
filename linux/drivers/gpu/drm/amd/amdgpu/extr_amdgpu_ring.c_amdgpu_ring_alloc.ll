; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ring.c_amdgpu_ring_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ring.c_amdgpu_ring_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 (%struct.amdgpu_ring*)* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %8 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add i32 %6, %11
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = xor i32 %17, -1
  %19 = and i32 %12, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %22 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ugt i32 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON_ONCE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %55

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %34 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %36 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %39 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %41 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32 (%struct.amdgpu_ring*)*, i32 (%struct.amdgpu_ring*)** %43, align 8
  %45 = icmp ne i32 (%struct.amdgpu_ring*)* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %31
  %47 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %48 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32 (%struct.amdgpu_ring*)*, i32 (%struct.amdgpu_ring*)** %50, align 8
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %53 = call i32 %51(%struct.amdgpu_ring* %52)
  br label %54

54:                                               ; preds = %46, %31
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %28
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
