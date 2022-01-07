; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_exc3000.c_exc3000_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_exc3000.c_exc3000_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exc3000_data = type { i32, i32, i32, i32*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@EXC3000_TIMEOUT_MS = common dso_local global i32 0, align 4
@EXC3000_SLOTS_PER_FRAME = common dso_local global i32 0, align 4
@EXC3000_LEN_FRAME = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @exc3000_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exc3000_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.exc3000_data*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.exc3000_data*
  store %struct.exc3000_data* %12, %struct.exc3000_data** %5, align 8
  %13 = load %struct.exc3000_data*, %struct.exc3000_data** %5, align 8
  %14 = getelementptr inbounds %struct.exc3000_data, %struct.exc3000_data* %13, i32 0, i32 4
  %15 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  store %struct.input_dev* %15, %struct.input_dev** %6, align 8
  %16 = load %struct.exc3000_data*, %struct.exc3000_data** %5, align 8
  %17 = getelementptr inbounds %struct.exc3000_data, %struct.exc3000_data* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load %struct.exc3000_data*, %struct.exc3000_data** %5, align 8
  %20 = getelementptr inbounds %struct.exc3000_data, %struct.exc3000_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @exc3000_read_data(i32 %21, i32* %22, i32* %9)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.exc3000_data*, %struct.exc3000_data** %5, align 8
  %28 = getelementptr inbounds %struct.exc3000_data, %struct.exc3000_data* %27, i32 0, i32 1
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i32, i32* @EXC3000_TIMEOUT_MS, align 4
  %31 = call i64 @msecs_to_jiffies(i32 %30)
  %32 = add nsw i64 %29, %31
  %33 = call i32 @mod_timer(i32* %28, i64 %32)
  br label %64

34:                                               ; preds = %2
  %35 = load %struct.exc3000_data*, %struct.exc3000_data** %5, align 8
  %36 = getelementptr inbounds %struct.exc3000_data, %struct.exc3000_data* %35, i32 0, i32 1
  %37 = call i32 @del_timer_sync(i32* %36)
  br label %38

38:                                               ; preds = %41, %34
  %39 = load i32, i32* %9, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @EXC3000_SLOTS_PER_FRAME, align 4
  %44 = call i32 @min(i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %46 = load %struct.exc3000_data*, %struct.exc3000_data** %5, align 8
  %47 = getelementptr inbounds %struct.exc3000_data, %struct.exc3000_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @exc3000_report_slots(%struct.input_dev* %45, i32* %47, i32* %49, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @EXC3000_LEN_FRAME, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %7, align 8
  br label %38

59:                                               ; preds = %38
  %60 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %61 = call i32 @input_mt_sync_frame(%struct.input_dev* %60)
  %62 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %63 = call i32 @input_sync(%struct.input_dev* %62)
  br label %64

64:                                               ; preds = %59, %26
  %65 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %65
}

declare dso_local i32 @exc3000_read_data(i32, i32*, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @exc3000_report_slots(%struct.input_dev*, i32*, i32*, i32) #1

declare dso_local i32 @input_mt_sync_frame(%struct.input_dev*) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
