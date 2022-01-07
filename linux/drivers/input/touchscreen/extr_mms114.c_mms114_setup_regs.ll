; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mms114.c_mms114_setup_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mms114.c_mms114_setup_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mms114_data = type { i64, i32, i32, %struct.touchscreen_properties }
%struct.touchscreen_properties = type { i32, i32 }

@TYPE_MMS152 = common dso_local global i64 0, align 8
@MMS114_XY_RESOLUTION_H = common dso_local global i32 0, align 4
@MMS114_X_RESOLUTION = common dso_local global i32 0, align 4
@MMS114_Y_RESOLUTION = common dso_local global i32 0, align 4
@MMS114_CONTACT_THRESHOLD = common dso_local global i32 0, align 4
@MMS114_MOVING_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mms114_data*)* @mms114_setup_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mms114_setup_regs(%struct.mms114_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mms114_data*, align 8
  %4 = alloca %struct.touchscreen_properties*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mms114_data* %0, %struct.mms114_data** %3, align 8
  %7 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %8 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %7, i32 0, i32 3
  store %struct.touchscreen_properties* %8, %struct.touchscreen_properties** %4, align 8
  %9 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %10 = call i32 @mms114_get_version(%struct.mms114_data* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %112

15:                                               ; preds = %1
  %16 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %17 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TYPE_MMS152, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %112

22:                                               ; preds = %15
  %23 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %24 = call i32 @mms114_set_active(%struct.mms114_data* %23, i32 1)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %112

29:                                               ; preds = %22
  %30 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %4, align 8
  %31 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 15
  store i32 %34, i32* %5, align 4
  %35 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %4, align 8
  %36 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 8
  %39 = and i32 %38, 15
  %40 = shl i32 %39, 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %44 = load i32, i32* @MMS114_XY_RESOLUTION_H, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @mms114_write_reg(%struct.mms114_data* %43, i32 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %29
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %112

51:                                               ; preds = %29
  %52 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %4, align 8
  %53 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 255
  store i32 %55, i32* %5, align 4
  %56 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %57 = load i32, i32* @MMS114_X_RESOLUTION, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @mms114_write_reg(%struct.mms114_data* %56, i32 %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %112

64:                                               ; preds = %51
  %65 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %4, align 8
  %66 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 255
  store i32 %68, i32* %5, align 4
  %69 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %70 = load i32, i32* @MMS114_Y_RESOLUTION, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @mms114_write_reg(%struct.mms114_data* %69, i32 %70, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %64
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %112

77:                                               ; preds = %64
  %78 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %79 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %77
  %83 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %84 = load i32, i32* @MMS114_CONTACT_THRESHOLD, align 4
  %85 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %86 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @mms114_write_reg(%struct.mms114_data* %83, i32 %84, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %112

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %77
  %95 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %96 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %94
  %100 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %101 = load i32, i32* @MMS114_MOVING_THRESHOLD, align 4
  %102 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %103 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @mms114_write_reg(%struct.mms114_data* %100, i32 %101, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %99
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %112

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110, %94
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %108, %91, %75, %62, %49, %27, %21, %13
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @mms114_get_version(%struct.mms114_data*) #1

declare dso_local i32 @mms114_set_active(%struct.mms114_data*, i32) #1

declare dso_local i32 @mms114_write_reg(%struct.mms114_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
