; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_drv2667.c_drv2667_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_drv2667.c_drv2667_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drv2667_data = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@DRV2667_PAGE_1 = common dso_local global i32 0, align 4
@drv2667_init_regs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to write init registers: %d\0A\00", align 1
@DRV2667_PAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to set page: %d\0A\00", align 1
@drv2667_page1_init = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to write page registers: %d\0A\00", align 1
@DRV2667_PAGE_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drv2667_data*)* @drv2667_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv2667_init(%struct.drv2667_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drv2667_data*, align 8
  %4 = alloca i32, align 4
  store %struct.drv2667_data* %0, %struct.drv2667_data** %3, align 8
  %5 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %6 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %5, i32 0, i32 0
  store i32 195, i32* %6, align 8
  %7 = load i32, i32* @DRV2667_PAGE_1, align 4
  %8 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %9 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 8
  %10 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %11 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @drv2667_init_regs, align 4
  %14 = load i32, i32* @drv2667_init_regs, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @regmap_register_patch(i32 %12, i32 %13, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %21 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %86

27:                                               ; preds = %1
  %28 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %29 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DRV2667_PAGE, align 4
  %32 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %33 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @regmap_write(i32 %30, i32 %31, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %27
  %39 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %40 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %84

45:                                               ; preds = %27
  %46 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %47 = call i32 @drv2667_set_waveform_freq(%struct.drv2667_data* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %77

51:                                               ; preds = %45
  %52 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %53 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @drv2667_page1_init, align 4
  %56 = load i32, i32* @drv2667_page1_init, align 4
  %57 = call i32 @ARRAY_SIZE(i32 %56)
  %58 = call i32 @regmap_register_patch(i32 %54, i32 %55, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %51
  %62 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %63 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %86

69:                                               ; preds = %51
  %70 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %71 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DRV2667_PAGE, align 4
  %74 = load i32, i32* @DRV2667_PAGE_0, align 4
  %75 = call i32 @regmap_write(i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %86

77:                                               ; preds = %50
  %78 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %79 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @DRV2667_PAGE, align 4
  %82 = load i32, i32* @DRV2667_PAGE_0, align 4
  %83 = call i32 @regmap_write(i32 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %77, %38
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %69, %61, %19
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @regmap_register_patch(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @drv2667_set_waveform_freq(%struct.drv2667_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
