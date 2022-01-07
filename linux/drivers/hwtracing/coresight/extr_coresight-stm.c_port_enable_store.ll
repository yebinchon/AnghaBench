; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-stm.c_port_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-stm.c_port_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.stm_drvdata = type { i64, i32, i64, i32 }

@STMSPER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @port_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stm_drvdata*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.stm_drvdata* @dev_get_drvdata(i32 %15)
  store %struct.stm_drvdata* %16, %struct.stm_drvdata** %10, align 8
  store i32 0, i32* %12, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @kstrtoul(i8* %17, i32 16, i64* %11)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %5, align 4
  br label %58

23:                                               ; preds = %4
  %24 = load %struct.stm_drvdata*, %struct.stm_drvdata** %10, align 8
  %25 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %24, i32 0, i32 1
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.stm_drvdata*, %struct.stm_drvdata** %10, align 8
  %29 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.stm_drvdata*, %struct.stm_drvdata** %10, align 8
  %31 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %30, i32 0, i32 3
  %32 = call i64 @local_read(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %23
  %35 = load %struct.stm_drvdata*, %struct.stm_drvdata** %10, align 8
  %36 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @CS_UNLOCK(i64 %37)
  %39 = load %struct.stm_drvdata*, %struct.stm_drvdata** %10, align 8
  %40 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.stm_drvdata*, %struct.stm_drvdata** %10, align 8
  %43 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @STMSPER, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel_relaxed(i64 %41, i64 %46)
  %48 = load %struct.stm_drvdata*, %struct.stm_drvdata** %10, align 8
  %49 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @CS_LOCK(i64 %50)
  br label %52

52:                                               ; preds = %34, %23
  %53 = load %struct.stm_drvdata*, %struct.stm_drvdata** %10, align 8
  %54 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %53, i32 0, i32 1
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load i64, i64* %9, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %52, %21
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.stm_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @local_read(i32*) #1

declare dso_local i32 @CS_UNLOCK(i64) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i32 @CS_LOCK(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
