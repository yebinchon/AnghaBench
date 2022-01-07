; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etb10.c_etb_enable_perf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etb10.c_etb_enable_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.etb_drvdata = type { i64, i32, i32 }
%struct.perf_output_handle = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@CS_MODE_SYSFS = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@CS_MODE_PERF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coresight_device*, i8*)* @etb_enable_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etb_enable_perf(%struct.coresight_device* %0, i8* %1) #0 {
  %3 = alloca %struct.coresight_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.etb_drvdata*, align 8
  %9 = alloca %struct.perf_output_handle*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %11 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.etb_drvdata* @dev_get_drvdata(i32 %13)
  store %struct.etb_drvdata* %14, %struct.etb_drvdata** %8, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.perf_output_handle*
  store %struct.perf_output_handle* %16, %struct.perf_output_handle** %9, align 8
  %17 = load %struct.etb_drvdata*, %struct.etb_drvdata** %8, align 8
  %18 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %17, i32 0, i32 2
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.etb_drvdata*, %struct.etb_drvdata** %8, align 8
  %22 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CS_MODE_SYSFS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %84

29:                                               ; preds = %2
  %30 = load %struct.perf_output_handle*, %struct.perf_output_handle** %9, align 8
  %31 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @task_pid_nr(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.etb_drvdata*, %struct.etb_drvdata** %8, align 8
  %37 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %49

40:                                               ; preds = %29
  %41 = load %struct.etb_drvdata*, %struct.etb_drvdata** %8, align 8
  %42 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %84

49:                                               ; preds = %40, %29
  %50 = load %struct.etb_drvdata*, %struct.etb_drvdata** %8, align 8
  %51 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %57 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @atomic_inc(i32 %58)
  br label %84

60:                                               ; preds = %49
  %61 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %62 = load %struct.perf_output_handle*, %struct.perf_output_handle** %9, align 8
  %63 = call i32 @etb_set_buffer(%struct.coresight_device* %61, %struct.perf_output_handle* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %84

67:                                               ; preds = %60
  %68 = load %struct.etb_drvdata*, %struct.etb_drvdata** %8, align 8
  %69 = call i32 @etb_enable_hw(%struct.etb_drvdata* %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.etb_drvdata*, %struct.etb_drvdata** %8, align 8
  %75 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load i64, i64* @CS_MODE_PERF, align 8
  %77 = load %struct.etb_drvdata*, %struct.etb_drvdata** %8, align 8
  %78 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %80 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @atomic_inc(i32 %81)
  br label %83

83:                                               ; preds = %72, %67
  br label %84

84:                                               ; preds = %83, %66, %55, %46, %26
  %85 = load %struct.etb_drvdata*, %struct.etb_drvdata** %8, align 8
  %86 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %85, i32 0, i32 2
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.etb_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @atomic_inc(i32) #1

declare dso_local i32 @etb_set_buffer(%struct.coresight_device*, %struct.perf_output_handle*) #1

declare dso_local i32 @etb_enable_hw(%struct.etb_drvdata*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
