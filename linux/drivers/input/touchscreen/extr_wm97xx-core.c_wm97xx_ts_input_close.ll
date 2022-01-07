; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_ts_input_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_ts_input_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.wm97xx = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i32 (%struct.wm97xx*, i32)*, i32 (%struct.wm97xx*, i32)* }
%struct.TYPE_3__ = type { i32, i64, i32 (%struct.wm97xx*, i32)* }

@WM9705_ID2 = common dso_local global i64 0, align 8
@AC97_MISC_AFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @wm97xx_ts_input_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm97xx_ts_input_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.wm97xx*, align 8
  %4 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %6 = call %struct.wm97xx* @input_get_drvdata(%struct.input_dev* %5)
  store %struct.wm97xx* %6, %struct.wm97xx** %3, align 8
  %7 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %8 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %7, i32 0, i32 7
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %46

11:                                               ; preds = %1
  %12 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %13 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WM9705_ID2, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %11
  %18 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %19 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %28 = load i32, i32* @AC97_MISC_AFE, align 4
  %29 = call i32 @wm97xx_reg_read(%struct.wm97xx* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %31 = load i32, i32* @AC97_MISC_AFE, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %34 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %32, %37
  %39 = call i32 @wm97xx_reg_write(%struct.wm97xx* %30, i32 %31, i32 %38)
  br label %40

40:                                               ; preds = %17, %11
  %41 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %42 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %45 = call i32 @free_irq(i64 %43, %struct.wm97xx* %44)
  br label %46

46:                                               ; preds = %40, %1
  %47 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %48 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %47, i32 0, i32 6
  store i64 0, i64* %48, align 8
  %49 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %50 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %49, i32 0, i32 5
  %51 = call i64 @cancel_work_sync(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %55 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32 (%struct.wm97xx*, i32)*, i32 (%struct.wm97xx*, i32)** %57, align 8
  %59 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %60 = call i32 %58(%struct.wm97xx* %59, i32 1)
  br label %61

61:                                               ; preds = %53, %46
  %62 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %63 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %62, i32 0, i32 4
  %64 = call i32 @cancel_delayed_work_sync(i32* %63)
  %65 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %66 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @destroy_workqueue(i32 %67)
  %69 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %70 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32 (%struct.wm97xx*, i32)*, i32 (%struct.wm97xx*, i32)** %72, align 8
  %74 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %75 = call i32 %73(%struct.wm97xx* %74, i32 0)
  %76 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %77 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %76, i32 0, i32 2
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = icmp ne %struct.TYPE_3__* %78, null
  br i1 %79, label %80, label %95

80:                                               ; preds = %61
  %81 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %82 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %81, i32 0, i32 2
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %89 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32 (%struct.wm97xx*, i32)*, i32 (%struct.wm97xx*, i32)** %91, align 8
  %93 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %94 = call i32 %92(%struct.wm97xx* %93, i32 0)
  br label %95

95:                                               ; preds = %87, %80, %61
  ret void
}

declare dso_local %struct.wm97xx* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wm97xx_reg_read(%struct.wm97xx*, i32) #1

declare dso_local i32 @wm97xx_reg_write(%struct.wm97xx*, i32, i32) #1

declare dso_local i32 @free_irq(i64, %struct.wm97xx*) #1

declare dso_local i64 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
