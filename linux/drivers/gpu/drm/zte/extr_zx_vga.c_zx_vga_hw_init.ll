; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vga.c_zx_vga_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vga.c_zx_vga_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx_vga = type { i64, i32 }

@VGA_CLK_DIV_FS = common dso_local global i64 0, align 8
@VGA_AUTO_DETECT_PARA = common dso_local global i64 0, align 8
@VGA_AUTO_DETECT_SEL = common dso_local global i64 0, align 8
@VGA_DETECT_SEL_NO_DEVICE = common dso_local global i32 0, align 4
@VGA_DEVICE_ADDR = common dso_local global i64 0, align 8
@DDC_ADDR = common dso_local global i32 0, align 4
@VGA_CMD_CFG = common dso_local global i64 0, align 8
@VGA_CMD_TRANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zx_vga*)* @zx_vga_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx_vga_hw_init(%struct.zx_vga* %0) #0 {
  %2 = alloca %struct.zx_vga*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.zx_vga* %0, %struct.zx_vga** %2, align 8
  %5 = load %struct.zx_vga*, %struct.zx_vga** %2, align 8
  %6 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @clk_get_rate(i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = udiv i64 %9, 1000
  %11 = call i32 @DIV_ROUND_UP(i64 %10, i32 1600)
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %4, align 4
  %13 = load %struct.zx_vga*, %struct.zx_vga** %2, align 8
  %14 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VGA_CLK_DIV_FS, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @zx_writel(i64 %17, i32 %18)
  %20 = load %struct.zx_vga*, %struct.zx_vga** %2, align 8
  %21 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VGA_AUTO_DETECT_PARA, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @zx_writel(i64 %24, i32 128)
  %26 = load %struct.zx_vga*, %struct.zx_vga** %2, align 8
  %27 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VGA_AUTO_DETECT_SEL, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i32, i32* @VGA_DETECT_SEL_NO_DEVICE, align 4
  %32 = call i32 @zx_writel(i64 %30, i32 %31)
  %33 = load %struct.zx_vga*, %struct.zx_vga** %2, align 8
  %34 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VGA_DEVICE_ADDR, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32, i32* @DDC_ADDR, align 4
  %39 = call i32 @zx_writel(i64 %37, i32 %38)
  %40 = load %struct.zx_vga*, %struct.zx_vga** %2, align 8
  %41 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @VGA_CMD_CFG, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* @VGA_CMD_TRANS, align 4
  %46 = load i32, i32* @VGA_CMD_TRANS, align 4
  %47 = call i32 @zx_writel_mask(i64 %44, i32 %45, i32 %46)
  ret void
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @zx_writel(i64, i32) #1

declare dso_local i32 @zx_writel_mask(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
