; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_write_irqenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_write_irqenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }

@DISPC_IRQENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*, i32)* @dispc_write_irqenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_write_irqenable(%struct.dispc_device* %0, i32 %1) #0 {
  %3 = alloca %struct.dispc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %7 = load i32, i32* @DISPC_IRQENABLE, align 4
  %8 = call i32 @dispc_read_reg(%struct.dispc_device* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = xor i32 %10, %11
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %12, %13
  %15 = call i32 @dispc_clear_irqstatus(%struct.dispc_device* %9, i32 %14)
  %16 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %17 = load i32, i32* @DISPC_IRQENABLE, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dispc_write_reg(%struct.dispc_device* %16, i32 %17, i32 %18)
  %20 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %21 = load i32, i32* @DISPC_IRQENABLE, align 4
  %22 = call i32 @dispc_read_reg(%struct.dispc_device* %20, i32 %21)
  ret void
}

declare dso_local i32 @dispc_read_reg(%struct.dispc_device*, i32) #1

declare dso_local i32 @dispc_clear_irqstatus(%struct.dispc_device*, i32) #1

declare dso_local i32 @dispc_write_reg(%struct.dispc_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
