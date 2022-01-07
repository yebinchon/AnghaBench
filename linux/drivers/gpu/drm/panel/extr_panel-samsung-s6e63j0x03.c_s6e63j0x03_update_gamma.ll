; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e63j0x03.c_s6e63j0x03_update_gamma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e63j0x03.c_s6e63j0x03_update_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6e63j0x03 = type { %struct.backlight_device* }
%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@gamma_tbl = common dso_local global i32* null, align 8
@GAMMA_CMD_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s6e63j0x03*, i32)* @s6e63j0x03_update_gamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6e63j0x03_update_gamma(%struct.s6e63j0x03* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s6e63j0x03*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.backlight_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s6e63j0x03* %0, %struct.s6e63j0x03** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %4, align 8
  %10 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %9, i32 0, i32 0
  %11 = load %struct.backlight_device*, %struct.backlight_device** %10, align 8
  store %struct.backlight_device* %11, %struct.backlight_device** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @s6e63j0x03_get_brightness_index(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %4, align 8
  %15 = call i32 @s6e63j0x03_apply_mtp_key(%struct.s6e63j0x03* %14, i32 1)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %45

20:                                               ; preds = %2
  %21 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %4, align 8
  %22 = load i32*, i32** @gamma_tbl, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GAMMA_CMD_CNT, align 4
  %28 = call i32 @s6e63j0x03_dcs_write_seq(%struct.s6e63j0x03* %21, i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %45

33:                                               ; preds = %20
  %34 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %4, align 8
  %35 = call i32 @s6e63j0x03_apply_mtp_key(%struct.s6e63j0x03* %34, i32 0)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %45

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %43 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %38, %31, %18
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @s6e63j0x03_get_brightness_index(i32) #1

declare dso_local i32 @s6e63j0x03_apply_mtp_key(%struct.s6e63j0x03*, i32) #1

declare dso_local i32 @s6e63j0x03_dcs_write_seq(%struct.s6e63j0x03*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
