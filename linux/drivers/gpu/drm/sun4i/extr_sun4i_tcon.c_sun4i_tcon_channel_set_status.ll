; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon_channel_set_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon_channel_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_tcon = type { %struct.clk*, i32, %struct.TYPE_2__*, %struct.clk* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.clk = type { i32 }

@SUN4I_TCON0_CTL_REG = common dso_local global i32 0, align 4
@SUN4I_TCON0_CTL_TCON_ENABLE = common dso_local global i32 0, align 4
@SUN4I_TCON1_CTL_REG = common dso_local global i32 0, align 4
@SUN4I_TCON1_CTL_TCON_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unknown channel... doing nothing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun4i_tcon*, i32, i32)* @sun4i_tcon_channel_set_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_tcon_channel_set_status(%struct.sun4i_tcon* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sun4i_tcon*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk*, align 8
  store %struct.sun4i_tcon* %0, %struct.sun4i_tcon** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %61 [
    i32 0, label %9
    i32 1, label %35
  ]

9:                                                ; preds = %3
  %10 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %11 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %20 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SUN4I_TCON0_CTL_REG, align 4
  %23 = load i32, i32* @SUN4I_TCON0_CTL_TCON_ENABLE, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %9
  %27 = load i32, i32* @SUN4I_TCON0_CTL_TCON_ENABLE, align 4
  br label %29

28:                                               ; preds = %9
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 %30)
  %32 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %33 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %32, i32 0, i32 3
  %34 = load %struct.clk*, %struct.clk** %33, align 8
  store %struct.clk* %34, %struct.clk** %7, align 8
  br label %63

35:                                               ; preds = %3
  %36 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %37 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @WARN_ON(i32 %43)
  %45 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %46 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SUN4I_TCON1_CTL_REG, align 4
  %49 = load i32, i32* @SUN4I_TCON1_CTL_TCON_ENABLE, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %35
  %53 = load i32, i32* @SUN4I_TCON1_CTL_TCON_ENABLE, align 4
  br label %55

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  %57 = call i32 @regmap_update_bits(i32 %47, i32 %48, i32 %49, i32 %56)
  %58 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %59 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %58, i32 0, i32 0
  %60 = load %struct.clk*, %struct.clk** %59, align 8
  store %struct.clk* %60, %struct.clk** %7, align 8
  br label %63

61:                                               ; preds = %3
  %62 = call i32 @DRM_WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %76

63:                                               ; preds = %55, %29
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %struct.clk*, %struct.clk** %7, align 8
  %68 = call i32 @clk_prepare_enable(%struct.clk* %67)
  %69 = load %struct.clk*, %struct.clk** %7, align 8
  %70 = call i32 @clk_rate_exclusive_get(%struct.clk* %69)
  br label %76

71:                                               ; preds = %63
  %72 = load %struct.clk*, %struct.clk** %7, align 8
  %73 = call i32 @clk_rate_exclusive_put(%struct.clk* %72)
  %74 = load %struct.clk*, %struct.clk** %7, align 8
  %75 = call i32 @clk_disable_unprepare(%struct.clk* %74)
  br label %76

76:                                               ; preds = %61, %71, %66
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @DRM_WARN(i8*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @clk_rate_exclusive_get(%struct.clk*) #1

declare dso_local i32 @clk_rate_exclusive_put(%struct.clk*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
