; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_process_simple_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_process_simple_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"overflow -- 0x%02x 0x%02x 0x%02x\0A\00", align 1
@tpdebug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"discarding\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"l=%d r=%d x=%d y=%d\0A\00", align 1
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @hgpk_process_simple_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hgpk_process_simple_packet(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %9 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 1
  %11 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  store %struct.input_dev* %11, %struct.input_dev** %3, align 8
  %12 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %13 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 1
  store i32 %19, i32* %5, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = ashr i32 %23, 1
  %25 = and i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %33, 4
  %35 = and i32 %34, 256
  %36 = sub nsw i32 %29, %35
  store i32 %36, i32* %7, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = shl i32 %40, 3
  %42 = and i32 %41, 256
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = sub nsw i32 %42, %46
  store i32 %47, i32* %8, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 192
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %1
  %55 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_dbg(%struct.psmouse* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %63, i32 %67)
  br label %69

69:                                               ; preds = %54, %1
  %70 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i64 @hgpk_discard_decay_hack(%struct.psmouse* %70, i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load i64, i64* @tpdebug, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %80 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_dbg(%struct.psmouse* %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %75
  br label %117

82:                                               ; preds = %69
  %83 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @hgpk_spewing_hack(%struct.psmouse* %83, i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = load i64, i64* @tpdebug, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %82
  %92 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_dbg(%struct.psmouse* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %91, %82
  %99 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %100 = load i32, i32* @BTN_LEFT, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @input_report_key(%struct.input_dev* %99, i32 %100, i32 %101)
  %103 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %104 = load i32, i32* @BTN_RIGHT, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @input_report_key(%struct.input_dev* %103, i32 %104, i32 %105)
  %107 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %108 = load i32, i32* @REL_X, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @input_report_rel(%struct.input_dev* %107, i32 %108, i32 %109)
  %111 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %112 = load i32, i32* @REL_Y, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @input_report_rel(%struct.input_dev* %111, i32 %112, i32 %113)
  %115 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %116 = call i32 @input_sync(%struct.input_dev* %115)
  br label %117

117:                                              ; preds = %98, %81
  ret void
}

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*, ...) #1

declare dso_local i64 @hgpk_discard_decay_hack(%struct.psmouse*, i32, i32) #1

declare dso_local i32 @hgpk_spewing_hack(%struct.psmouse*, i32, i32, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
