; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7511 = type { i32, i32, i64 }
%struct.drm_connector = type { i32 }

@ADV7511_REG_STATUS = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@ADV7511_STATUS_HPD = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@ADV7511_REG_POWER2 = common dso_local global i32 0, align 4
@ADV7511_REG_POWER2_HPD_SRC_MASK = common dso_local global i32 0, align 4
@ADV7511_REG_POWER2_HPD_SRC_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv7511*, %struct.drm_connector*)* @adv7511_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7511_detect(%struct.adv7511* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adv7511*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adv7511* %0, %struct.adv7511** %4, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %5, align 8
  %10 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %11 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ADV7511_REG_STATUS, align 4
  %14 = call i32 @regmap_read(i32 %12, i32 %13, i32* %7)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %18, i32* %3, align 4
  br label %73

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ADV7511_STATUS_HPD, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @connector_status_connected, align 4
  store i32 %25, i32* %6, align 4
  br label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %30 = call i32 @adv7511_hpd(%struct.adv7511* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @connector_status_connected, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  %38 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %39 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %44 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @regcache_mark_dirty(i32 %45)
  %47 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %48 = call i32 @adv7511_power_on(%struct.adv7511* %47)
  %49 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %50 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %51 = call i32 @adv7511_get_modes(%struct.adv7511* %49, %struct.drm_connector* %50)
  %52 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %53 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @connector_status_connected, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %57, %42
  br label %68

60:                                               ; preds = %37, %34, %28
  %61 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %62 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ADV7511_REG_POWER2, align 4
  %65 = load i32, i32* @ADV7511_REG_POWER2_HPD_SRC_MASK, align 4
  %66 = load i32, i32* @ADV7511_REG_POWER2_HPD_SRC_BOTH, align 4
  %67 = call i32 @regmap_update_bits(i32 %63, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %60, %59
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %71 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %17
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @adv7511_hpd(%struct.adv7511*) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

declare dso_local i32 @adv7511_power_on(%struct.adv7511*) #1

declare dso_local i32 @adv7511_get_modes(%struct.adv7511*, %struct.drm_connector*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
