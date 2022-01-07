; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v8.c_get_tile_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v8.c_get_tile_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.tile_config = type { i8*, i32, i8*, i32, i8*, i8*, i32 }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@MC_ARB_RAMCFG = common dso_local global i32 0, align 4
@NOOFBANK = common dso_local global i32 0, align 4
@NOOFRANKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kgd_dev*, %struct.tile_config*)* @get_tile_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tile_config(%struct.kgd_dev* %0, %struct.tile_config* %1) #0 {
  %3 = alloca %struct.kgd_dev*, align 8
  %4 = alloca %struct.tile_config*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  store %struct.kgd_dev* %0, %struct.kgd_dev** %3, align 8
  store %struct.tile_config* %1, %struct.tile_config** %4, align 8
  %6 = load %struct.kgd_dev*, %struct.kgd_dev** %3, align 8
  %7 = bitcast %struct.kgd_dev* %6 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %5, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.tile_config*, %struct.tile_config** %4, align 8
  %14 = getelementptr inbounds %struct.tile_config, %struct.tile_config* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MC_ARB_RAMCFG, align 4
  %21 = load i32, i32* @NOOFBANK, align 4
  %22 = call i8* @REG_GET_FIELD(i32 %19, i32 %20, i32 %21)
  %23 = load %struct.tile_config*, %struct.tile_config** %4, align 8
  %24 = getelementptr inbounds %struct.tile_config, %struct.tile_config* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MC_ARB_RAMCFG, align 4
  %31 = load i32, i32* @NOOFRANKS, align 4
  %32 = call i8* @REG_GET_FIELD(i32 %29, i32 %30, i32 %31)
  %33 = load %struct.tile_config*, %struct.tile_config** %4, align 8
  %34 = getelementptr inbounds %struct.tile_config, %struct.tile_config* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tile_config*, %struct.tile_config** %4, align 8
  %41 = getelementptr inbounds %struct.tile_config, %struct.tile_config* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @ARRAY_SIZE(i32 %46)
  %48 = load %struct.tile_config*, %struct.tile_config** %4, align 8
  %49 = getelementptr inbounds %struct.tile_config, %struct.tile_config* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.tile_config*, %struct.tile_config** %4, align 8
  %56 = getelementptr inbounds %struct.tile_config, %struct.tile_config* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @ARRAY_SIZE(i32 %61)
  %63 = load %struct.tile_config*, %struct.tile_config** %4, align 8
  %64 = getelementptr inbounds %struct.tile_config, %struct.tile_config* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  ret i32 0
}

declare dso_local i8* @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i8* @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
