; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-cpu-debug.c_debug_read_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-cpu-debug.c_debug_read_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_drvdata = type { i64, i64, i8*, i64, i8*, i64, i8* }

@EDPRCR = common dso_local global i64 0, align 8
@EDPCSR = common dso_local global i64 0, align 8
@EDPCSR_PROHIBITED = common dso_local global i64 0, align 8
@CONFIG_64BIT = common dso_local global i32 0, align 4
@EDPCSR_HI = common dso_local global i64 0, align 8
@EDCIDSR = common dso_local global i64 0, align 8
@EDVIDSR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.debug_drvdata*)* @debug_read_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_read_regs(%struct.debug_drvdata* %0) #0 {
  %2 = alloca %struct.debug_drvdata*, align 8
  %3 = alloca i8*, align 8
  store %struct.debug_drvdata* %0, %struct.debug_drvdata** %2, align 8
  %4 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %5 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @CS_UNLOCK(i64 %6)
  %8 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %9 = call i32 @debug_os_unlock(%struct.debug_drvdata* %8)
  %10 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %11 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @EDPRCR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i8* @readl_relaxed(i64 %14)
  store i8* %15, i8** %3, align 8
  %16 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %17 = call i32 @debug_force_cpu_powered_up(%struct.debug_drvdata* %16)
  %18 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %19 = call i32 @debug_access_permitted(%struct.debug_drvdata* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %80

22:                                               ; preds = %1
  %23 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %24 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EDPCSR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i8* @readl_relaxed(i64 %27)
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %31 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %33 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @EDPCSR_PROHIBITED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  br label %80

38:                                               ; preds = %22
  %39 = load i32, i32* @CONFIG_64BIT, align 4
  %40 = call i64 @IS_ENABLED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %44 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @EDPCSR_HI, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i8* @readl_relaxed(i64 %47)
  %49 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %50 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %49, i32 0, i32 6
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %42, %38
  %52 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %53 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %58 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @EDCIDSR, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i8* @readl_relaxed(i64 %61)
  %63 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %64 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %56, %51
  %66 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %67 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %72 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @EDVIDSR, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i8* @readl_relaxed(i64 %75)
  %77 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %78 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %70, %65
  br label %80

80:                                               ; preds = %79, %37, %21
  %81 = load i8*, i8** %3, align 8
  %82 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %83 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @EDPRCR, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel_relaxed(i8* %81, i64 %86)
  %88 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %89 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @CS_LOCK(i64 %90)
  ret void
}

declare dso_local i32 @CS_UNLOCK(i64) #1

declare dso_local i32 @debug_os_unlock(%struct.debug_drvdata*) #1

declare dso_local i8* @readl_relaxed(i64) #1

declare dso_local i32 @debug_force_cpu_powered_up(%struct.debug_drvdata*) #1

declare dso_local i32 @debug_access_permitted(%struct.debug_drvdata*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @writel_relaxed(i8*, i64) #1

declare dso_local i32 @CS_LOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
