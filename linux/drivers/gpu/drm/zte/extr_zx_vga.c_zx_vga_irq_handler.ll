; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vga.c_zx_vga_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vga.c_zx_vga_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx_vga = type { i32, i32, i64 }

@VGA_I2C_STATUS = common dso_local global i64 0, align 8
@VGA_CLEAR_IRQ = common dso_local global i32 0, align 4
@VGA_DEVICE_CONNECTED = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@VGA_DEVICE_DISCONNECTED = common dso_local global i32 0, align 4
@VGA_AUTO_DETECT_SEL = common dso_local global i64 0, align 8
@VGA_DETECT_SEL_NO_DEVICE = common dso_local global i32 0, align 4
@VGA_TRANS_DONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @zx_vga_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_vga_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.zx_vga*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.zx_vga*
  store %struct.zx_vga* %9, %struct.zx_vga** %6, align 8
  %10 = load %struct.zx_vga*, %struct.zx_vga** %6, align 8
  %11 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VGA_I2C_STATUS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @zx_readl(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.zx_vga*, %struct.zx_vga** %6, align 8
  %17 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VGA_I2C_STATUS, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* @VGA_CLEAR_IRQ, align 4
  %22 = load i32, i32* @VGA_CLEAR_IRQ, align 4
  %23 = call i32 @zx_writel_mask(i64 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @VGA_DEVICE_CONNECTED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.zx_vga*, %struct.zx_vga** %6, align 8
  %30 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %31, i32* %3, align 4
  br label %60

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @VGA_DEVICE_DISCONNECTED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.zx_vga*, %struct.zx_vga** %6, align 8
  %39 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VGA_AUTO_DETECT_SEL, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i32, i32* @VGA_DETECT_SEL_NO_DEVICE, align 4
  %44 = call i32 @zx_writel(i64 %42, i32 %43)
  %45 = load %struct.zx_vga*, %struct.zx_vga** %6, align 8
  %46 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %47, i32* %3, align 4
  br label %60

48:                                               ; preds = %32
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @VGA_TRANS_DONE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.zx_vga*, %struct.zx_vga** %6, align 8
  %55 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %54, i32 0, i32 1
  %56 = call i32 @complete(i32* %55)
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %3, align 4
  br label %60

58:                                               ; preds = %48
  %59 = load i32, i32* @IRQ_NONE, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %53, %37, %28
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @zx_readl(i64) #1

declare dso_local i32 @zx_writel_mask(i64, i32, i32) #1

declare dso_local i32 @zx_writel(i64, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
