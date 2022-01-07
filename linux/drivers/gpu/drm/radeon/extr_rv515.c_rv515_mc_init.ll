; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv515.c_rv515_mc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv515.c_rv515_mc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@RADEON_IS_AGP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rv515_mc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv515_mc_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = call i32 @rv515_vram_get_type(%struct.radeon_device* %3)
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call i32 @r100_vram_init_sizes(%struct.radeon_device* %5)
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 1
  %10 = call i32 @radeon_vram_location(%struct.radeon_device* %7, %struct.TYPE_3__* %9, i32 0)
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @RADEON_IS_AGP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %22 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 1
  %24 = call i32 @radeon_gtt_location(%struct.radeon_device* %21, %struct.TYPE_3__* %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %27 = call i32 @radeon_update_bandwidth_info(%struct.radeon_device* %26)
  ret void
}

declare dso_local i32 @rv515_vram_get_type(%struct.radeon_device*) #1

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
