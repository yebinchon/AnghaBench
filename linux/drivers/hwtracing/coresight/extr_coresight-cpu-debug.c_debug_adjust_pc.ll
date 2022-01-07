; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-cpu-debug.c_debug_adjust_pc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-cpu-debug.c_debug_adjust_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_drvdata = type { i32, i64, i64 }

@EDPCSR_THUMB = common dso_local global i64 0, align 8
@EDPCSR_THUMB_INST_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Instruction offset is implementation defined\0A\00", align 1
@EDPCSR_ARM_INST_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.debug_drvdata*)* @debug_adjust_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @debug_adjust_pc(%struct.debug_drvdata* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.debug_drvdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.debug_drvdata* %0, %struct.debug_drvdata** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.debug_drvdata*, %struct.debug_drvdata** %3, align 8
  %8 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.debug_drvdata*, %struct.debug_drvdata** %3, align 8
  %11 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i64 8, i64* %4, align 8
  store i64 4, i64* %5, align 8
  br label %15

15:                                               ; preds = %14, %1
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @EDPCSR_THUMB, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @EDPCSR_THUMB_INST_MASK, align 8
  %23 = and i64 %21, %22
  %24 = load i64, i64* %5, align 8
  %25 = sub i64 %23, %24
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  store i64 %26, i64* %2, align 8
  br label %45

27:                                               ; preds = %15
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @BIT(i32 1)
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.debug_drvdata*, %struct.debug_drvdata** %3, align 8
  %34 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_emerg(i32 %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %43

37:                                               ; preds = %27
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @EDPCSR_ARM_INST_MASK, align 8
  %40 = and i64 %38, %39
  %41 = load i64, i64* %4, align 8
  %42 = sub i64 %40, %41
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %37, %32
  %44 = load i64, i64* %6, align 8
  store i64 %44, i64* %2, align 8
  br label %45

45:                                               ; preds = %43, %20
  %46 = load i64, i64* %2, align 8
  ret i64 %46
}

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @dev_emerg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
