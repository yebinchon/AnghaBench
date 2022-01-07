; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_device.c_cail_mc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_device.c_cail_mc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.card_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 (%struct.radeon_device*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.card_info*, i32)* @cail_mc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cail_mc_read(%struct.card_info* %0, i32 %1) #0 {
  %3 = alloca %struct.card_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  store %struct.card_info* %0, %struct.card_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.card_info*, %struct.card_info** %3, align 8
  %8 = getelementptr inbounds %struct.card_info, %struct.card_info* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  store %struct.radeon_device* %11, %struct.radeon_device** %5, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 0
  %14 = load i32 (%struct.radeon_device*, i32)*, i32 (%struct.radeon_device*, i32)** %13, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 %14(%struct.radeon_device* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
