; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_db9.c_db9_saturn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_db9.c_db9_saturn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.parport = type { i32 }
%struct.input_dev = type { i32 }

@db9_modes = common dso_local global %struct.TYPE_2__* null, align 8
@DB9_MAX_DEVICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.parport*, %struct.input_dev**)* @db9_saturn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db9_saturn(i32 %0, %struct.parport* %1, %struct.input_dev** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.parport*, align 8
  %7 = alloca %struct.input_dev**, align 8
  %8 = alloca i8, align 1
  %9 = alloca [60 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.parport* %1, %struct.parport** %6, align 8
  store %struct.input_dev** %2, %struct.input_dev*** %7, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %19 [
    i32 128, label %16
    i32 130, label %17
    i32 129, label %18
  ]

16:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %20

17:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %20

18:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  store i32 2, i32* %11, align 4
  br label %20

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %50

20:                                               ; preds = %18, %17, %16
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @db9_modes, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DB9_MAX_DEVICES, align 4
  %28 = call i32 @min(i32 %26, i32 %27)
  store i32 %28, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %46, %20
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = load %struct.parport*, %struct.parport** %6, align 8
  %35 = getelementptr inbounds [60 x i8], [60 x i8]* %9, i64 0, i64 0
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %14, align 4
  %38 = add nsw i32 %36, %37
  %39 = call zeroext i8 @db9_saturn_read_packet(%struct.parport* %34, i8* %35, i32 %38, i32 1)
  store i8 %39, i8* %8, align 1
  %40 = load i8, i8* %8, align 1
  %41 = getelementptr inbounds [60 x i8], [60 x i8]* %9, i64 0, i64 0
  %42 = load %struct.input_dev**, %struct.input_dev*** %7, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @db9_saturn_report(i8 zeroext %40, i8* %41, %struct.input_dev** %42, i32 %43, i32 %44)
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %33
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %14, align 4
  br label %29

49:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %19
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local zeroext i8 @db9_saturn_read_packet(%struct.parport*, i8*, i32, i32) #1

declare dso_local i32 @db9_saturn_report(i8 zeroext, i8*, %struct.input_dev**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
