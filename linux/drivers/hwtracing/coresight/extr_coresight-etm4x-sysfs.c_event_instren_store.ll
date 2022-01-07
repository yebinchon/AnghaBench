; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_event_instren_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_event_instren_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.etmv4_drvdata = type { i32, i32, %struct.etmv4_config }
%struct.etmv4_config = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @event_instren_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @event_instren_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.etmv4_drvdata*, align 8
  %12 = alloca %struct.etmv4_config*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.etmv4_drvdata* @dev_get_drvdata(i32 %15)
  store %struct.etmv4_drvdata* %16, %struct.etmv4_drvdata** %11, align 8
  %17 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %11, align 8
  %18 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %17, i32 0, i32 2
  store %struct.etmv4_config* %18, %struct.etmv4_config** %12, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @kstrtoul(i8* %19, i32 16, i64* %10)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %5, align 8
  br label %87

25:                                               ; preds = %4
  %26 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %11, align 8
  %27 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %26, i32 0, i32 1
  %28 = call i32 @spin_lock(i32* %27)
  %29 = call i64 @BIT(i32 0)
  %30 = call i64 @BIT(i32 1)
  %31 = or i64 %29, %30
  %32 = call i64 @BIT(i32 2)
  %33 = or i64 %31, %32
  %34 = call i64 @BIT(i32 3)
  %35 = or i64 %33, %34
  %36 = xor i64 %35, -1
  %37 = load %struct.etmv4_config*, %struct.etmv4_config** %12, align 8
  %38 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = and i64 %39, %36
  store i64 %40, i64* %38, align 8
  %41 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %11, align 8
  %42 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %81 [
    i32 0, label %44
    i32 1, label %52
    i32 2, label %62
    i32 3, label %74
  ]

44:                                               ; preds = %25
  %45 = load i64, i64* %10, align 8
  %46 = call i64 @BIT(i32 1)
  %47 = and i64 %45, %46
  %48 = load %struct.etmv4_config*, %struct.etmv4_config** %12, align 8
  %49 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = or i64 %50, %47
  store i64 %51, i64* %49, align 8
  br label %82

52:                                               ; preds = %25
  %53 = load i64, i64* %10, align 8
  %54 = call i64 @BIT(i32 0)
  %55 = call i64 @BIT(i32 1)
  %56 = or i64 %54, %55
  %57 = and i64 %53, %56
  %58 = load %struct.etmv4_config*, %struct.etmv4_config** %12, align 8
  %59 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = or i64 %60, %57
  store i64 %61, i64* %59, align 8
  br label %82

62:                                               ; preds = %25
  %63 = load i64, i64* %10, align 8
  %64 = call i64 @BIT(i32 0)
  %65 = call i64 @BIT(i32 1)
  %66 = or i64 %64, %65
  %67 = call i64 @BIT(i32 2)
  %68 = or i64 %66, %67
  %69 = and i64 %63, %68
  %70 = load %struct.etmv4_config*, %struct.etmv4_config** %12, align 8
  %71 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = or i64 %72, %69
  store i64 %73, i64* %71, align 8
  br label %82

74:                                               ; preds = %25
  %75 = load i64, i64* %10, align 8
  %76 = and i64 %75, 15
  %77 = load %struct.etmv4_config*, %struct.etmv4_config** %12, align 8
  %78 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = or i64 %79, %76
  store i64 %80, i64* %78, align 8
  br label %82

81:                                               ; preds = %25
  br label %82

82:                                               ; preds = %81, %74, %62, %52, %44
  %83 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %11, align 8
  %84 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %83, i32 0, i32 1
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load i64, i64* %9, align 8
  store i64 %86, i64* %5, align 8
  br label %87

87:                                               ; preds = %82, %22
  %88 = load i64, i64* %5, align 8
  ret i64 %88
}

declare dso_local %struct.etmv4_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
