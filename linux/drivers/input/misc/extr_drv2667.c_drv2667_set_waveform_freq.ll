; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_drv2667.c_drv2667_set_waveform_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_drv2667.c_drv2667_set_waveform_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drv2667_data = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"ERROR: Frequency calculated to %i\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DRV2667_PAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to read the page number: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DRV2667_PAGE_0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to set the page: %d\0A\00", align 1
@DRV2667_RAM_FREQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to set the frequency: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drv2667_data*)* @drv2667_set_waveform_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv2667_set_waveform_freq(%struct.drv2667_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drv2667_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drv2667_data* %0, %struct.drv2667_data** %3, align 8
  %7 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %8 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = mul nsw i32 %9, 1000
  %11 = sdiv i32 %10, 78125
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %16 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %118

23:                                               ; preds = %1
  %24 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %25 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DRV2667_PAGE, align 4
  %28 = call i32 @regmap_read(i32 %26, i32 %27, i32* %4)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %33 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %118

40:                                               ; preds = %23
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @DRV2667_PAGE_0, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %46 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %44, %40
  %51 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %52 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @DRV2667_PAGE, align 4
  %55 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %56 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @regmap_write(i32 %53, i32 %54, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %50
  %62 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %63 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %118

70:                                               ; preds = %50
  br label %71

71:                                               ; preds = %70, %44
  %72 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %73 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @DRV2667_RAM_FREQ, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @regmap_write(i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %71
  %81 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %82 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %80, %71
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @DRV2667_PAGE_0, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  %92 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %93 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %91, %87
  %98 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %99 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @DRV2667_PAGE, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @regmap_write(i32 %100, i32 %101, i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %97
  %107 = load %struct.drv2667_data*, %struct.drv2667_data** %3, align 8
  %108 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %107, i32 0, i32 2
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @dev_err(i32* %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %118

115:                                              ; preds = %97
  br label %116

116:                                              ; preds = %115, %91
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %116, %106, %61, %31, %14
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
