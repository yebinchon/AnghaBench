; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_cma3000_d0x.c_cma3000_poweron.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_cma3000_d0x.c_cma3000_poweron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma3000_accl_data = type { i64, i32, %struct.TYPE_2__*, i32, %struct.cma3000_platform_data* }
%struct.TYPE_2__ = type { i32 }
%struct.cma3000_platform_data = type { i32, i32, i32 }

@CMARANGE_2G = common dso_local global i64 0, align 8
@CMA3000_RANGE2G = common dso_local global i32 0, align 4
@CMARANGE_8G = common dso_local global i64 0, align 8
@CMA3000_RANGE8G = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Invalid G range specified, assuming 8G\0A\00", align 1
@CMA3000_MDTHR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Motion Detect Threshold\00", align 1
@CMA3000_MDFFTMR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Time register\00", align 1
@CMA3000_FFTHR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Free fall threshold\00", align 1
@CMA3000_CTRL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"Mode setting\00", align 1
@EIO = common dso_local global i32 0, align 4
@CMA3000_SETDELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cma3000_accl_data*)* @cma3000_poweron to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma3000_poweron(%struct.cma3000_accl_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cma3000_accl_data*, align 8
  %4 = alloca %struct.cma3000_platform_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cma3000_accl_data* %0, %struct.cma3000_accl_data** %3, align 8
  %7 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %3, align 8
  %8 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %7, i32 0, i32 4
  %9 = load %struct.cma3000_platform_data*, %struct.cma3000_platform_data** %8, align 8
  store %struct.cma3000_platform_data* %9, %struct.cma3000_platform_data** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %3, align 8
  %11 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CMARANGE_2G, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %3, align 8
  %17 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %18, 1
  %20 = load i32, i32* @CMA3000_RANGE2G, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %5, align 4
  br label %47

22:                                               ; preds = %1
  %23 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %3, align 8
  %24 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CMARANGE_8G, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %3, align 8
  %30 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, 1
  %33 = load i32, i32* @CMA3000_RANGE8G, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %5, align 4
  br label %46

35:                                               ; preds = %22
  %36 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %3, align 8
  %37 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_info(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %3, align 8
  %41 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 %42, 1
  %44 = load i32, i32* @CMA3000_RANGE8G, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %35, %28
  br label %47

47:                                               ; preds = %46, %15
  %48 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %3, align 8
  %49 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %3, align 8
  %56 = load i32, i32* @CMA3000_MDTHR, align 4
  %57 = load %struct.cma3000_platform_data*, %struct.cma3000_platform_data** %4, align 8
  %58 = getelementptr inbounds %struct.cma3000_platform_data, %struct.cma3000_platform_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @CMA3000_SET(%struct.cma3000_accl_data* %55, i32 %56, i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %3, align 8
  %62 = load i32, i32* @CMA3000_MDFFTMR, align 4
  %63 = load %struct.cma3000_platform_data*, %struct.cma3000_platform_data** %4, align 8
  %64 = getelementptr inbounds %struct.cma3000_platform_data, %struct.cma3000_platform_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @CMA3000_SET(%struct.cma3000_accl_data* %61, i32 %62, i32 %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %3, align 8
  %68 = load i32, i32* @CMA3000_FFTHR, align 4
  %69 = load %struct.cma3000_platform_data*, %struct.cma3000_platform_data** %4, align 8
  %70 = getelementptr inbounds %struct.cma3000_platform_data, %struct.cma3000_platform_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @CMA3000_SET(%struct.cma3000_accl_data* %67, i32 %68, i32 %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %73 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %3, align 8
  %74 = load i32, i32* @CMA3000_CTRL, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @CMA3000_SET(%struct.cma3000_accl_data* %73, i32 %74, i32 %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %47
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %85

82:                                               ; preds = %47
  %83 = load i32, i32* @CMA3000_SETDELAY, align 4
  %84 = call i32 @msleep(i32 %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @CMA3000_SET(%struct.cma3000_accl_data*, i32, i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
