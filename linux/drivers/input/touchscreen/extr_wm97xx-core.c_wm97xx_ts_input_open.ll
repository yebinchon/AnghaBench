; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_ts_input_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_ts_input_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.wm97xx = type { i32, i32, i64, i32, i32*, i32, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.wm97xx*, i32)*, i32 (%struct.wm97xx*, i32)* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"kwm97xx\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to create workqueue\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@wm97xx_ts_reader = common dso_local global i32 0, align 4
@wm97xx_pen_irq_worker = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"No IRQ specified\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @wm97xx_ts_input_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm97xx_ts_input_open(%struct.input_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.wm97xx*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %6 = call %struct.wm97xx* @input_get_drvdata(%struct.input_dev* %5)
  store %struct.wm97xx* %6, %struct.wm97xx** %4, align 8
  %7 = call i32* @alloc_ordered_workqueue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %8 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %9 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %8, i32 0, i32 4
  store i32* %7, i32** %9, align 8
  %10 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %11 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %16 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %110

21:                                               ; preds = %1
  %22 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %23 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %22, i32 0, i32 9
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %28 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %27, i32 0, i32 9
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %35 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %34, i32 0, i32 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32 (%struct.wm97xx*, i32)*, i32 (%struct.wm97xx*, i32)** %37, align 8
  %39 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %40 = call i32 %38(%struct.wm97xx* %39, i32 1)
  br label %41

41:                                               ; preds = %33, %26, %21
  %42 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %43 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %42, i32 0, i32 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32 (%struct.wm97xx*, i32)*, i32 (%struct.wm97xx*, i32)** %45, align 8
  %47 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %48 = call i32 %46(%struct.wm97xx* %47, i32 1)
  %49 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %50 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %49, i32 0, i32 3
  %51 = load i32, i32* @wm97xx_ts_reader, align 4
  %52 = call i32 @INIT_DELAYED_WORK(i32* %50, i32 %51)
  %53 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %54 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %53, i32 0, i32 7
  %55 = load i32, i32* @wm97xx_pen_irq_worker, align 4
  %56 = call i32 @INIT_WORK(i32* %54, i32 %55)
  %57 = load i32, i32* @HZ, align 4
  %58 = icmp sge i32 %57, 100
  br i1 %58, label %59, label %62

59:                                               ; preds = %41
  %60 = load i32, i32* @HZ, align 4
  %61 = sdiv i32 %60, 100
  br label %63

62:                                               ; preds = %41
  br label %63

63:                                               ; preds = %62, %59
  %64 = phi i32 [ %61, %59 ], [ 1, %62 ]
  %65 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %66 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %68 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %73 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %71, %63
  %75 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %76 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %79 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %81 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %80, i32 0, i32 6
  store i64 0, i64* %81, align 8
  %82 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %83 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %74
  %87 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %88 = call i32 @wm97xx_init_pen_irq(%struct.wm97xx* %87)
  br label %94

89:                                               ; preds = %74
  %90 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %91 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %94

94:                                               ; preds = %89, %86
  %95 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %96 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %101 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %104 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %103, i32 0, i32 3
  %105 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %106 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @queue_delayed_work(i32* %102, i32* %104, i32 %107)
  br label %109

109:                                              ; preds = %99, %94
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %14
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.wm97xx* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32* @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @wm97xx_init_pen_irq(%struct.wm97xx*) #1

declare dso_local i32 @queue_delayed_work(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
