; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etb10.c___etb_enable_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etb10.c___etb_enable_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etb_drvdata = type { i32, i32, i64 }

@ETB_RAM_WRITE_POINTER = common dso_local global i64 0, align 8
@ETB_RWD_REG = common dso_local global i64 0, align 8
@ETB_RAM_READ_POINTER = common dso_local global i64 0, align 8
@ETB_TRG = common dso_local global i64 0, align 8
@ETB_FFCR_EN_FTC = common dso_local global i32 0, align 4
@ETB_FFCR_STOP_TRIGGER = common dso_local global i32 0, align 4
@ETB_FFCR = common dso_local global i64 0, align 8
@ETB_CTL_CAPT_EN = common dso_local global i32 0, align 4
@ETB_CTL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etb_drvdata*)* @__etb_enable_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__etb_enable_hw(%struct.etb_drvdata* %0) #0 {
  %2 = alloca %struct.etb_drvdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.etb_drvdata* %0, %struct.etb_drvdata** %2, align 8
  %5 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %6 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @CS_UNLOCK(i64 %7)
  %9 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %10 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %13 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ETB_RAM_WRITE_POINTER, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel_relaxed(i32 0, i64 %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %29, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %24 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ETB_RWD_REG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel_relaxed(i32 0, i64 %27)
  br label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %18

32:                                               ; preds = %18
  %33 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %34 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ETB_RAM_WRITE_POINTER, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel_relaxed(i32 0, i64 %37)
  %39 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %40 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ETB_RAM_READ_POINTER, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel_relaxed(i32 0, i64 %43)
  %45 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %46 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %49 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ETB_TRG, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel_relaxed(i32 %47, i64 %52)
  %54 = load i32, i32* @ETB_FFCR_EN_FTC, align 4
  %55 = load i32, i32* @ETB_FFCR_STOP_TRIGGER, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %58 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ETB_FFCR, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel_relaxed(i32 %56, i64 %61)
  %63 = load i32, i32* @ETB_CTL_CAPT_EN, align 4
  %64 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %65 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ETB_CTL_REG, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel_relaxed(i32 %63, i64 %68)
  %70 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %71 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @CS_LOCK(i64 %72)
  ret void
}

declare dso_local i32 @CS_UNLOCK(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @CS_LOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
