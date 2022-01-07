; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_bma150.c_bma150_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_bma150.c_bma150_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bma150_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.bma150_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BMA150_MODE_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bma150_data*, %struct.bma150_cfg*)* @bma150_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bma150_initialize(%struct.bma150_data* %0, %struct.bma150_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bma150_data*, align 8
  %5 = alloca %struct.bma150_cfg*, align 8
  %6 = alloca i32, align 4
  store %struct.bma150_data* %0, %struct.bma150_data** %4, align 8
  store %struct.bma150_cfg* %1, %struct.bma150_cfg** %5, align 8
  %7 = load %struct.bma150_data*, %struct.bma150_data** %4, align 8
  %8 = call i32 @bma150_soft_reset(%struct.bma150_data* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %99

13:                                               ; preds = %2
  %14 = load %struct.bma150_data*, %struct.bma150_data** %4, align 8
  %15 = load %struct.bma150_cfg*, %struct.bma150_cfg** %5, align 8
  %16 = getelementptr inbounds %struct.bma150_cfg, %struct.bma150_cfg* %15, i32 0, i32 12
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bma150_set_bandwidth(%struct.bma150_data* %14, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %99

23:                                               ; preds = %13
  %24 = load %struct.bma150_data*, %struct.bma150_data** %4, align 8
  %25 = load %struct.bma150_cfg*, %struct.bma150_cfg** %5, align 8
  %26 = getelementptr inbounds %struct.bma150_cfg, %struct.bma150_cfg* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bma150_set_range(%struct.bma150_data* %24, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %99

33:                                               ; preds = %23
  %34 = load %struct.bma150_data*, %struct.bma150_data** %4, align 8
  %35 = getelementptr inbounds %struct.bma150_data, %struct.bma150_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %95

40:                                               ; preds = %33
  %41 = load %struct.bma150_data*, %struct.bma150_data** %4, align 8
  %42 = load %struct.bma150_cfg*, %struct.bma150_cfg** %5, align 8
  %43 = getelementptr inbounds %struct.bma150_cfg, %struct.bma150_cfg* %42, i32 0, i32 10
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bma150_cfg*, %struct.bma150_cfg** %5, align 8
  %46 = getelementptr inbounds %struct.bma150_cfg, %struct.bma150_cfg* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bma150_cfg*, %struct.bma150_cfg** %5, align 8
  %49 = getelementptr inbounds %struct.bma150_cfg, %struct.bma150_cfg* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bma150_set_any_motion_interrupt(%struct.bma150_data* %41, i32 %44, i32 %47, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %40
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %99

56:                                               ; preds = %40
  %57 = load %struct.bma150_data*, %struct.bma150_data** %4, align 8
  %58 = load %struct.bma150_cfg*, %struct.bma150_cfg** %5, align 8
  %59 = getelementptr inbounds %struct.bma150_cfg, %struct.bma150_cfg* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.bma150_cfg*, %struct.bma150_cfg** %5, align 8
  %62 = getelementptr inbounds %struct.bma150_cfg, %struct.bma150_cfg* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.bma150_cfg*, %struct.bma150_cfg** %5, align 8
  %65 = getelementptr inbounds %struct.bma150_cfg, %struct.bma150_cfg* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.bma150_cfg*, %struct.bma150_cfg** %5, align 8
  %68 = getelementptr inbounds %struct.bma150_cfg, %struct.bma150_cfg* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @bma150_set_high_g_interrupt(%struct.bma150_data* %57, i32 %60, i32 %63, i32 %66, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %56
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %99

75:                                               ; preds = %56
  %76 = load %struct.bma150_data*, %struct.bma150_data** %4, align 8
  %77 = load %struct.bma150_cfg*, %struct.bma150_cfg** %5, align 8
  %78 = getelementptr inbounds %struct.bma150_cfg, %struct.bma150_cfg* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.bma150_cfg*, %struct.bma150_cfg** %5, align 8
  %81 = getelementptr inbounds %struct.bma150_cfg, %struct.bma150_cfg* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.bma150_cfg*, %struct.bma150_cfg** %5, align 8
  %84 = getelementptr inbounds %struct.bma150_cfg, %struct.bma150_cfg* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bma150_cfg*, %struct.bma150_cfg** %5, align 8
  %87 = getelementptr inbounds %struct.bma150_cfg, %struct.bma150_cfg* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @bma150_set_low_g_interrupt(%struct.bma150_data* %76, i32 %79, i32 %82, i32 %85, i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %75
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %3, align 4
  br label %99

94:                                               ; preds = %75
  br label %95

95:                                               ; preds = %94, %33
  %96 = load %struct.bma150_data*, %struct.bma150_data** %4, align 8
  %97 = load i32, i32* @BMA150_MODE_SLEEP, align 4
  %98 = call i32 @bma150_set_mode(%struct.bma150_data* %96, i32 %97)
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %95, %92, %73, %54, %31, %21, %11
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @bma150_soft_reset(%struct.bma150_data*) #1

declare dso_local i32 @bma150_set_bandwidth(%struct.bma150_data*, i32) #1

declare dso_local i32 @bma150_set_range(%struct.bma150_data*, i32) #1

declare dso_local i32 @bma150_set_any_motion_interrupt(%struct.bma150_data*, i32, i32, i32) #1

declare dso_local i32 @bma150_set_high_g_interrupt(%struct.bma150_data*, i32, i32, i32, i32) #1

declare dso_local i32 @bma150_set_low_g_interrupt(%struct.bma150_data*, i32, i32, i32, i32) #1

declare dso_local i32 @bma150_set_mode(%struct.bma150_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
