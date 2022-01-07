; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_update_memory_usage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_update_memory_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_bo = type { %struct.TYPE_2__, %struct.radeon_device* }
%struct.TYPE_2__ = type { i64 }
%struct.radeon_device = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_bo*, i32, i32)* @radeon_update_memory_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_update_memory_usage(%struct.radeon_bo* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_bo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  store %struct.radeon_bo* %0, %struct.radeon_bo** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.radeon_bo*, %struct.radeon_bo** %4, align 8
  %10 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %9, i32 0, i32 1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  store %struct.radeon_device* %11, %struct.radeon_device** %7, align 8
  %12 = load %struct.radeon_bo*, %struct.radeon_bo** %4, align 8
  %13 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @PAGE_SHIFT, align 4
  %18 = shl i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %48 [
    i32 129, label %20
    i32 128, label %34
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 1
  %27 = call i32 @atomic64_add(i32 %24, i32* %26)
  br label %33

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 1
  %32 = call i32 @atomic64_sub(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %28, %23
  br label %48

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 0
  %41 = call i32 @atomic64_add(i32 %38, i32* %40)
  br label %47

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 0
  %46 = call i32 @atomic64_sub(i32 %43, i32* %45)
  br label %47

47:                                               ; preds = %42, %37
  br label %48

48:                                               ; preds = %3, %47, %33
  ret void
}

declare dso_local i32 @atomic64_add(i32, i32*) #1

declare dso_local i32 @atomic64_sub(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
