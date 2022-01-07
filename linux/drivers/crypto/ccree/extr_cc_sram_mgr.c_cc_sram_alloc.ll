; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_sram_mgr.c_cc_sram_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_sram_mgr.c_cc_sram_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { %struct.cc_sram_ctx* }
%struct.cc_sram_ctx = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Requested buffer size (%u) is not multiple of 4\00", align 1
@NULL_SRAM_ADDR = common dso_local global i32 0, align 4
@CC_CC_SRAM_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Not enough space to allocate %u B (at offset %llu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Allocated %u B @ %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_sram_alloc(%struct.cc_drvdata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cc_drvdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cc_sram_ctx*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.cc_drvdata*, %struct.cc_drvdata** %4, align 8
  %10 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %9, i32 0, i32 0
  %11 = load %struct.cc_sram_ctx*, %struct.cc_sram_ctx** %10, align 8
  store %struct.cc_sram_ctx* %11, %struct.cc_sram_ctx** %6, align 8
  %12 = load %struct.cc_drvdata*, %struct.cc_drvdata** %4, align 8
  %13 = call %struct.device* @drvdata_to_dev(%struct.cc_drvdata* %12)
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 3
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %18, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @NULL_SRAM_ADDR, align 4
  store i32 %21, i32* %3, align 4
  br label %52

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @CC_CC_SRAM_SIZE, align 4
  %25 = load %struct.cc_sram_ctx*, %struct.cc_sram_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.cc_sram_ctx, %struct.cc_sram_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %24, %27
  %29 = icmp sgt i32 %23, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.cc_sram_ctx*, %struct.cc_sram_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.cc_sram_ctx, %struct.cc_sram_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load i32, i32* @NULL_SRAM_ADDR, align 4
  store i32 %37, i32* %3, align 4
  br label %52

38:                                               ; preds = %22
  %39 = load %struct.cc_sram_ctx*, %struct.cc_sram_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.cc_sram_ctx, %struct.cc_sram_ctx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.cc_sram_ctx*, %struct.cc_sram_ctx** %6, align 8
  %44 = getelementptr inbounds %struct.cc_sram_ctx, %struct.cc_sram_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @dev_dbg(%struct.device* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %38, %30, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.device* @drvdata_to_dev(%struct.cc_drvdata*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
