; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r300.c_r300_mc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r300.c_r300_mc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@RADEON_MEM_CNTL = common dso_local global i32 0, align 4
@R300_MEM_NUM_CHANNELS_MASK = common dso_local global i32 0, align 4
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@RADEON_NB_TOM = common dso_local global i32 0, align 4
@RADEON_IS_AGP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r300_mc_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load i32, i32* @RADEON_MEM_CNTL, align 4
  %9 = call i32 @RREG32(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @R300_MEM_NUM_CHANNELS_MASK, align 4
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %26 [
    i32 0, label %14
    i32 1, label %18
    i32 2, label %22
  ]

14:                                               ; preds = %1
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 64, i32* %17, align 4
  br label %30

18:                                               ; preds = %1
  %19 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32 128, i32* %21, align 4
  br label %30

22:                                               ; preds = %1
  %23 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 256, i32* %25, align 4
  br label %30

26:                                               ; preds = %1
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 128, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %22, %18, %14
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = call i32 @r100_vram_init_sizes(%struct.radeon_device* %31)
  %33 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %3, align 4
  %37 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @RADEON_IS_IGP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %30
  %44 = load i32, i32* @RADEON_NB_TOM, align 4
  %45 = call i32 @RREG32(i32 %44)
  %46 = and i32 %45, 65535
  %47 = shl i32 %46, 16
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %43, %30
  %49 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %50 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 1
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @radeon_vram_location(%struct.radeon_device* %49, %struct.TYPE_3__* %51, i32 %52)
  %54 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %58 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @RADEON_IS_AGP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %48
  %64 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %65 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 1
  %67 = call i32 @radeon_gtt_location(%struct.radeon_device* %64, %struct.TYPE_3__* %66)
  br label %68

68:                                               ; preds = %63, %48
  %69 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %70 = call i32 @radeon_update_bandwidth_info(%struct.radeon_device* %69)
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @r100_vram_init_sizes(%struct.radeon_device*) #1

declare dso_local i32 @radeon_vram_location(%struct.radeon_device*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @radeon_gtt_location(%struct.radeon_device*, %struct.TYPE_3__*) #1

declare dso_local i32 @radeon_update_bandwidth_info(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
