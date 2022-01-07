; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat.c_roccat_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat.c_roccat_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.roccat_reader* }
%struct.roccat_reader = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @roccat_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roccat_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.roccat_reader*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.roccat_reader*, %struct.roccat_reader** %8, align 8
  store %struct.roccat_reader* %9, %struct.roccat_reader** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = load %struct.roccat_reader*, %struct.roccat_reader** %6, align 8
  %12 = getelementptr inbounds %struct.roccat_reader, %struct.roccat_reader* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @poll_wait(%struct.file* %10, i32* %14, i32* %15)
  %17 = load %struct.roccat_reader*, %struct.roccat_reader** %6, align 8
  %18 = getelementptr inbounds %struct.roccat_reader, %struct.roccat_reader* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.roccat_reader*, %struct.roccat_reader** %6, align 8
  %21 = getelementptr inbounds %struct.roccat_reader, %struct.roccat_reader* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %19, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @EPOLLIN, align 4
  %28 = load i32, i32* @EPOLLRDNORM, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %3, align 4
  br label %42

30:                                               ; preds = %2
  %31 = load %struct.roccat_reader*, %struct.roccat_reader** %6, align 8
  %32 = getelementptr inbounds %struct.roccat_reader, %struct.roccat_reader* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @EPOLLERR, align 4
  %39 = load i32, i32* @EPOLLHUP, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %37, %26
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
