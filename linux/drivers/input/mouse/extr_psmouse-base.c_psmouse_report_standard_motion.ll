; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_report_standard_motion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_report_standard_motion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }

@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psmouse_report_standard_motion(%struct.input_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 4
  %19 = and i32 %18, 256
  %20 = sub nsw i32 %14, %19
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %11
  %23 = phi i32 [ %20, %11 ], [ 0, %21 ]
  store i32 %23, i32* %5, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 3
  %36 = and i32 %35, 256
  %37 = sub nsw i32 %31, %36
  br label %39

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38, %28
  %40 = phi i32 [ %37, %28 ], [ 0, %38 ]
  store i32 %40, i32* %6, align 4
  %41 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %42 = load i32, i32* @REL_X, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @input_report_rel(%struct.input_dev* %41, i32 %42, i32 %43)
  %45 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %46 = load i32, i32* @REL_Y, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 0, %47
  %49 = call i32 @input_report_rel(%struct.input_dev* %45, i32 %46, i32 %48)
  ret void
}

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
