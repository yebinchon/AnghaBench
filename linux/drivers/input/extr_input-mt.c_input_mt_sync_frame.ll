; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input-mt.c_input_mt_sync_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input-mt.c_input_mt_sync_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.input_mt* }
%struct.input_mt = type { i32, i32 }

@INPUT_MT_DROP_UNUSED = common dso_local global i32 0, align 4
@INPUT_MT_POINTER = common dso_local global i32 0, align 4
@INPUT_MT_SEMI_MT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_mt_sync_frame(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.input_mt*, align 8
  %4 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %6 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %5, i32 0, i32 0
  %7 = load %struct.input_mt*, %struct.input_mt** %6, align 8
  store %struct.input_mt* %7, %struct.input_mt** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.input_mt*, %struct.input_mt** %3, align 8
  %9 = icmp ne %struct.input_mt* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %45

11:                                               ; preds = %1
  %12 = load %struct.input_mt*, %struct.input_mt** %3, align 8
  %13 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @INPUT_MT_DROP_UNUSED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %20 = load %struct.input_mt*, %struct.input_mt** %3, align 8
  %21 = call i32 @__input_mt_drop_unused(%struct.input_dev* %19, %struct.input_mt* %20)
  br label %22

22:                                               ; preds = %18, %11
  %23 = load %struct.input_mt*, %struct.input_mt** %3, align 8
  %24 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @INPUT_MT_POINTER, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.input_mt*, %struct.input_mt** %3, align 8
  %31 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @INPUT_MT_SEMI_MT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %29, %22
  %38 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @input_mt_report_pointer_emulation(%struct.input_dev* %38, i32 %39)
  %41 = load %struct.input_mt*, %struct.input_mt** %3, align 8
  %42 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %37, %10
  ret void
}

declare dso_local i32 @__input_mt_drop_unused(%struct.input_dev*, %struct.input_mt*) #1

declare dso_local i32 @input_mt_report_pointer_emulation(%struct.input_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
