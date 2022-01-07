; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-cpu-debug.c_debug_init_arch_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-cpu-debug.c_debug_init_arch_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_drvdata = type { i32, i32, i32, i32, i64 }

@EDDEVID = common dso_local global i64 0, align 8
@EDDEVID1 = common dso_local global i64 0, align 8
@EDDEVID_PCSAMPLE_MODE = common dso_local global i32 0, align 4
@EDDEVID1_PCSR_OFFSET_MASK = common dso_local global i32 0, align 4
@CONFIG_64BIT = common dso_local global i32 0, align 4
@EDDEVID1_PCSR_NO_OFFSET_DIS_AARCH32 = common dso_local global i32 0, align 4
@EDDEVID1_PCSR_OFFSET_INS_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @debug_init_arch_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_init_arch_data(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.debug_drvdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.debug_drvdata*
  store %struct.debug_drvdata* %9, %struct.debug_drvdata** %3, align 8
  %10 = load %struct.debug_drvdata*, %struct.debug_drvdata** %3, align 8
  %11 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @CS_UNLOCK(i64 %12)
  %14 = load %struct.debug_drvdata*, %struct.debug_drvdata** %3, align 8
  %15 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EDDEVID, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl_relaxed(i64 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.debug_drvdata*, %struct.debug_drvdata** %3, align 8
  %21 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @EDDEVID1, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl_relaxed(i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.debug_drvdata*, %struct.debug_drvdata** %3, align 8
  %27 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @CS_LOCK(i64 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @EDDEVID_PCSAMPLE_MODE, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @EDDEVID1_PCSR_OFFSET_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %5, align 4
  %36 = load %struct.debug_drvdata*, %struct.debug_drvdata** %3, align 8
  %37 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.debug_drvdata*, %struct.debug_drvdata** %3, align 8
  %39 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.debug_drvdata*, %struct.debug_drvdata** %3, align 8
  %41 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %40, i32 0, i32 2
  store i32 0, i32* %41, align 8
  %42 = load %struct.debug_drvdata*, %struct.debug_drvdata** %3, align 8
  %43 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %42, i32 0, i32 3
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* %4, align 4
  switch i32 %44, label %73 [
    i32 128, label %45
    i32 129, label %48
    i32 130, label %51
  ]

45:                                               ; preds = %1
  %46 = load %struct.debug_drvdata*, %struct.debug_drvdata** %3, align 8
  %47 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %46, i32 0, i32 2
  store i32 1, i32* %47, align 8
  br label %48

48:                                               ; preds = %1, %45
  %49 = load %struct.debug_drvdata*, %struct.debug_drvdata** %3, align 8
  %50 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %1, %48
  %52 = load i32, i32* @CONFIG_64BIT, align 4
  %53 = call i32 @IS_ENABLED(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55, %51
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @EDDEVID1_PCSR_NO_OFFSET_DIS_AARCH32, align 4
  %61 = icmp ne i32 %59, %60
  br label %62

62:                                               ; preds = %58, %55
  %63 = phi i1 [ true, %55 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  %65 = load %struct.debug_drvdata*, %struct.debug_drvdata** %3, align 8
  %66 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @EDDEVID1_PCSR_OFFSET_INS_SET, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load %struct.debug_drvdata*, %struct.debug_drvdata** %3, align 8
  %72 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  br label %74

73:                                               ; preds = %1
  br label %74

74:                                               ; preds = %73, %62
  ret void
}

declare dso_local i32 @CS_UNLOCK(i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @CS_LOCK(i64) #1

declare dso_local i32 @IS_ENABLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
