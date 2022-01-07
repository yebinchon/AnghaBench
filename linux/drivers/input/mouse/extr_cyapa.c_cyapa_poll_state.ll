; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_poll_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_poll_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i64 }

@CYAPA_STATE_BL_BUSY = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cyapa_poll_state(%struct.cyapa* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cyapa*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = udiv i32 %8, 100
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %24, %2
  %11 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %12 = call i32 @cyapa_get_state(%struct.cyapa* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %17 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CYAPA_STATE_BL_BUSY, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %45

22:                                               ; preds = %15, %10
  %23 = call i32 @msleep(i32 100)
  br label %24

24:                                               ; preds = %22
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %7, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %10, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33, %28
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  br label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  br label %43

43:                                               ; preds = %41, %38
  %44 = phi i32 [ %40, %38 ], [ %42, %41 ]
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %21
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @cyapa_get_state(%struct.cyapa*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
