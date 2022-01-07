; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vga.c_zx_vga_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vga.c_zx_vga_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx_vga = type { i64 }
%struct.i2c_msg = type { i32, i64 }

@DDC_ADDR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VGA_DEVICE_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zx_vga*, %struct.i2c_msg*)* @zx_vga_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_vga_i2c_write(%struct.zx_vga* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zx_vga*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  store %struct.zx_vga* %0, %struct.zx_vga** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %6 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DDC_ADDR, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %29

19:                                               ; preds = %10
  %20 = load %struct.zx_vga*, %struct.zx_vga** %4, align 8
  %21 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VGA_DEVICE_ADDR, align 8
  %24 = add nsw i64 %22, %23
  %25 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @zx_writel(i64 %24, i64 %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %19, %16
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @zx_writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
