; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x.c_etm_enable_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x.c_etm_enable_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.etm_drvdata = type { i32, i32, i32 }
%struct.etm_enable_arg = type { i32, %struct.etm_drvdata*, i32 }

@etm_enable_hw_smp_call = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ETM tracing enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coresight_device*)* @etm_enable_sysfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etm_enable_sysfs(%struct.coresight_device* %0) #0 {
  %2 = alloca %struct.coresight_device*, align 8
  %3 = alloca %struct.etm_drvdata*, align 8
  %4 = alloca %struct.etm_enable_arg, align 8
  %5 = alloca i32, align 4
  store %struct.coresight_device* %0, %struct.coresight_device** %2, align 8
  %6 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %7 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.etm_drvdata* @dev_get_drvdata(i32 %9)
  store %struct.etm_drvdata* %10, %struct.etm_drvdata** %3, align 8
  %11 = bitcast %struct.etm_enable_arg* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load %struct.etm_drvdata*, %struct.etm_drvdata** %3, align 8
  %13 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.etm_drvdata*, %struct.etm_drvdata** %3, align 8
  %16 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @cpu_online(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %1
  %21 = load %struct.etm_drvdata*, %struct.etm_drvdata** %3, align 8
  %22 = getelementptr inbounds %struct.etm_enable_arg, %struct.etm_enable_arg* %4, i32 0, i32 1
  store %struct.etm_drvdata* %21, %struct.etm_drvdata** %22, align 8
  %23 = load %struct.etm_drvdata*, %struct.etm_drvdata** %3, align 8
  %24 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @etm_enable_hw_smp_call, align 4
  %27 = call i32 @smp_call_function_single(i32 %25, i32 %26, %struct.etm_enable_arg* %4, i32 1)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.etm_enable_arg, %struct.etm_enable_arg* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %20
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load %struct.etm_drvdata*, %struct.etm_drvdata** %3, align 8
  %38 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %33
  br label %43

40:                                               ; preds = %1
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %39
  %44 = load %struct.etm_drvdata*, %struct.etm_drvdata** %3, align 8
  %45 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %44, i32 0, i32 1
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %51 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %50, i32 0, i32 0
  %52 = call i32 @dev_dbg(%struct.TYPE_2__* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.etm_drvdata* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @cpu_online(i32) #1

declare dso_local i32 @smp_call_function_single(i32, i32, %struct.etm_enable_arg*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
