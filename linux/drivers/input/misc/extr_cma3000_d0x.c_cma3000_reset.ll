; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_cma3000_d0x.c_cma3000_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_cma3000_d0x.c_cma3000_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma3000_accl_data = type { i32 }

@CMA3000_RSTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@CMA3000_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Status\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Reset failed\0A\00", align 1
@CMA3000_STATUS_PERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Parity Error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cma3000_accl_data*)* @cma3000_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma3000_reset(%struct.cma3000_accl_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cma3000_accl_data*, align 8
  %4 = alloca i32, align 4
  store %struct.cma3000_accl_data* %0, %struct.cma3000_accl_data** %3, align 8
  %5 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %3, align 8
  %6 = load i32, i32* @CMA3000_RSTR, align 4
  %7 = call i32 @CMA3000_SET(%struct.cma3000_accl_data* %5, i32 %6, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %3, align 8
  %9 = load i32, i32* @CMA3000_RSTR, align 4
  %10 = call i32 @CMA3000_SET(%struct.cma3000_accl_data* %8, i32 %9, i32 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %3, align 8
  %12 = load i32, i32* @CMA3000_RSTR, align 4
  %13 = call i32 @CMA3000_SET(%struct.cma3000_accl_data* %11, i32 %12, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @mdelay(i32 10)
  %15 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %3, align 8
  %16 = load i32, i32* @CMA3000_STATUS, align 4
  %17 = call i32 @CMA3000_READ(%struct.cma3000_accl_data* %15, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %3, align 8
  %22 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %39

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @CMA3000_STATUS_PERR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %3, align 8
  %33 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %31, %20
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @CMA3000_SET(%struct.cma3000_accl_data*, i32, i32, i8*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @CMA3000_READ(%struct.cma3000_accl_data*, i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
