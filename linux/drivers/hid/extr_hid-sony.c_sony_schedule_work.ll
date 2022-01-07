; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_schedule_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_schedule_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sony_sc = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sony_sc*, i32)* @sony_schedule_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sony_schedule_work(%struct.sony_sc* %0, i32 %1) #0 {
  %3 = alloca %struct.sony_sc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.sony_sc* %0, %struct.sony_sc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %40 [
    i32 128, label %7
    i32 129, label %30
  ]

7:                                                ; preds = %2
  %8 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %9 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %8, i32 0, i32 2
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %13 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %7
  %17 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %18 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %23 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %22, i32 0, i32 3
  %24 = call i32 @schedule_work(i32* %23)
  br label %25

25:                                               ; preds = %21, %16, %7
  %26 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %27 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %26, i32 0, i32 2
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  br label %40

30:                                               ; preds = %2
  %31 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %32 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %37 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %36, i32 0, i32 0
  %38 = call i32 @schedule_work(i32* %37)
  br label %39

39:                                               ; preds = %35, %30
  br label %40

40:                                               ; preds = %2, %39, %25
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
