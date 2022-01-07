; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raydium-rm67191.c_rad_init_regulators.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raydium-rm67191.c_rad_init_regulators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_panel = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@rad_supply_names = common dso_local global i32* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rad_panel*)* @rad_init_regulators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rad_init_regulators(%struct.rad_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rad_panel*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.rad_panel* %0, %struct.rad_panel** %3, align 8
  %6 = load %struct.rad_panel*, %struct.rad_panel** %3, align 8
  %7 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load i32*, i32** @rad_supply_names, align 8
  %11 = call i32 @ARRAY_SIZE(i32* %10)
  %12 = load %struct.rad_panel*, %struct.rad_panel** %3, align 8
  %13 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load %struct.rad_panel*, %struct.rad_panel** %3, align 8
  %16 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.TYPE_5__* @devm_kcalloc(%struct.device* %14, i32 %17, i32 4, i32 %18)
  %20 = load %struct.rad_panel*, %struct.rad_panel** %3, align 8
  %21 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %20, i32 0, i32 1
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %21, align 8
  %22 = load %struct.rad_panel*, %struct.rad_panel** %3, align 8
  %23 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %61

29:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %49, %29
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.rad_panel*, %struct.rad_panel** %3, align 8
  %33 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load i32*, i32** @rad_supply_names, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rad_panel*, %struct.rad_panel** %3, align 8
  %43 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 %41, i32* %48, align 4
  br label %49

49:                                               ; preds = %36
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %30

52:                                               ; preds = %30
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load %struct.rad_panel*, %struct.rad_panel** %3, align 8
  %55 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.rad_panel*, %struct.rad_panel** %3, align 8
  %58 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = call i32 @devm_regulator_bulk_get(%struct.device* %53, i32 %56, %struct.TYPE_5__* %59)
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %52, %26
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.TYPE_5__* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
