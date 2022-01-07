; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_wistron_btns.c_setup_input_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_wistron_btns.c_setup_input_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.input_dev*, i32, i32, i32 }
%struct.input_dev = type { i8*, i8*, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@wistron_idev = common dso_local global %struct.TYPE_10__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@wistron_flush = common dso_local global i32 0, align 4
@wistron_poll = common dso_local global i32 0, align 4
@POLL_INTERVAL_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Wistron laptop buttons\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"wistron/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@wistron_device = common dso_local global %struct.TYPE_11__* null, align 8
@keymap = common dso_local global i32 0, align 4
@wistron_setup_keymap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @setup_input_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_input_dev() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca i32, align 4
  %4 = call %struct.TYPE_10__* (...) @input_allocate_polled_device()
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** @wistron_idev, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wistron_idev, align 8
  %6 = icmp ne %struct.TYPE_10__* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %1, align 4
  br label %54

10:                                               ; preds = %0
  %11 = load i32, i32* @wistron_flush, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wistron_idev, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @wistron_poll, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wistron_idev, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @POLL_INTERVAL_DEFAULT, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wistron_idev, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wistron_idev, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.input_dev*, %struct.input_dev** %21, align 8
  store %struct.input_dev* %22, %struct.input_dev** %2, align 8
  %23 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %24 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %26, align 8
  %27 = load i32, i32* @BUS_HOST, align 4
  %28 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %29 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** @wistron_device, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %34 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32* %32, i32** %35, align 8
  %36 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %37 = load i32, i32* @keymap, align 4
  %38 = load i32, i32* @wistron_setup_keymap, align 4
  %39 = call i32 @sparse_keymap_setup(%struct.input_dev* %36, i32 %37, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %10
  br label %50

43:                                               ; preds = %10
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wistron_idev, align 8
  %45 = call i32 @input_register_polled_device(%struct.TYPE_10__* %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %50

49:                                               ; preds = %43
  store i32 0, i32* %1, align 4
  br label %54

50:                                               ; preds = %48, %42
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wistron_idev, align 8
  %52 = call i32 @input_free_polled_device(%struct.TYPE_10__* %51)
  %53 = load i32, i32* %3, align 4
  store i32 %53, i32* %1, align 4
  br label %54

54:                                               ; preds = %50, %49, %7
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local %struct.TYPE_10__* @input_allocate_polled_device(...) #1

declare dso_local i32 @sparse_keymap_setup(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_register_polled_device(%struct.TYPE_10__*) #1

declare dso_local i32 @input_free_polled_device(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
