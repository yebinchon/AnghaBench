; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_device_handle_px_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_device_handle_px_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_px_quirk = type { i64, i64, i64, i64, i32 }
%struct.radeon_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@radeon_px_quirk_list = common dso_local global %struct.radeon_px_quirk* null, align 8
@RADEON_PX_QUIRK_DISABLE_PX = common dso_local global i32 0, align 4
@RADEON_IS_PX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @radeon_device_handle_px_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_device_handle_px_quirks(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.radeon_px_quirk*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_px_quirk*, %struct.radeon_px_quirk** @radeon_px_quirk_list, align 8
  store %struct.radeon_px_quirk* %4, %struct.radeon_px_quirk** %3, align 8
  br label %5

5:                                                ; preds = %61, %1
  %6 = load %struct.radeon_px_quirk*, %struct.radeon_px_quirk** %3, align 8
  %7 = icmp ne %struct.radeon_px_quirk* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load %struct.radeon_px_quirk*, %struct.radeon_px_quirk** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_px_quirk, %struct.radeon_px_quirk* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %8, %5
  %14 = phi i1 [ false, %5 ], [ %12, %8 ]
  br i1 %14, label %15, label %64

15:                                               ; preds = %13
  %16 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.radeon_px_quirk*, %struct.radeon_px_quirk** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_px_quirk, %struct.radeon_px_quirk* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %15
  %26 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.radeon_px_quirk*, %struct.radeon_px_quirk** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_px_quirk, %struct.radeon_px_quirk* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %25
  %36 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.radeon_px_quirk*, %struct.radeon_px_quirk** %3, align 8
  %42 = getelementptr inbounds %struct.radeon_px_quirk, %struct.radeon_px_quirk* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %35
  %46 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.radeon_px_quirk*, %struct.radeon_px_quirk** %3, align 8
  %52 = getelementptr inbounds %struct.radeon_px_quirk, %struct.radeon_px_quirk* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = load %struct.radeon_px_quirk*, %struct.radeon_px_quirk** %3, align 8
  %57 = getelementptr inbounds %struct.radeon_px_quirk, %struct.radeon_px_quirk* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %64

61:                                               ; preds = %45, %35, %25, %15
  %62 = load %struct.radeon_px_quirk*, %struct.radeon_px_quirk** %3, align 8
  %63 = getelementptr inbounds %struct.radeon_px_quirk, %struct.radeon_px_quirk* %62, i32 1
  store %struct.radeon_px_quirk* %63, %struct.radeon_px_quirk** %3, align 8
  br label %5

64:                                               ; preds = %55, %13
  %65 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @RADEON_PX_QUIRK_DISABLE_PX, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load i32, i32* @RADEON_IS_PX, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %71, %64
  %79 = call i32 (...) @radeon_is_atpx_hybrid()
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %78
  %82 = call i32 (...) @radeon_has_atpx_dgpu_power_cntl()
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* @RADEON_IS_PX, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %84, %81, %78
  ret void
}

declare dso_local i32 @radeon_is_atpx_hybrid(...) #1

declare dso_local i32 @radeon_has_atpx_dgpu_power_cntl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
