; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_mgr_set_lcd_divisor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_mgr_set_lcd_divisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }

@FEAT_CORE_CLK_DIV = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_LCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*, i32, i32, i32)* @dispc_mgr_set_lcd_divisor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_mgr_set_lcd_divisor(%struct.dispc_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dispc_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 1
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @DISPC_DIVISORo(i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @FLD_VAL(i32 %20, i32 23, i32 16)
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @FLD_VAL(i32 %22, i32 7, i32 0)
  %24 = or i32 %21, %23
  %25 = call i32 @dispc_write_reg(%struct.dispc_device* %17, i32 %19, i32 %24)
  %26 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %27 = load i32, i32* @FEAT_CORE_CLK_DIV, align 4
  %28 = call i32 @dispc_has_feature(%struct.dispc_device* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @OMAP_DSS_CHANNEL_LCD, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %36 = call i32 @dispc_fclk_rate(%struct.dispc_device* %35)
  %37 = load i32, i32* %7, align 4
  %38 = sdiv i32 %36, %37
  %39 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %40 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %34, %30, %4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dispc_write_reg(%struct.dispc_device*, i32, i32) #1

declare dso_local i32 @DISPC_DIVISORo(i32) #1

declare dso_local i32 @FLD_VAL(i32, i32, i32) #1

declare dso_local i32 @dispc_has_feature(%struct.dispc_device*, i32) #1

declare dso_local i32 @dispc_fclk_rate(%struct.dispc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
