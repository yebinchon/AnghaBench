; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v7.c_kgd_address_watch_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v7.c_kgd_address_watch_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i32 }
%union.TCP_WATCH_CNTL_BITS = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@ADDRESS_WATCH_REG_CNTL_DEFAULT_MASK = common dso_local global i32 0, align 4
@MAX_WATCH_ADDRESSES = common dso_local global i32 0, align 4
@watchRegs = common dso_local global i32* null, align 8
@ADDRESS_WATCH_REG_MAX = common dso_local global i32 0, align 4
@ADDRESS_WATCH_REG_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kgd_dev*)* @kgd_address_watch_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kgd_address_watch_disable(%struct.kgd_dev* %0) #0 {
  %2 = alloca %struct.kgd_dev*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %union.TCP_WATCH_CNTL_BITS, align 8
  %5 = alloca i32, align 4
  store %struct.kgd_dev* %0, %struct.kgd_dev** %2, align 8
  %6 = load %struct.kgd_dev*, %struct.kgd_dev** %2, align 8
  %7 = call %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev* %6)
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %3, align 8
  %8 = bitcast %union.TCP_WATCH_CNTL_BITS* %4 to i64*
  store i64 0, i64* %8, align 8
  %9 = bitcast %union.TCP_WATCH_CNTL_BITS* %4 to %struct.TYPE_2__*
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @ADDRESS_WATCH_REG_CNTL_DEFAULT_MASK, align 4
  %12 = bitcast %union.TCP_WATCH_CNTL_BITS* %4 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = bitcast %union.TCP_WATCH_CNTL_BITS* %4 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %33, %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MAX_WATCH_ADDRESSES, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load i32*, i32** @watchRegs, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ADDRESS_WATCH_REG_MAX, align 4
  %24 = mul i32 %22, %23
  %25 = load i32, i32* @ADDRESS_WATCH_REG_CNTL, align 4
  %26 = add i32 %24, %25
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %21, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = bitcast %union.TCP_WATCH_CNTL_BITS* %4 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @WREG32(i32 %29, i64 %31)
  br label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %16

36:                                               ; preds = %16
  ret i32 0
}

declare dso_local %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev*) #1

declare dso_local i32 @WREG32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
