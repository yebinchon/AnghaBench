; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-stm.c_port_select_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-stm.c_port_select_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.stm_drvdata = type { i64, i32, i64, i32 }

@STMSPER = common dso_local global i64 0, align 8
@STMSPSCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @port_select_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_select_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stm_drvdata*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.stm_drvdata* @dev_get_drvdata(i32 %16)
  store %struct.stm_drvdata* %17, %struct.stm_drvdata** %10, align 8
  store i32 0, i32* %13, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @kstrtoul(i8* %18, i32 16, i64* %11)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %78

24:                                               ; preds = %4
  %25 = load %struct.stm_drvdata*, %struct.stm_drvdata** %10, align 8
  %26 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %25, i32 0, i32 1
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load i64, i64* %11, align 8
  %29 = load %struct.stm_drvdata*, %struct.stm_drvdata** %10, align 8
  %30 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.stm_drvdata*, %struct.stm_drvdata** %10, align 8
  %32 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %31, i32 0, i32 3
  %33 = call i64 @local_read(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %72

35:                                               ; preds = %24
  %36 = load %struct.stm_drvdata*, %struct.stm_drvdata** %10, align 8
  %37 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @CS_UNLOCK(i64 %38)
  %40 = load %struct.stm_drvdata*, %struct.stm_drvdata** %10, align 8
  %41 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @STMSPER, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i64 @readl_relaxed(i64 %44)
  store i64 %45, i64* %12, align 8
  %46 = load %struct.stm_drvdata*, %struct.stm_drvdata** %10, align 8
  %47 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @STMSPER, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel_relaxed(i64 0, i64 %50)
  %52 = load %struct.stm_drvdata*, %struct.stm_drvdata** %10, align 8
  %53 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.stm_drvdata*, %struct.stm_drvdata** %10, align 8
  %56 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @STMSPSCR, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel_relaxed(i64 %54, i64 %59)
  %61 = load i64, i64* %12, align 8
  %62 = load %struct.stm_drvdata*, %struct.stm_drvdata** %10, align 8
  %63 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @STMSPER, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel_relaxed(i64 %61, i64 %66)
  %68 = load %struct.stm_drvdata*, %struct.stm_drvdata** %10, align 8
  %69 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @CS_LOCK(i64 %70)
  br label %72

72:                                               ; preds = %35, %24
  %73 = load %struct.stm_drvdata*, %struct.stm_drvdata** %10, align 8
  %74 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %73, i32 0, i32 1
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load i64, i64* %9, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %72, %22
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.stm_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @local_read(i32*) #1

declare dso_local i32 @CS_UNLOCK(i64) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i32 @CS_LOCK(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
