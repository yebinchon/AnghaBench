; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vga.c_zx_vga_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vga.c_zx_vga_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.zx_vga = type { %struct.zx_vga_i2c* }
%struct.zx_vga_i2c = type { i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @zx_vga_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_vga_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zx_vga*, align 8
  %8 = alloca %struct.zx_vga_i2c*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %12 = call %struct.zx_vga* @i2c_get_adapdata(%struct.i2c_adapter* %11)
  store %struct.zx_vga* %12, %struct.zx_vga** %7, align 8
  %13 = load %struct.zx_vga*, %struct.zx_vga** %7, align 8
  %14 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %13, i32 0, i32 0
  %15 = load %struct.zx_vga_i2c*, %struct.zx_vga_i2c** %14, align 8
  store %struct.zx_vga_i2c* %15, %struct.zx_vga_i2c** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.zx_vga_i2c*, %struct.zx_vga_i2c** %8, align 8
  %17 = getelementptr inbounds %struct.zx_vga_i2c, %struct.zx_vga_i2c* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %52, %3
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %19
  %24 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i64 %26
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @I2C_M_RD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %23
  %34 = load %struct.zx_vga*, %struct.zx_vga** %7, align 8
  %35 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i64 %37
  %39 = call i32 @zx_vga_i2c_read(%struct.zx_vga* %34, %struct.i2c_msg* %38)
  store i32 %39, i32* %9, align 4
  br label %47

40:                                               ; preds = %23
  %41 = load %struct.zx_vga*, %struct.zx_vga** %7, align 8
  %42 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i64 %44
  %46 = call i32 @zx_vga_i2c_write(%struct.zx_vga* %41, %struct.i2c_msg* %45)
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %40, %33
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %55

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %19

55:                                               ; preds = %50, %19
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %58, %55
  %61 = load %struct.zx_vga_i2c*, %struct.zx_vga_i2c** %8, align 8
  %62 = getelementptr inbounds %struct.zx_vga_i2c, %struct.zx_vga_i2c* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local %struct.zx_vga* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @zx_vga_i2c_read(%struct.zx_vga*, %struct.i2c_msg*) #1

declare dso_local i32 @zx_vga_i2c_write(%struct.zx_vga*, %struct.i2c_msg*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
