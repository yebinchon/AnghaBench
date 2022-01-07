; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_trackpoint.c_trackpoint_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_trackpoint.c_trackpoint_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, %struct.trackpoint_data* }
%struct.trackpoint_data = type { i64 }

@TP_VARIANT_IBM = common dso_local global i64 0, align 8
@TP_TOGGLE_TWOHAND = common dso_local global i32 0, align 4
@TP_MASK_TWOHAND = common dso_local global i32 0, align 4
@TP_DEF_TWOHAND = common dso_local global i32 0, align 4
@TP_TOGGLE_SOURCE_TAG = common dso_local global i32 0, align 4
@TP_MASK_SOURCE_TAG = common dso_local global i32 0, align 4
@TP_DEF_SOURCE_TAG = common dso_local global i32 0, align 4
@TP_TOGGLE_MB = common dso_local global i32 0, align 4
@TP_MASK_MB = common dso_local global i32 0, align 4
@TP_DEF_MB = common dso_local global i32 0, align 4
@sensitivity = common dso_local global i32 0, align 4
@inertia = common dso_local global i32 0, align 4
@speed = common dso_local global i32 0, align 4
@reach = common dso_local global i32 0, align 4
@draghys = common dso_local global i32 0, align 4
@mindrag = common dso_local global i32 0, align 4
@thresh = common dso_local global i32 0, align 4
@upthresh = common dso_local global i32 0, align 4
@ztime = common dso_local global i32 0, align 4
@jenks = common dso_local global i32 0, align 4
@drift_time = common dso_local global i32 0, align 4
@press_to_select = common dso_local global i32 0, align 4
@skipback = common dso_local global i32 0, align 4
@ext_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32)* @trackpoint_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trackpoint_sync(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.trackpoint_data*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %7 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 1
  %8 = load %struct.trackpoint_data*, %struct.trackpoint_data** %7, align 8
  store %struct.trackpoint_data* %8, %struct.trackpoint_data** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %2
  %12 = load %struct.trackpoint_data*, %struct.trackpoint_data** %5, align 8
  %13 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TP_VARIANT_IBM, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %11
  %18 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %19 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %18, i32 0, i32 0
  %20 = load i32, i32* @TP_TOGGLE_TWOHAND, align 4
  %21 = load i32, i32* @TP_MASK_TWOHAND, align 4
  %22 = load i32, i32* @TP_DEF_TWOHAND, align 4
  %23 = call i32 @trackpoint_update_bit(i32* %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %25 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %24, i32 0, i32 0
  %26 = load i32, i32* @TP_TOGGLE_SOURCE_TAG, align 4
  %27 = load i32, i32* @TP_MASK_SOURCE_TAG, align 4
  %28 = load i32, i32* @TP_DEF_SOURCE_TAG, align 4
  %29 = call i32 @trackpoint_update_bit(i32* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %31 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %30, i32 0, i32 0
  %32 = load i32, i32* @TP_TOGGLE_MB, align 4
  %33 = load i32, i32* @TP_MASK_MB, align 4
  %34 = load i32, i32* @TP_DEF_MB, align 4
  %35 = call i32 @trackpoint_update_bit(i32* %31, i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %17, %11, %2
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %39 = load %struct.trackpoint_data*, %struct.trackpoint_data** %5, align 8
  %40 = load i32, i32* @sensitivity, align 4
  %41 = call i32 @TRACKPOINT_UPDATE(i32 %37, %struct.psmouse* %38, %struct.trackpoint_data* %39, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %44 = load %struct.trackpoint_data*, %struct.trackpoint_data** %5, align 8
  %45 = load i32, i32* @inertia, align 4
  %46 = call i32 @TRACKPOINT_UPDATE(i32 %42, %struct.psmouse* %43, %struct.trackpoint_data* %44, i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %49 = load %struct.trackpoint_data*, %struct.trackpoint_data** %5, align 8
  %50 = load i32, i32* @speed, align 4
  %51 = call i32 @TRACKPOINT_UPDATE(i32 %47, %struct.psmouse* %48, %struct.trackpoint_data* %49, i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %54 = load %struct.trackpoint_data*, %struct.trackpoint_data** %5, align 8
  %55 = load i32, i32* @reach, align 4
  %56 = call i32 @TRACKPOINT_UPDATE(i32 %52, %struct.psmouse* %53, %struct.trackpoint_data* %54, i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %59 = load %struct.trackpoint_data*, %struct.trackpoint_data** %5, align 8
  %60 = load i32, i32* @draghys, align 4
  %61 = call i32 @TRACKPOINT_UPDATE(i32 %57, %struct.psmouse* %58, %struct.trackpoint_data* %59, i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %64 = load %struct.trackpoint_data*, %struct.trackpoint_data** %5, align 8
  %65 = load i32, i32* @mindrag, align 4
  %66 = call i32 @TRACKPOINT_UPDATE(i32 %62, %struct.psmouse* %63, %struct.trackpoint_data* %64, i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %69 = load %struct.trackpoint_data*, %struct.trackpoint_data** %5, align 8
  %70 = load i32, i32* @thresh, align 4
  %71 = call i32 @TRACKPOINT_UPDATE(i32 %67, %struct.psmouse* %68, %struct.trackpoint_data* %69, i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %74 = load %struct.trackpoint_data*, %struct.trackpoint_data** %5, align 8
  %75 = load i32, i32* @upthresh, align 4
  %76 = call i32 @TRACKPOINT_UPDATE(i32 %72, %struct.psmouse* %73, %struct.trackpoint_data* %74, i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %79 = load %struct.trackpoint_data*, %struct.trackpoint_data** %5, align 8
  %80 = load i32, i32* @ztime, align 4
  %81 = call i32 @TRACKPOINT_UPDATE(i32 %77, %struct.psmouse* %78, %struct.trackpoint_data* %79, i32 %80)
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %84 = load %struct.trackpoint_data*, %struct.trackpoint_data** %5, align 8
  %85 = load i32, i32* @jenks, align 4
  %86 = call i32 @TRACKPOINT_UPDATE(i32 %82, %struct.psmouse* %83, %struct.trackpoint_data* %84, i32 %85)
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %89 = load %struct.trackpoint_data*, %struct.trackpoint_data** %5, align 8
  %90 = load i32, i32* @drift_time, align 4
  %91 = call i32 @TRACKPOINT_UPDATE(i32 %87, %struct.psmouse* %88, %struct.trackpoint_data* %89, i32 %90)
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %94 = load %struct.trackpoint_data*, %struct.trackpoint_data** %5, align 8
  %95 = load i32, i32* @press_to_select, align 4
  %96 = call i32 @TRACKPOINT_UPDATE(i32 %92, %struct.psmouse* %93, %struct.trackpoint_data* %94, i32 %95)
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %99 = load %struct.trackpoint_data*, %struct.trackpoint_data** %5, align 8
  %100 = load i32, i32* @skipback, align 4
  %101 = call i32 @TRACKPOINT_UPDATE(i32 %97, %struct.psmouse* %98, %struct.trackpoint_data* %99, i32 %100)
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %104 = load %struct.trackpoint_data*, %struct.trackpoint_data** %5, align 8
  %105 = load i32, i32* @ext_dev, align 4
  %106 = call i32 @TRACKPOINT_UPDATE(i32 %102, %struct.psmouse* %103, %struct.trackpoint_data* %104, i32 %105)
  ret i32 0
}

declare dso_local i32 @trackpoint_update_bit(i32*, i32, i32, i32) #1

declare dso_local i32 @TRACKPOINT_UPDATE(i32, %struct.psmouse*, %struct.trackpoint_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
