; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ektf2127.c_ektf2127_report_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ektf2127.c_ektf2127_report_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ektf2127_ts = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.input_mt_pos = type { i32, i32 }

@EKTF2127_MAX_TOUCHES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Too many touches %d > %d\0A\00", align 1
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ektf2127_ts*, i32*)* @ektf2127_report_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ektf2127_report_event(%struct.ektf2127_ts* %0, i32* %1) #0 {
  %3 = alloca %struct.ektf2127_ts*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ektf2127_ts* %0, %struct.ektf2127_ts** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @EKTF2127_MAX_TOUCHES, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca %struct.input_mt_pos, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @EKTF2127_MAX_TOUCHES, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 7
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @EKTF2127_MAX_TOUCHES, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.ektf2127_ts*, %struct.ektf2127_ts** %3, align 8
  %26 = getelementptr inbounds %struct.ektf2127_ts, %struct.ektf2127_ts* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @EKTF2127_MAX_TOUCHES, align 4
  %31 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* @EKTF2127_MAX_TOUCHES, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %24, %2
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @ektf2127_parse_coordinates(i32* %34, i32 %35, %struct.input_mt_pos* %13)
  %37 = load %struct.ektf2127_ts*, %struct.ektf2127_ts** %3, align 8
  %38 = getelementptr inbounds %struct.ektf2127_ts, %struct.ektf2127_ts* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @input_mt_assign_slots(i32 %39, i32* %16, %struct.input_mt_pos* %13, i32 %40, i32 0)
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %76, %33
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %42
  %47 = load %struct.ektf2127_ts*, %struct.ektf2127_ts** %3, align 8
  %48 = getelementptr inbounds %struct.ektf2127_ts, %struct.ektf2127_ts* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %16, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @input_mt_slot(i32 %49, i32 %53)
  %55 = load %struct.ektf2127_ts*, %struct.ektf2127_ts** %3, align 8
  %56 = getelementptr inbounds %struct.ektf2127_ts, %struct.ektf2127_ts* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @MT_TOOL_FINGER, align 4
  %59 = call i32 @input_mt_report_slot_state(i32 %57, i32 %58, i32 1)
  %60 = load %struct.ektf2127_ts*, %struct.ektf2127_ts** %3, align 8
  %61 = getelementptr inbounds %struct.ektf2127_ts, %struct.ektf2127_ts* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ektf2127_ts*, %struct.ektf2127_ts** %3, align 8
  %64 = getelementptr inbounds %struct.ektf2127_ts, %struct.ektf2127_ts* %63, i32 0, i32 1
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %13, i64 %66
  %68 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %13, i64 %71
  %73 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @touchscreen_report_pos(i32 %62, i32* %64, i32 %69, i32 %74, i32 1)
  br label %76

76:                                               ; preds = %46
  %77 = load i32, i32* %9, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %42

79:                                               ; preds = %42
  %80 = load %struct.ektf2127_ts*, %struct.ektf2127_ts** %3, align 8
  %81 = getelementptr inbounds %struct.ektf2127_ts, %struct.ektf2127_ts* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @input_mt_sync_frame(i32 %82)
  %84 = load %struct.ektf2127_ts*, %struct.ektf2127_ts** %3, align 8
  %85 = getelementptr inbounds %struct.ektf2127_ts, %struct.ektf2127_ts* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @input_sync(i32 %86)
  %88 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %88)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #2

declare dso_local i32 @ektf2127_parse_coordinates(i32*, i32, %struct.input_mt_pos*) #2

declare dso_local i32 @input_mt_assign_slots(i32, i32*, %struct.input_mt_pos*, i32, i32) #2

declare dso_local i32 @input_mt_slot(i32, i32) #2

declare dso_local i32 @input_mt_report_slot_state(i32, i32, i32) #2

declare dso_local i32 @touchscreen_report_pos(i32, i32*, i32, i32, i32) #2

declare dso_local i32 @input_mt_sync_frame(i32) #2

declare dso_local i32 @input_sync(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
