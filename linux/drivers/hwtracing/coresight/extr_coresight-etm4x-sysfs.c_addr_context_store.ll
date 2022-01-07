; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_addr_context_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_addr_context_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.etmv4_drvdata = type { i32, i32, i32, %struct.etmv4_config }
%struct.etmv4_config = type { i64, i32* }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @addr_context_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @addr_context_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.etmv4_drvdata*, align 8
  %13 = alloca %struct.etmv4_config*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.etmv4_drvdata* @dev_get_drvdata(i32 %16)
  store %struct.etmv4_drvdata* %17, %struct.etmv4_drvdata** %12, align 8
  %18 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %19 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %18, i32 0, i32 3
  store %struct.etmv4_config* %19, %struct.etmv4_config** %13, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @kstrtoul(i8* %20, i32 16, i64* %11)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %98

26:                                               ; preds = %4
  %27 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %28 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sle i32 %29, 1
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %33 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sle i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i64, i64* @EINVAL, align 8
  %38 = sub i64 0, %37
  store i64 %38, i64* %5, align 8
  br label %98

39:                                               ; preds = %31, %26
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %42 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %45 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %50 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  br label %56

52:                                               ; preds = %39
  %53 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %54 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi i32 [ %51, %48 ], [ %55, %52 ]
  %58 = sext i32 %57 to i64
  %59 = icmp uge i64 %40, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i64, i64* @EINVAL, align 8
  %62 = sub i64 0, %61
  store i64 %62, i64* %5, align 8
  br label %98

63:                                               ; preds = %56
  %64 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %65 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %64, i32 0, i32 2
  %66 = call i32 @spin_lock(i32* %65)
  %67 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %68 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %10, align 8
  %70 = call i32 @BIT(i32 4)
  %71 = call i32 @BIT(i32 5)
  %72 = or i32 %70, %71
  %73 = call i32 @BIT(i32 6)
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %77 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %75
  store i32 %82, i32* %80, align 4
  %83 = load i64, i64* %11, align 8
  %84 = shl i64 %83, 4
  %85 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %86 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = or i64 %91, %84
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 4
  %94 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %95 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %94, i32 0, i32 2
  %96 = call i32 @spin_unlock(i32* %95)
  %97 = load i64, i64* %9, align 8
  store i64 %97, i64* %5, align 8
  br label %98

98:                                               ; preds = %63, %60, %36, %23
  %99 = load i64, i64* %5, align 8
  ret i64 %99
}

declare dso_local %struct.etmv4_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
