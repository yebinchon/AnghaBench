; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c__omap_dispc_initial_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c__omap_dispc_initial_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@FEAT_CORE_CLK_DIV = common dso_local global i32 0, align 4
@DISPC_DIVISOR = common dso_local global i32 0, align 4
@DISPC_CONFIG = common dso_local global i32 0, align 4
@FEAT_FUNCGATED = common dso_local global i32 0, align 4
@OMAP_DSS_LOAD_FRAME_ONLY = common dso_local global i32 0, align 4
@DISPC_MSTANDBY_CTRL = common dso_local global i32 0, align 4
@FEAT_MFLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*)* @_omap_dispc_initial_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_omap_dispc_initial_config(%struct.dispc_device* %0) #0 {
  %2 = alloca %struct.dispc_device*, align 8
  %3 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %2, align 8
  %4 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %5 = load i32, i32* @FEAT_CORE_CLK_DIV, align 4
  %6 = call i64 @dispc_has_feature(%struct.dispc_device* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %10 = load i32, i32* @DISPC_DIVISOR, align 4
  %11 = call i32 @dispc_read_reg(%struct.dispc_device* %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @FLD_MOD(i32 %12, i32 1, i32 0, i32 0)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @FLD_MOD(i32 %14, i32 1, i32 23, i32 16)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %17 = load i32, i32* @DISPC_DIVISOR, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @dispc_write_reg(%struct.dispc_device* %16, i32 %17, i32 %18)
  %20 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %21 = call i32 @dispc_fclk_rate(%struct.dispc_device* %20)
  %22 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %23 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %8, %1
  %25 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %26 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %33 = load i32, i32* @DISPC_CONFIG, align 4
  %34 = call i32 @REG_FLD_MOD(%struct.dispc_device* %32, i32 %33, i32 1, i32 3, i32 3)
  br label %35

35:                                               ; preds = %31, %24
  %36 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %37 = load i32, i32* @FEAT_FUNCGATED, align 4
  %38 = call i64 @dispc_has_feature(%struct.dispc_device* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %42 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40, %35
  %48 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %49 = load i32, i32* @DISPC_CONFIG, align 4
  %50 = call i32 @REG_FLD_MOD(%struct.dispc_device* %48, i32 %49, i32 1, i32 9, i32 9)
  br label %51

51:                                               ; preds = %47, %40
  %52 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %53 = call i32 @dispc_setup_color_conv_coef(%struct.dispc_device* %52)
  %54 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %55 = load i32, i32* @OMAP_DSS_LOAD_FRAME_ONLY, align 4
  %56 = call i32 @dispc_set_loadmode(%struct.dispc_device* %54, i32 %55)
  %57 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %58 = call i32 @dispc_init_fifos(%struct.dispc_device* %57)
  %59 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %60 = call i32 @dispc_configure_burst_sizes(%struct.dispc_device* %59)
  %61 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %62 = call i32 @dispc_ovl_enable_zorder_planes(%struct.dispc_device* %61)
  %63 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %64 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %51
  %70 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %71 = load i32, i32* @DISPC_MSTANDBY_CTRL, align 4
  %72 = call i32 @REG_FLD_MOD(%struct.dispc_device* %70, i32 %71, i32 1, i32 0, i32 0)
  br label %73

73:                                               ; preds = %69, %51
  %74 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %75 = load i32, i32* @FEAT_MFLAG, align 4
  %76 = call i64 @dispc_has_feature(%struct.dispc_device* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %80 = call i32 @dispc_init_mflag(%struct.dispc_device* %79)
  br label %81

81:                                               ; preds = %78, %73
  ret void
}

declare dso_local i64 @dispc_has_feature(%struct.dispc_device*, i32) #1

declare dso_local i32 @dispc_read_reg(%struct.dispc_device*, i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dispc_write_reg(%struct.dispc_device*, i32, i32) #1

declare dso_local i32 @dispc_fclk_rate(%struct.dispc_device*) #1

declare dso_local i32 @REG_FLD_MOD(%struct.dispc_device*, i32, i32, i32, i32) #1

declare dso_local i32 @dispc_setup_color_conv_coef(%struct.dispc_device*) #1

declare dso_local i32 @dispc_set_loadmode(%struct.dispc_device*, i32) #1

declare dso_local i32 @dispc_init_fifos(%struct.dispc_device*) #1

declare dso_local i32 @dispc_configure_burst_sizes(%struct.dispc_device*) #1

declare dso_local i32 @dispc_ovl_enable_zorder_planes(%struct.dispc_device*) #1

declare dso_local i32 @dispc_init_mflag(%struct.dispc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
