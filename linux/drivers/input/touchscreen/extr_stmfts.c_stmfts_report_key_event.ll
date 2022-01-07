; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmfts.c_stmfts_report_key_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmfts.c_stmfts_report_key_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmfts_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@KEY_BACK = common dso_local global i32 0, align 4
@KEY_MENU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unknown key event: %#02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmfts_data*, i32*)* @stmfts_report_key_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmfts_report_key_event(%struct.stmfts_data* %0, i32* %1) #0 {
  %3 = alloca %struct.stmfts_data*, align 8
  %4 = alloca i32*, align 8
  store %struct.stmfts_data* %0, %struct.stmfts_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 2
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %31 [
    i32 0, label %8
    i32 129, label %19
    i32 128, label %25
  ]

8:                                                ; preds = %2
  %9 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %10 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @KEY_BACK, align 4
  %13 = call i32 @input_report_key(i32 %11, i32 %12, i32 0)
  %14 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %15 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @KEY_MENU, align 4
  %18 = call i32 @input_report_key(i32 %16, i32 %17, i32 0)
  br label %40

19:                                               ; preds = %2
  %20 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %21 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @KEY_BACK, align 4
  %24 = call i32 @input_report_key(i32 %22, i32 %23, i32 1)
  br label %40

25:                                               ; preds = %2
  %26 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %27 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @KEY_MENU, align 4
  %30 = call i32 @input_report_key(i32 %28, i32 %29, i32 1)
  br label %40

31:                                               ; preds = %2
  %32 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %33 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_warn(i32* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %31, %25, %19, %8
  %41 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %42 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @input_sync(i32 %43)
  ret void
}

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
