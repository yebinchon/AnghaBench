; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v7.c_kgd_address_watch_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v7.c_kgd_address_watch_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i32 }
%union.TCP_WATCH_CNTL_BITS = type { i32 }
%struct.TYPE_2__ = type { i32 }

@watchRegs = common dso_local global i32* null, align 8
@ADDRESS_WATCH_REG_MAX = common dso_local global i32 0, align 4
@ADDRESS_WATCH_REG_CNTL = common dso_local global i32 0, align 4
@ADDRESS_WATCH_REG_ADDR_HI = common dso_local global i32 0, align 4
@ADDRESS_WATCH_REG_ADDR_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kgd_dev*, i32, i32, i32, i32)* @kgd_address_watch_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kgd_address_watch_execute(%struct.kgd_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.kgd_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.amdgpu_device*, align 8
  %12 = alloca %union.TCP_WATCH_CNTL_BITS, align 4
  store %struct.kgd_dev* %0, %struct.kgd_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.kgd_dev*, %struct.kgd_dev** %6, align 8
  %14 = call %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev* %13)
  store %struct.amdgpu_device* %14, %struct.amdgpu_device** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = bitcast %union.TCP_WATCH_CNTL_BITS* %12 to i32*
  store i32 %15, i32* %16, align 4
  %17 = bitcast %union.TCP_WATCH_CNTL_BITS* %12 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** @watchRegs, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ADDRESS_WATCH_REG_MAX, align 4
  %22 = mul i32 %20, %21
  %23 = load i32, i32* @ADDRESS_WATCH_REG_CNTL, align 4
  %24 = add i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %19, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = bitcast %union.TCP_WATCH_CNTL_BITS* %12 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @WREG32(i32 %27, i32 %29)
  %31 = load i32*, i32** @watchRegs, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @ADDRESS_WATCH_REG_MAX, align 4
  %34 = mul i32 %32, %33
  %35 = load i32, i32* @ADDRESS_WATCH_REG_ADDR_HI, align 4
  %36 = add i32 %34, %35
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %31, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @WREG32(i32 %39, i32 %40)
  %42 = load i32*, i32** @watchRegs, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @ADDRESS_WATCH_REG_MAX, align 4
  %45 = mul i32 %43, %44
  %46 = load i32, i32* @ADDRESS_WATCH_REG_ADDR_LO, align 4
  %47 = add i32 %45, %46
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %42, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @WREG32(i32 %50, i32 %51)
  %53 = bitcast %union.TCP_WATCH_CNTL_BITS* %12 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = load i32*, i32** @watchRegs, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @ADDRESS_WATCH_REG_MAX, align 4
  %58 = mul i32 %56, %57
  %59 = load i32, i32* @ADDRESS_WATCH_REG_CNTL, align 4
  %60 = add i32 %58, %59
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %55, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = bitcast %union.TCP_WATCH_CNTL_BITS* %12 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @WREG32(i32 %63, i32 %65)
  ret i32 0
}

declare dso_local %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev*) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
