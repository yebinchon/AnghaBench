; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_dumb-vga-dac.c_dumb_vga_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_dumb-vga-dac.c_dumb_vga_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dumb_vga = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dumb_vga_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dumb_vga_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dumb_vga*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.dumb_vga* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.dumb_vga* %5, %struct.dumb_vga** %3, align 8
  %6 = load %struct.dumb_vga*, %struct.dumb_vga** %3, align 8
  %7 = getelementptr inbounds %struct.dumb_vga, %struct.dumb_vga* %6, i32 0, i32 1
  %8 = call i32 @drm_bridge_remove(i32* %7)
  %9 = load %struct.dumb_vga*, %struct.dumb_vga** %3, align 8
  %10 = getelementptr inbounds %struct.dumb_vga, %struct.dumb_vga* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.dumb_vga*, %struct.dumb_vga** %3, align 8
  %15 = getelementptr inbounds %struct.dumb_vga, %struct.dumb_vga* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @i2c_put_adapter(i64 %16)
  br label %18

18:                                               ; preds = %13, %1
  ret i32 0
}

declare dso_local %struct.dumb_vga* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @drm_bridge_remove(i32*) #1

declare dso_local i32 @i2c_put_adapter(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
