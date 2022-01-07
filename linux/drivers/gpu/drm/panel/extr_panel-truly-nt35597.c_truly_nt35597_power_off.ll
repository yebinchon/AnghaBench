; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-truly-nt35597.c_truly_nt35597_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-truly-nt35597.c_truly_nt35597_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.truly_nt35597 = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@regulator_disable_loads = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"regulator_set_load failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"regulator_bulk_disable failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.truly_nt35597*)* @truly_nt35597_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truly_nt35597_power_off(%struct.truly_nt35597* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.truly_nt35597*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.truly_nt35597* %0, %struct.truly_nt35597** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %7 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @gpiod_set_value(i32 %8, i32 1)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %42, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %13 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %14)
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %10
  %18 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %19 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** @regulator_disable_loads, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @regulator_set_load(i32 %25, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %17
  %35 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %36 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @DRM_DEV_ERROR(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %64

41:                                               ; preds = %17
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %10

45:                                               ; preds = %10
  %46 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %47 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %48)
  %50 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %51 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = call i32 @regulator_bulk_disable(i32 %49, %struct.TYPE_3__* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %45
  %57 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %58 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @DRM_DEV_ERROR(i32 %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %56, %45
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %34
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @regulator_set_load(i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
