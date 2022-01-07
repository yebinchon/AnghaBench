; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_set_link_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_set_link_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7511 = type { i32, i32, i32, i64, i32 }
%struct.adv7511_link_config = type { i32, i32, i64, i64, i64, i32, i32, i32, i32, i64 }

@adv7511_set_link_config.input_styles = internal constant [4 x i32] [i32 0, i32 2, i32 1, i32 3], align 16
@HDMI_COLORSPACE_YUV422 = common dso_local global i64 0, align 8
@ADV7511_INPUT_CLOCK_DDR = common dso_local global i64 0, align 8
@ADV7511_INPUT_CLOCK_2X = common dso_local global i64 0, align 8
@ADV7511_REG_I2C_FREQ_ID_CFG = common dso_local global i32 0, align 4
@ADV7511_REG_VIDEO_INPUT_CFG1 = common dso_local global i32 0, align 4
@ADV7511_REG_VIDEO_INPUT_CFG2 = common dso_local global i32 0, align 4
@ADV7511_REG_TIMING_GEN_SEQ = common dso_local global i32 0, align 4
@HDMI_COLORSPACE_RGB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adv7511*, %struct.adv7511_link_config*)* @adv7511_set_link_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adv7511_set_link_config(%struct.adv7511* %0, %struct.adv7511_link_config* %1) #0 {
  %3 = alloca %struct.adv7511*, align 8
  %4 = alloca %struct.adv7511_link_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adv7511* %0, %struct.adv7511** %3, align 8
  store %struct.adv7511_link_config* %1, %struct.adv7511_link_config** %4, align 8
  %8 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %4, align 8
  %9 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1200
  %12 = sdiv i32 %11, 400
  store i32 %12, i32* %5, align 4
  %13 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %4, align 8
  %14 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %4, align 8
  %20 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 10
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 2
  br label %25

25:                                               ; preds = %18, %17
  %26 = phi i32 [ 3, %17 ], [ %24, %18 ]
  store i32 %26, i32* %6, align 4
  %27 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %4, align 8
  %28 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HDMI_COLORSPACE_YUV422, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %4, align 8
  %34 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ADV7511_INPUT_CLOCK_DDR, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 5, i32 0
  store i32 %39, i32* %7, align 4
  br label %75

40:                                               ; preds = %25
  %41 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %4, align 8
  %42 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ADV7511_INPUT_CLOCK_DDR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %4, align 8
  %48 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %47, i32 0, i32 9
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 8, i32 7
  store i32 %52, i32* %7, align 4
  br label %74

53:                                               ; preds = %40
  %54 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %4, align 8
  %55 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ADV7511_INPUT_CLOCK_2X, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %4, align 8
  %61 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %60, i32 0, i32 9
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 4, i32 3
  store i32 %65, i32* %7, align 4
  br label %73

66:                                               ; preds = %53
  %67 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %4, align 8
  %68 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %67, i32 0, i32 9
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 2, i32 1
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %66, %59
  br label %74

74:                                               ; preds = %73, %46
  br label %75

75:                                               ; preds = %74, %32
  %76 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %77 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @ADV7511_REG_I2C_FREQ_ID_CFG, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @regmap_update_bits(i32 %78, i32 %79, i32 15, i32 %80)
  %82 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %83 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ADV7511_REG_VIDEO_INPUT_CFG1, align 4
  %86 = load i32, i32* %6, align 4
  %87 = shl i32 %86, 4
  %88 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %4, align 8
  %89 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* @adv7511_set_link_config.input_styles, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 2
  %94 = or i32 %87, %93
  %95 = call i32 @regmap_update_bits(i32 %84, i32 %85, i32 126, i32 %94)
  %96 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %97 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @ADV7511_REG_VIDEO_INPUT_CFG2, align 4
  %100 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %4, align 8
  %101 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = shl i32 %102, 3
  %104 = call i32 @regmap_write(i32 %98, i32 %99, i32 %103)
  %105 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %106 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @ADV7511_REG_TIMING_GEN_SEQ, align 4
  %109 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %4, align 8
  %110 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 2
  %113 = call i32 @regmap_write(i32 %107, i32 %108, i32 %112)
  %114 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %115 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = shl i32 %117, 5
  %119 = call i32 @regmap_write(i32 %116, i32 186, i32 %118)
  %120 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %4, align 8
  %121 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %120, i32 0, i32 9
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %124 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %123, i32 0, i32 3
  store i64 %122, i64* %124, align 8
  %125 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %4, align 8
  %126 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %129 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %4, align 8
  %131 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %134 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %4, align 8
  %136 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @HDMI_COLORSPACE_RGB, align 8
  %139 = icmp eq i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %142 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
