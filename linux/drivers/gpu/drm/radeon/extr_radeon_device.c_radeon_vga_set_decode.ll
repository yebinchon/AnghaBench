; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_vga_set_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_vga_set_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@VGA_RSRC_LEGACY_IO = common dso_local global i32 0, align 4
@VGA_RSRC_LEGACY_MEM = common dso_local global i32 0, align 4
@VGA_RSRC_NORMAL_IO = common dso_local global i32 0, align 4
@VGA_RSRC_NORMAL_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @radeon_vga_set_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_vga_set_decode(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.radeon_device*
  store %struct.radeon_device* %8, %struct.radeon_device** %6, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @radeon_vga_set_state(%struct.radeon_device* %9, i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i32, i32* @VGA_RSRC_LEGACY_IO, align 4
  %16 = load i32, i32* @VGA_RSRC_LEGACY_MEM, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @VGA_RSRC_NORMAL_IO, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @VGA_RSRC_NORMAL_MEM, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @VGA_RSRC_NORMAL_IO, align 4
  %24 = load i32, i32* @VGA_RSRC_NORMAL_MEM, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %14
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @radeon_vga_set_state(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
