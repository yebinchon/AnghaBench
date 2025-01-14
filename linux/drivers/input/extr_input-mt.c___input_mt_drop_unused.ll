; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input-mt.c___input_mt_drop_unused.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input-mt.c___input_mt_drop_unused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.input_mt = type { i32, i32* }

@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_TRACKING_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, %struct.input_mt*)* @__input_mt_drop_unused to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__input_mt_drop_unused(%struct.input_dev* %0, %struct.input_mt* %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.input_mt*, align 8
  %5 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store %struct.input_mt* %1, %struct.input_mt** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %31, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.input_mt*, %struct.input_mt** %4, align 8
  %9 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %6
  %13 = load %struct.input_mt*, %struct.input_mt** %4, align 8
  %14 = load %struct.input_mt*, %struct.input_mt** %4, align 8
  %15 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call i32 @input_mt_is_used(%struct.input_mt* %13, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %12
  %23 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @input_mt_slot(%struct.input_dev* %23, i32 %24)
  %26 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %27 = load i32, i32* @EV_ABS, align 4
  %28 = load i32, i32* @ABS_MT_TRACKING_ID, align 4
  %29 = call i32 @input_event(%struct.input_dev* %26, i32 %27, i32 %28, i32 -1)
  br label %30

30:                                               ; preds = %22, %12
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %6

34:                                               ; preds = %6
  ret void
}

declare dso_local i32 @input_mt_is_used(%struct.input_mt*, i32*) #1

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
