; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_handle_interleaved_ps2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_handle_interleaved_ps2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, i32*, %struct.alps_data* }
%struct.alps_data = type { {}*, i32 }

@PSMOUSE_GOOD_DATA = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"refusing packet %4ph (suspected interleaved ps/2)\0A\00", align 1
@PSMOUSE_BAD_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @alps_handle_interleaved_ps2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_handle_interleaved_ps2(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.alps_data*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %5 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %6 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %5, i32 0, i32 2
  %7 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  store %struct.alps_data* %7, %struct.alps_data** %4, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %10, 6
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @PSMOUSE_GOOD_DATA, align 4
  store i32 %13, i32* %2, align 4
  br label %114

14:                                               ; preds = %1
  %15 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %16 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 6
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %21 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %20, i32 0, i32 1
  %22 = load i64, i64* @jiffies, align 8
  %23 = call i64 @msecs_to_jiffies(i32 20)
  %24 = add nsw i64 %22, %23
  %25 = call i32 @mod_timer(i32* %21, i64 %24)
  %26 = load i32, i32* @PSMOUSE_GOOD_DATA, align 4
  store i32 %26, i32* %2, align 4
  br label %114

27:                                               ; preds = %14
  %28 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %29 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %28, i32 0, i32 1
  %30 = call i32 @del_timer(i32* %29)
  %31 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %32 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 6
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %93

38:                                               ; preds = %27
  %39 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %40 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %45 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %43, %48
  %50 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %51 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %49, %54
  %56 = and i32 %55, 128
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %38
  %59 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %60 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %61 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 6
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @alps_is_valid_first_byte(%struct.alps_data* %59, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %58, %38
  %68 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %69 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %70 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = call i32 @psmouse_dbg(%struct.psmouse* %68, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32* %72)
  %74 = load i32, i32* @PSMOUSE_BAD_DATA, align 4
  store i32 %74, i32* %2, align 4
  br label %114

75:                                               ; preds = %58
  %76 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %77 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %76, i32 0, i32 0
  %78 = bitcast {}** %77 to i32 (%struct.psmouse*)**
  %79 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %78, align 8
  %80 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %81 = call i32 %79(%struct.psmouse* %80)
  %82 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %83 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 6
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %88 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  store i32 %86, i32* %90, align 4
  %91 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %92 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  br label %112

93:                                               ; preds = %27
  %94 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %95 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %96 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = call i32 @alps_report_bare_ps2_packet(%struct.psmouse* %94, i32* %98, i32 0)
  %100 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %101 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 6
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 247
  %106 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %107 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 3
  store i32 %105, i32* %109, align 4
  %110 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %111 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %110, i32 0, i32 0
  store i32 4, i32* %111, align 8
  br label %112

112:                                              ; preds = %93, %75
  %113 = load i32, i32* @PSMOUSE_GOOD_DATA, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %67, %19, %12
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @alps_is_valid_first_byte(%struct.alps_data*, i32) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*, i32*) #1

declare dso_local i32 @alps_report_bare_ps2_packet(%struct.psmouse*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
