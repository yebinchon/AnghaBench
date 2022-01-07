; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dp.c_nvkm_dp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dp.c_nvkm_dp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_outp = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.nvkm_gpio* }
%struct.nvkm_gpio = type { i32 }
%struct.nvkm_dp = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64 }

@DCB_CONNECTOR_eDP = common dso_local global i64 0, align 8
@DCB_GPIO_PANEL_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_outp*)* @nvkm_dp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_dp_init(%struct.nvkm_outp* %0) #0 {
  %2 = alloca %struct.nvkm_outp*, align 8
  %3 = alloca %struct.nvkm_gpio*, align 8
  %4 = alloca %struct.nvkm_dp*, align 8
  %5 = alloca i32, align 4
  store %struct.nvkm_outp* %0, %struct.nvkm_outp** %2, align 8
  %6 = load %struct.nvkm_outp*, %struct.nvkm_outp** %2, align 8
  %7 = getelementptr inbounds %struct.nvkm_outp, %struct.nvkm_outp* %6, i32 0, i32 0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %13, align 8
  store %struct.nvkm_gpio* %14, %struct.nvkm_gpio** %3, align 8
  %15 = load %struct.nvkm_outp*, %struct.nvkm_outp** %2, align 8
  %16 = call %struct.nvkm_dp* @nvkm_dp(%struct.nvkm_outp* %15)
  store %struct.nvkm_dp* %16, %struct.nvkm_dp** %4, align 8
  %17 = load %struct.nvkm_dp*, %struct.nvkm_dp** %4, align 8
  %18 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = call i32 @nvkm_notify_put(i32* %21)
  %23 = load %struct.nvkm_dp*, %struct.nvkm_dp** %4, align 8
  %24 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DCB_CONNECTOR_eDP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %1
  %33 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %3, align 8
  %34 = load i32, i32* @DCB_GPIO_PANEL_POWER, align 4
  %35 = call i32 @nvkm_gpio_get(%struct.nvkm_gpio* %33, i32 0, i32 %34, i32 255)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %3, align 8
  %40 = load i32, i32* @DCB_GPIO_PANEL_POWER, align 4
  %41 = call i32 @nvkm_gpio_set(%struct.nvkm_gpio* %39, i32 0, i32 %40, i32 255, i32 1)
  br label %42

42:                                               ; preds = %38, %32
  %43 = call i32 @msleep(i32 300)
  %44 = load %struct.nvkm_dp*, %struct.nvkm_dp** %4, align 8
  %45 = call i32 @nvkm_dp_enable(%struct.nvkm_dp* %44, i32 1)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %3, align 8
  %52 = load i32, i32* @DCB_GPIO_PANEL_POWER, align 4
  %53 = call i32 @nvkm_gpio_set(%struct.nvkm_gpio* %51, i32 0, i32 %52, i32 255, i32 0)
  br label %54

54:                                               ; preds = %50, %47, %42
  br label %58

55:                                               ; preds = %1
  %56 = load %struct.nvkm_dp*, %struct.nvkm_dp** %4, align 8
  %57 = call i32 @nvkm_dp_enable(%struct.nvkm_dp* %56, i32 1)
  br label %58

58:                                               ; preds = %55, %54
  %59 = load %struct.nvkm_dp*, %struct.nvkm_dp** %4, align 8
  %60 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %59, i32 0, i32 0
  %61 = call i32 @nvkm_notify_get(i32* %60)
  ret void
}

declare dso_local %struct.nvkm_dp* @nvkm_dp(%struct.nvkm_outp*) #1

declare dso_local i32 @nvkm_notify_put(i32*) #1

declare dso_local i32 @nvkm_gpio_get(%struct.nvkm_gpio*, i32, i32, i32) #1

declare dso_local i32 @nvkm_gpio_set(%struct.nvkm_gpio*, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @nvkm_dp_enable(%struct.nvkm_dp*, i32) #1

declare dso_local i32 @nvkm_notify_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
