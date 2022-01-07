; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmfts.c_stmfts_parse_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmfts.c_stmfts_parse_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmfts_data = type { i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@STMFTS_STACK_DEPTH = common dso_local global i32 0, align 4
@STMFTS_EVENT_SIZE = common dso_local global i32 0, align 4
@STMFTS_MASK_EVENT_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"error code: 0x%x%x%x%x%x%x\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"unknown event %#02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmfts_data*)* @stmfts_parse_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmfts_parse_events(%struct.stmfts_data* %0) #0 {
  %2 = alloca %struct.stmfts_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.stmfts_data* %0, %struct.stmfts_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %82, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @STMFTS_STACK_DEPTH, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %85

9:                                                ; preds = %5
  %10 = load %struct.stmfts_data*, %struct.stmfts_data** %2, align 8
  %11 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @STMFTS_EVENT_SIZE, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %26 [
    i32 140, label %21
    i32 129, label %21
    i32 128, label %21
    i32 130, label %25
    i32 139, label %25
  ]

21:                                               ; preds = %9, %9, %9
  %22 = load %struct.stmfts_data*, %struct.stmfts_data** %2, align 8
  %23 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %22, i32 0, i32 2
  %24 = call i32 @complete(i32* %23)
  br label %25

25:                                               ; preds = %9, %9, %21
  br label %85

26:                                               ; preds = %9
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @STMFTS_MASK_EVENT_ID, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %72 [
    i32 133, label %32
    i32 131, label %32
    i32 132, label %36
    i32 137, label %40
    i32 136, label %40
    i32 135, label %40
    i32 134, label %44
    i32 138, label %48
  ]

32:                                               ; preds = %26, %26
  %33 = load %struct.stmfts_data*, %struct.stmfts_data** %2, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @stmfts_report_contact_event(%struct.stmfts_data* %33, i32* %34)
  br label %81

36:                                               ; preds = %26
  %37 = load %struct.stmfts_data*, %struct.stmfts_data** %2, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @stmfts_report_contact_release(%struct.stmfts_data* %37, i32* %38)
  br label %81

40:                                               ; preds = %26, %26, %26
  %41 = load %struct.stmfts_data*, %struct.stmfts_data** %2, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @stmfts_report_hover_event(%struct.stmfts_data* %41, i32* %42)
  br label %81

44:                                               ; preds = %26
  %45 = load %struct.stmfts_data*, %struct.stmfts_data** %2, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @stmfts_report_key_event(%struct.stmfts_data* %45, i32* %46)
  br label %81

48:                                               ; preds = %26
  %49 = load %struct.stmfts_data*, %struct.stmfts_data** %2, align 8
  %50 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 6
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 5
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_warn(i32* %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58, i32 %61, i32 %64, i32 %67, i32 %70)
  br label %81

72:                                               ; preds = %26
  %73 = load %struct.stmfts_data*, %struct.stmfts_data** %2, align 8
  %74 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %72, %48, %44, %40, %36, %32
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %3, align 4
  br label %5

85:                                               ; preds = %25, %5
  ret void
}

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @stmfts_report_contact_event(%struct.stmfts_data*, i32*) #1

declare dso_local i32 @stmfts_report_contact_release(%struct.stmfts_data*, i32*) #1

declare dso_local i32 @stmfts_report_hover_event(%struct.stmfts_data*, i32*) #1

declare dso_local i32 @stmfts_report_key_event(%struct.stmfts_data*, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
