; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Detected VRAM RAM=%lluM, BAR=%lluM\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"RAM width %dbits %cDR\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_bo_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @arch_io_reserve_memtype_wc(i32 %6, i64 %10)
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %1
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @arch_phys_wc_add(i32 %20, i64 %24)
  %26 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 5
  store i32 %25, i32* %28, align 4
  br label %29

29:                                               ; preds = %16, %1
  %30 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = ashr i32 %33, 20
  %35 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = lshr i64 %38, 20
  %40 = trunc i64 %39 to i8
  %41 = call i32 @DRM_INFO(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %34, i8 signext %40)
  %42 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %43 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 68, i32 83
  %53 = trunc i32 %52 to i8
  %54 = call i32 @DRM_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %45, i8 signext %53)
  %55 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %56 = call i32 @radeon_ttm_init(%struct.radeon_device* %55)
  ret i32 %56
}

declare dso_local i32 @arch_io_reserve_memtype_wc(i32, i64) #1

declare dso_local i32 @arch_phys_wc_add(i32, i64) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i8 signext) #1

declare dso_local i32 @radeon_ttm_init(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
