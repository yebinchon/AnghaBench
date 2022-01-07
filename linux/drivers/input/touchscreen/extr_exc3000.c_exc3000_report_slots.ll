; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_exc3000.c_exc3000_report_slots.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_exc3000.c_exc3000_report_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.touchscreen_properties = type { i32 }

@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@EXC3000_LEN_POINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, %struct.touchscreen_properties*, i32*, i32)* @exc3000_report_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exc3000_report_slots(%struct.input_dev* %0, %struct.touchscreen_properties* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.touchscreen_properties*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store %struct.touchscreen_properties* %1, %struct.touchscreen_properties** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %9

9:                                                ; preds = %39, %4
  %10 = load i32, i32* %8, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %8, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %9
  %14 = load i32*, i32** %7, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BIT(i32 0)
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %13
  %21 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @input_mt_slot(%struct.input_dev* %21, i32 %24)
  %26 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %27 = load i32, i32* @MT_TOOL_FINGER, align 4
  %28 = call i32 @input_mt_report_slot_state(%struct.input_dev* %26, i32 %27, i32 1)
  %29 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %30 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = call i32 @get_unaligned_le16(i32* %32)
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = call i32 @get_unaligned_le16(i32* %35)
  %37 = call i32 @touchscreen_report_pos(%struct.input_dev* %29, %struct.touchscreen_properties* %30, i32 %33, i32 %36, i32 1)
  br label %38

38:                                               ; preds = %20, %13
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* @EXC3000_LEN_POINT, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %7, align 8
  br label %9

44:                                               ; preds = %9
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @touchscreen_report_pos(%struct.input_dev*, %struct.touchscreen_properties*, i32, i32, i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
