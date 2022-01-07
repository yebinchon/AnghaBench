; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_clear_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_clear_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mip4_ts = type { i32, i32, i32* }

@MIP4_MAX_FINGERS = common dso_local global i32 0, align 4
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mip4_ts*)* @mip4_clear_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mip4_clear_input(%struct.mip4_ts* %0) #0 {
  %2 = alloca %struct.mip4_ts*, align 8
  %3 = alloca i32, align 4
  store %struct.mip4_ts* %0, %struct.mip4_ts** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MIP4_MAX_FINGERS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = load %struct.mip4_ts*, %struct.mip4_ts** %2, align 8
  %10 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @input_mt_slot(i32 %11, i32 %12)
  %14 = load %struct.mip4_ts*, %struct.mip4_ts** %2, align 8
  %15 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MT_TOOL_FINGER, align 4
  %18 = call i32 @input_mt_report_slot_state(i32 %16, i32 %17, i32 0)
  br label %19

19:                                               ; preds = %8
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4

22:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %41, %22
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.mip4_ts*, %struct.mip4_ts** %2, align 8
  %26 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load %struct.mip4_ts*, %struct.mip4_ts** %2, align 8
  %31 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mip4_ts*, %struct.mip4_ts** %2, align 8
  %34 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @input_report_key(i32 %32, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %23

44:                                               ; preds = %23
  %45 = load %struct.mip4_ts*, %struct.mip4_ts** %2, align 8
  %46 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @input_sync(i32 %47)
  ret void
}

declare dso_local i32 @input_mt_slot(i32, i32) #1

declare dso_local i32 @input_mt_report_slot_state(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
