; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/power/extr_power_helpers.c_dmcu_load_iram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/power/extr_power_helpers.c_dmcu_load_iram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmcu = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.dmcu*, i32, i8*, i32)*, i32 (%struct.dmcu*)* }
%struct.TYPE_3__ = type { i32 }
%struct.dmcu_iram_parameters = type { i32 }
%struct.iram_table_v_2_2 = type { i32 }
%struct.iram_table_v_2 = type { i32 }

@IRAM_SIZE = common dso_local global i32 0, align 4
@IRAM_RESERVE_AREA_START_V2_2 = common dso_local global i32 0, align 4
@IRAM_RESERVE_AREA_START_V2 = common dso_local global i32 0, align 4
@IRAM_RESERVE_AREA_END_V2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmcu_load_iram(%struct.dmcu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmcu_iram_parameters, align 4
  %5 = alloca %struct.dmcu*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.dmcu_iram_parameters, %struct.dmcu_iram_parameters* %4, i32 0, i32 0
  store i32 %1, i32* %10, align 4
  store %struct.dmcu* %0, %struct.dmcu** %5, align 8
  %11 = load i32, i32* @IRAM_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.dmcu*, %struct.dmcu** %5, align 8
  %16 = icmp eq %struct.dmcu* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %107

18:                                               ; preds = %2
  %19 = load %struct.dmcu*, %struct.dmcu** %5, align 8
  %20 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32 (%struct.dmcu*)*, i32 (%struct.dmcu*)** %22, align 8
  %24 = load %struct.dmcu*, %struct.dmcu** %5, align 8
  %25 = call i32 %23(%struct.dmcu* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %107

28:                                               ; preds = %18
  %29 = bitcast i8* %14 to i8**
  %30 = trunc i64 %12 to i32
  %31 = call i32 @memset(i8** %29, i32 0, i32 %30)
  %32 = load %struct.dmcu*, %struct.dmcu** %5, align 8
  %33 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 35
  br i1 %36, label %37, label %50

37:                                               ; preds = %28
  %38 = bitcast i8* %14 to %struct.iram_table_v_2_2*
  %39 = getelementptr inbounds %struct.dmcu_iram_parameters, %struct.dmcu_iram_parameters* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @fill_iram_v_2_3(%struct.iram_table_v_2_2* %38, i32 %40)
  %42 = load %struct.dmcu*, %struct.dmcu** %5, align 8
  %43 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32 (%struct.dmcu*, i32, i8*, i32)*, i32 (%struct.dmcu*, i32, i8*, i32)** %45, align 8
  %47 = load %struct.dmcu*, %struct.dmcu** %5, align 8
  %48 = load i32, i32* @IRAM_RESERVE_AREA_START_V2_2, align 4
  %49 = call i32 %46(%struct.dmcu* %47, i32 0, i8* %14, i32 %48)
  store i32 %49, i32* %8, align 4
  br label %105

50:                                               ; preds = %28
  %51 = load %struct.dmcu*, %struct.dmcu** %5, align 8
  %52 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 34
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = bitcast i8* %14 to %struct.iram_table_v_2_2*
  %58 = getelementptr inbounds %struct.dmcu_iram_parameters, %struct.dmcu_iram_parameters* %4, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @fill_iram_v_2_2(%struct.iram_table_v_2_2* %57, i32 %59)
  %61 = load %struct.dmcu*, %struct.dmcu** %5, align 8
  %62 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32 (%struct.dmcu*, i32, i8*, i32)*, i32 (%struct.dmcu*, i32, i8*, i32)** %64, align 8
  %66 = load %struct.dmcu*, %struct.dmcu** %5, align 8
  %67 = load i32, i32* @IRAM_RESERVE_AREA_START_V2_2, align 4
  %68 = call i32 %65(%struct.dmcu* %66, i32 0, i8* %14, i32 %67)
  store i32 %68, i32* %8, align 4
  br label %104

69:                                               ; preds = %50
  %70 = bitcast i8* %14 to %struct.iram_table_v_2*
  %71 = getelementptr inbounds %struct.dmcu_iram_parameters, %struct.dmcu_iram_parameters* %4, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @fill_iram_v_2(%struct.iram_table_v_2* %70, i32 %72)
  %74 = load %struct.dmcu*, %struct.dmcu** %5, align 8
  %75 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32 (%struct.dmcu*, i32, i8*, i32)*, i32 (%struct.dmcu*, i32, i8*, i32)** %77, align 8
  %79 = load %struct.dmcu*, %struct.dmcu** %5, align 8
  %80 = load i32, i32* @IRAM_RESERVE_AREA_START_V2, align 4
  %81 = call i32 %78(%struct.dmcu* %79, i32 0, i8* %14, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %69
  %85 = load %struct.dmcu*, %struct.dmcu** %5, align 8
  %86 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32 (%struct.dmcu*, i32, i8*, i32)*, i32 (%struct.dmcu*, i32, i8*, i32)** %88, align 8
  %90 = load %struct.dmcu*, %struct.dmcu** %5, align 8
  %91 = load i32, i32* @IRAM_RESERVE_AREA_END_V2, align 4
  %92 = add nsw i32 %91, 1
  %93 = load i32, i32* @IRAM_RESERVE_AREA_END_V2, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %14, i64 %94
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i32, i32* @IRAM_RESERVE_AREA_END_V2, align 4
  %98 = sext i32 %97 to i64
  %99 = sub i64 %12, %98
  %100 = sub i64 %99, 1
  %101 = trunc i64 %100 to i32
  %102 = call i32 %89(%struct.dmcu* %90, i32 %92, i8* %96, i32 %101)
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %84, %69
  br label %104

104:                                              ; preds = %103, %56
  br label %105

105:                                              ; preds = %104, %37
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %107

107:                                              ; preds = %105, %27, %17
  %108 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8**, i32, i32) #2

declare dso_local i32 @fill_iram_v_2_3(%struct.iram_table_v_2_2*, i32) #2

declare dso_local i32 @fill_iram_v_2_2(%struct.iram_table_v_2_2*, i32) #2

declare dso_local i32 @fill_iram_v_2(%struct.iram_table_v_2*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
