; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_i2c.c_amdgpu_i2c_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_i2c.c_amdgpu_i2c_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_i2c_chan = type { %struct.amdgpu_i2c_bus_rec, %struct.TYPE_2__* }
%struct.amdgpu_i2c_bus_rec = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @amdgpu_i2c_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_i2c_set_clock(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_i2c_chan*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_i2c_bus_rec*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.amdgpu_i2c_chan*
  store %struct.amdgpu_i2c_chan* %10, %struct.amdgpu_i2c_chan** %5, align 8
  %11 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %5, align 8
  %12 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %6, align 8
  %16 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %5, align 8
  %17 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %16, i32 0, i32 0
  store %struct.amdgpu_i2c_bus_rec* %17, %struct.amdgpu_i2c_bus_rec** %7, align 8
  %18 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %7, align 8
  %19 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @RREG32(i32 %20)
  %22 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %7, align 8
  %23 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %21, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %34

30:                                               ; preds = %2
  %31 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %7, align 8
  %32 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  br label %34

34:                                               ; preds = %30, %29
  %35 = phi i32 [ 0, %29 ], [ %33, %30 ]
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %7, align 8
  %39 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @WREG32(i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
