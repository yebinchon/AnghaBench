; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input-poller.c_input_dev_set_poll_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input-poller.c_input_dev_set_poll_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.input_dev = type { i32, i64, %struct.input_dev_poller* }
%struct.input_dev_poller = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @input_dev_set_poll_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_dev_set_poll_interval(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.input_dev*, align 8
  %11 = alloca %struct.input_dev_poller*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.input_dev* @to_input_dev(%struct.device* %14)
  store %struct.input_dev* %15, %struct.input_dev** %10, align 8
  %16 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %17 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %16, i32 0, i32 2
  %18 = load %struct.input_dev_poller*, %struct.input_dev_poller** %17, align 8
  store %struct.input_dev_poller* %18, %struct.input_dev_poller** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtouint(i8* %19, i32 0, i32* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %5, align 4
  br label %72

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.input_dev_poller*, %struct.input_dev_poller** %11, align 8
  %28 = getelementptr inbounds %struct.input_dev_poller, %struct.input_dev_poller* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %72

34:                                               ; preds = %25
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.input_dev_poller*, %struct.input_dev_poller** %11, align 8
  %37 = getelementptr inbounds %struct.input_dev_poller, %struct.input_dev_poller* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ugt i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %72

43:                                               ; preds = %34
  %44 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %45 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.input_dev_poller*, %struct.input_dev_poller** %11, align 8
  %49 = getelementptr inbounds %struct.input_dev_poller, %struct.input_dev_poller* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %51 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %43
  %55 = load %struct.input_dev_poller*, %struct.input_dev_poller** %11, align 8
  %56 = getelementptr inbounds %struct.input_dev_poller, %struct.input_dev_poller* %55, i32 0, i32 3
  %57 = call i32 @cancel_delayed_work_sync(i32* %56)
  %58 = load %struct.input_dev_poller*, %struct.input_dev_poller** %11, align 8
  %59 = getelementptr inbounds %struct.input_dev_poller, %struct.input_dev_poller* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ugt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load %struct.input_dev_poller*, %struct.input_dev_poller** %11, align 8
  %64 = call i32 @input_dev_poller_queue_work(%struct.input_dev_poller* %63)
  br label %65

65:                                               ; preds = %62, %54
  br label %66

66:                                               ; preds = %65, %43
  %67 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %68 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i64, i64* %9, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %66, %40, %31, %23
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.input_dev* @to_input_dev(%struct.device*) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @input_dev_poller_queue_work(%struct.input_dev_poller*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
