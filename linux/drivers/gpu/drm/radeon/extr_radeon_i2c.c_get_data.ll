; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_i2c.c_get_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_i2c.c_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_i2c_chan = type { %struct.radeon_i2c_bus_rec, %struct.TYPE_2__* }
%struct.radeon_i2c_bus_rec = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_data(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.radeon_i2c_chan*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_i2c_bus_rec*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.radeon_i2c_chan*
  store %struct.radeon_i2c_chan* %8, %struct.radeon_i2c_chan** %3, align 8
  %9 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  store %struct.radeon_device* %13, %struct.radeon_device** %4, align 8
  %14 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %14, i32 0, i32 0
  store %struct.radeon_i2c_bus_rec* %15, %struct.radeon_i2c_bus_rec** %5, align 8
  %16 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %17 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @RREG32(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %21 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
