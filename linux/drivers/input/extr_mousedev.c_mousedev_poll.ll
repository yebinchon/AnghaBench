; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_mousedev.c_mousedev_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_mousedev.c_mousedev_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.mousedev_client* }
%struct.mousedev_client = type { i64, i64, %struct.mousedev* }
%struct.mousedev = type { i64, i32 }

@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @mousedev_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mousedev_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mousedev_client*, align 8
  %6 = alloca %struct.mousedev*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.mousedev_client*, %struct.mousedev_client** %9, align 8
  store %struct.mousedev_client* %10, %struct.mousedev_client** %5, align 8
  %11 = load %struct.mousedev_client*, %struct.mousedev_client** %5, align 8
  %12 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %11, i32 0, i32 2
  %13 = load %struct.mousedev*, %struct.mousedev** %12, align 8
  store %struct.mousedev* %13, %struct.mousedev** %6, align 8
  %14 = load %struct.file*, %struct.file** %3, align 8
  %15 = load %struct.mousedev*, %struct.mousedev** %6, align 8
  %16 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %15, i32 0, i32 1
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @poll_wait(%struct.file* %14, i32* %16, i32* %17)
  %19 = load %struct.mousedev*, %struct.mousedev** %6, align 8
  %20 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @EPOLLOUT, align 4
  %25 = load i32, i32* @EPOLLWRNORM, align 4
  %26 = or i32 %24, %25
  br label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @EPOLLHUP, align 4
  %29 = load i32, i32* @EPOLLERR, align 4
  %30 = or i32 %28, %29
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i32 [ %26, %23 ], [ %30, %27 ]
  store i32 %32, i32* %7, align 4
  %33 = load %struct.mousedev_client*, %struct.mousedev_client** %5, align 8
  %34 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load %struct.mousedev_client*, %struct.mousedev_client** %5, align 8
  %39 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37, %31
  %43 = load i32, i32* @EPOLLIN, align 4
  %44 = load i32, i32* @EPOLLRDNORM, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %42, %37
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
