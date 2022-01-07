; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_tc86c001.c_tc86c001_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_tc86c001.c_tc86c001_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*)* @tc86c001_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc86c001_set_mode(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 2, i32 0
  %18 = add nsw i32 %11, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @inw(i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %39 [
    i32 128, label %26
    i32 129, label %27
    i32 130, label %28
    i32 131, label %29
    i32 132, label %30
    i32 138, label %31
    i32 139, label %32
    i32 140, label %33
    i32 133, label %34
    i32 134, label %35
    i32 135, label %36
    i32 136, label %37
    i32 137, label %38
  ]

26:                                               ; preds = %2
  store i32 192, i32* %6, align 4
  br label %40

27:                                               ; preds = %2
  store i32 176, i32* %6, align 4
  br label %40

28:                                               ; preds = %2
  store i32 160, i32* %6, align 4
  br label %40

29:                                               ; preds = %2
  store i32 144, i32* %6, align 4
  br label %40

30:                                               ; preds = %2
  store i32 128, i32* %6, align 4
  br label %40

31:                                               ; preds = %2
  store i32 112, i32* %6, align 4
  br label %40

32:                                               ; preds = %2
  store i32 96, i32* %6, align 4
  br label %40

33:                                               ; preds = %2
  store i32 80, i32* %6, align 4
  br label %40

34:                                               ; preds = %2
  store i32 1024, i32* %6, align 4
  br label %40

35:                                               ; preds = %2
  store i32 768, i32* %6, align 4
  br label %40

36:                                               ; preds = %2
  store i32 512, i32* %6, align 4
  br label %40

37:                                               ; preds = %2
  store i32 256, i32* %6, align 4
  br label %40

38:                                               ; preds = %2
  br label %39

39:                                               ; preds = %2, %38
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 140
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 63743, i32 65295
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @outw(i32 %50, i64 %51)
  ret void
}

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
