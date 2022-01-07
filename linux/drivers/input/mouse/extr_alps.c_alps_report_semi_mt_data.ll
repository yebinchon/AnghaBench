; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_report_semi_mt_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_report_semi_mt_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.input_dev*, %struct.alps_data* }
%struct.input_dev = type { i32 }
%struct.alps_data = type { i32, %struct.alps_fields }
%struct.alps_fields = type { i64, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*, i32)* @alps_report_semi_mt_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alps_report_semi_mt_data(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.alps_data*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.alps_fields*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 1
  %10 = load %struct.alps_data*, %struct.alps_data** %9, align 8
  store %struct.alps_data* %10, %struct.alps_data** %5, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %6, align 8
  %14 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %15 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %14, i32 0, i32 1
  store %struct.alps_fields* %15, %struct.alps_fields** %7, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %45

18:                                               ; preds = %2
  %19 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %20 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %24 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %23, i32 0, i32 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %22, i32* %27, align 4
  %28 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %29 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %33 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %32, i32 0, i32 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %31, i32* %36, align 4
  %37 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %38 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  store i32 %42, i32* %4, align 4
  %43 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %44 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  br label %45

45:                                               ; preds = %18, %2
  %46 = load i32, i32* %4, align 4
  %47 = icmp sge i32 %46, 1
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %50 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %51 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %50, i32 0, i32 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %57 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %56, i32 0, i32 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @alps_set_slot(%struct.input_dev* %49, i32 0, i32 %55, i32 %61)
  br label %63

63:                                               ; preds = %48, %45
  %64 = load i32, i32* %4, align 4
  %65 = icmp sge i32 %64, 2
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %68 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %69 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %68, i32 0, i32 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %75 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %74, i32 0, i32 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @alps_set_slot(%struct.input_dev* %67, i32 1, i32 %73, i32 %79)
  br label %81

81:                                               ; preds = %66, %63
  %82 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %83 = call i32 @input_mt_sync_frame(%struct.input_dev* %82)
  %84 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @input_mt_report_finger_count(%struct.input_dev* %84, i32 %85)
  %87 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %88 = load i32, i32* @BTN_LEFT, align 4
  %89 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %90 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @input_report_key(%struct.input_dev* %87, i32 %88, i32 %91)
  %93 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %94 = load i32, i32* @BTN_RIGHT, align 4
  %95 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %96 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @input_report_key(%struct.input_dev* %93, i32 %94, i32 %97)
  %99 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %100 = load i32, i32* @BTN_MIDDLE, align 4
  %101 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %102 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @input_report_key(%struct.input_dev* %99, i32 %100, i32 %103)
  %105 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %106 = load i32, i32* @ABS_PRESSURE, align 4
  %107 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %108 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @input_report_abs(%struct.input_dev* %105, i32 %106, i64 %109)
  %111 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %112 = call i32 @input_sync(%struct.input_dev* %111)
  ret void
}

declare dso_local i32 @alps_set_slot(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_mt_sync_frame(%struct.input_dev*) #1

declare dso_local i32 @input_mt_report_finger_count(%struct.input_dev*, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i64) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
