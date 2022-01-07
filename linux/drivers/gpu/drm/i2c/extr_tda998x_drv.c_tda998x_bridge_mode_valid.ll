; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_bridge_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_bridge_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.drm_display_mode = type { i32, i64, i64 }
%struct.tda998x_priv = type { i64 }

@TDA19988 = common dso_local global i64 0, align 8
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@MODE_BAD_HVALUE = common dso_local global i32 0, align 4
@MODE_BAD_VVALUE = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_bridge*, %struct.drm_display_mode*)* @tda998x_bridge_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda998x_bridge_mode_valid(%struct.drm_bridge* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_bridge*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.tda998x_priv*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %7 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %8 = call %struct.tda998x_priv* @bridge_to_tda998x_priv(%struct.drm_bridge* %7)
  store %struct.tda998x_priv* %8, %struct.tda998x_priv** %6, align 8
  %9 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %10 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.tda998x_priv*, %struct.tda998x_priv** %6, align 8
  %13 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TDA19988, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 165000, i32 150000
  %19 = icmp sgt i32 %11, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %21, i32* %3, align 4
  br label %40

22:                                               ; preds = %2
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @BIT(i32 13)
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @MODE_BAD_HVALUE, align 4
  store i32 %29, i32* %3, align 4
  br label %40

30:                                               ; preds = %22
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @BIT(i32 11)
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @MODE_BAD_VVALUE, align 4
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @MODE_OK, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %36, %28, %20
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.tda998x_priv* @bridge_to_tda998x_priv(%struct.drm_bridge*) #1

declare dso_local i64 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
