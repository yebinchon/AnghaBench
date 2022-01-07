; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_versatile.c_pl111_versatile_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_versatile.c_pl111_versatile_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"enable Versatile CLCD connectors\0A\00", align 1
@SYS_CLCD_MODE_888 = common dso_local global i32 0, align 4
@SYS_CLCD_MODE_565_R_LSB = common dso_local global i32 0, align 4
@SYS_CLCD_MODE_565_B_LSB = common dso_local global i32 0, align 4
@SYS_CLCD_MODE_5551 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"unhandled format on Versatile 0x%08x\0A\00", align 1
@versatile_syscon_map = common dso_local global i32 0, align 4
@SYS_CLCD = common dso_local global i32 0, align 4
@SYS_CLCD_MODE_MASK = common dso_local global i32 0, align 4
@SYS_CLCD_CONNECTOR_MASK = common dso_local global i32 0, align 4
@SYS_CLCD_NLCDIOON = common dso_local global i32 0, align 4
@SYS_CLCD_PWR3V5SWITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32)* @pl111_versatile_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl111_versatile_enable(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dev_info(i32 %8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %27 [
    i32 136, label %11
    i32 130, label %11
    i32 134, label %11
    i32 128, label %11
    i32 133, label %15
    i32 132, label %19
    i32 137, label %23
    i32 131, label %23
    i32 135, label %23
    i32 129, label %23
  ]

11:                                               ; preds = %2, %2, %2, %2
  %12 = load i32, i32* @SYS_CLCD_MODE_888, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load i32, i32* @SYS_CLCD_MODE_565_R_LSB, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load i32, i32* @SYS_CLCD_MODE_565_B_LSB, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %33

23:                                               ; preds = %2, %2, %2, %2
  %24 = load i32, i32* @SYS_CLCD_MODE_5551, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %27, %23, %19, %15, %11
  %34 = load i32, i32* @versatile_syscon_map, align 4
  %35 = load i32, i32* @SYS_CLCD, align 4
  %36 = load i32, i32* @SYS_CLCD_MODE_MASK, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* @versatile_syscon_map, align 4
  %40 = load i32, i32* @SYS_CLCD, align 4
  %41 = load i32, i32* @SYS_CLCD_CONNECTOR_MASK, align 4
  %42 = load i32, i32* @SYS_CLCD_NLCDIOON, align 4
  %43 = load i32, i32* @SYS_CLCD_PWR3V5SWITCH, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @regmap_update_bits(i32 %39, i32 %40, i32 %41, i32 %44)
  ret void
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
