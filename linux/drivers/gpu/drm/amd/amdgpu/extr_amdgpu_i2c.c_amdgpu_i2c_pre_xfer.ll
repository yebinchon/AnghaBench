; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_i2c.c_amdgpu_i2c_pre_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_i2c.c_amdgpu_i2c_pre_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.amdgpu_i2c_chan = type { i32, %struct.amdgpu_i2c_bus_rec, %struct.TYPE_2__* }
%struct.amdgpu_i2c_bus_rec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @amdgpu_i2c_pre_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_i2c_pre_xfer(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.amdgpu_i2c_chan*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_i2c_bus_rec*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %8 = call %struct.amdgpu_i2c_chan* @i2c_get_adapdata(%struct.i2c_adapter* %7)
  store %struct.amdgpu_i2c_chan* %8, %struct.amdgpu_i2c_chan** %3, align 8
  %9 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  store %struct.amdgpu_device* %13, %struct.amdgpu_device** %4, align 8
  %14 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %14, i32 0, i32 1
  store %struct.amdgpu_i2c_bus_rec* %15, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %16 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %20 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %19, i32 0, i32 12
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %1
  %24 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %25 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @RREG32(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, -65537
  store i32 %29, i32* %6, align 4
  %30 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %31 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @WREG32(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %23, %1
  %36 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %37 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %36, i32 0, i32 11
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @RREG32(i32 %38)
  %40 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %41 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = xor i32 %42, -1
  %44 = and i32 %39, %43
  store i32 %44, i32* %6, align 4
  %45 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %46 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %45, i32 0, i32 11
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @WREG32(i32 %47, i32 %48)
  %50 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %51 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %50, i32 0, i32 10
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @RREG32(i32 %52)
  %54 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %55 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %53, %57
  store i32 %58, i32* %6, align 4
  %59 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %60 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %59, i32 0, i32 10
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @WREG32(i32 %61, i32 %62)
  %64 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %65 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @RREG32(i32 %66)
  %68 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %69 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = xor i32 %70, -1
  %72 = and i32 %67, %71
  store i32 %72, i32* %6, align 4
  %73 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %74 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @WREG32(i32 %75, i32 %76)
  %78 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %79 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @RREG32(i32 %80)
  %82 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %83 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %81, %85
  store i32 %86, i32* %6, align 4
  %87 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %88 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @WREG32(i32 %89, i32 %90)
  %92 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %93 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @RREG32(i32 %94)
  %96 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %97 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %95, %98
  store i32 %99, i32* %6, align 4
  %100 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %101 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @WREG32(i32 %102, i32 %103)
  %105 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %106 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @RREG32(i32 %107)
  store i32 %108, i32* %6, align 4
  %109 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %110 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @RREG32(i32 %111)
  %113 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %114 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %112, %115
  store i32 %116, i32* %6, align 4
  %117 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %118 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @WREG32(i32 %119, i32 %120)
  %122 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %5, align 8
  %123 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @RREG32(i32 %124)
  store i32 %125, i32* %6, align 4
  ret i32 0
}

declare dso_local %struct.amdgpu_i2c_chan* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
