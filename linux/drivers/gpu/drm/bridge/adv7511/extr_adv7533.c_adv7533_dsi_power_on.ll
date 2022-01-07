; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7533.c_adv7533_dsi_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7533.c_adv7533_dsi_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7511 = type { i32, i64, %struct.mipi_dsi_device* }
%struct.mipi_dsi_device = type { i32 }

@adv7533_cec_fixed_registers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adv7533_dsi_power_on(%struct.adv7511* %0) #0 {
  %2 = alloca %struct.adv7511*, align 8
  %3 = alloca %struct.mipi_dsi_device*, align 8
  store %struct.adv7511* %0, %struct.adv7511** %2, align 8
  %4 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %5 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %4, i32 0, i32 2
  %6 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  store %struct.mipi_dsi_device* %6, %struct.mipi_dsi_device** %3, align 8
  %7 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %8 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %13 = call i32 @adv7511_dsi_config_timing_gen(%struct.adv7511* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %16 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %19 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 4
  %22 = call i32 @regmap_write(i32 %17, i32 28, i32 %21)
  %23 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %24 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %14
  %28 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %29 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @regmap_write(i32 %30, i32 39, i32 203)
  %32 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %33 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @regmap_write(i32 %34, i32 39, i32 139)
  %36 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %37 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @regmap_write(i32 %38, i32 39, i32 203)
  br label %45

40:                                               ; preds = %14
  %41 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %42 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @regmap_write(i32 %43, i32 39, i32 11)
  br label %45

45:                                               ; preds = %40, %27
  %46 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %47 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @regmap_write(i32 %48, i32 3, i32 137)
  %50 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %51 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @regmap_write(i32 %52, i32 85, i32 0)
  %54 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %55 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @adv7533_cec_fixed_registers, align 4
  %58 = load i32, i32* @adv7533_cec_fixed_registers, align 4
  %59 = call i32 @ARRAY_SIZE(i32 %58)
  %60 = call i32 @regmap_register_patch(i32 %56, i32 %57, i32 %59)
  ret void
}

declare dso_local i32 @adv7511_dsi_config_timing_gen(%struct.adv7511*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_register_patch(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
