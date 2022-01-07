; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmpex.c_ibmpex_ver_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmpex.c_ibmpex_ver_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmpex_bmc_data = type { i32, i32, i32*, i32, i32, i32, i64, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@PEX_GET_VERSION = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Found BMC with sensor interface v%d.%d %d-%02d-%02d on interface %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmpex_bmc_data*)* @ibmpex_ver_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmpex_ver_check(%struct.ibmpex_bmc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibmpex_bmc_data*, align 8
  store %struct.ibmpex_bmc_data* %0, %struct.ibmpex_bmc_data** %3, align 8
  %4 = load i32, i32* @PEX_GET_VERSION, align 4
  %5 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %6 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %5, i32 0, i32 9
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 %4, i32* %8, align 4
  %9 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %10 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %9, i32 0, i32 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %13 = call i32 @ibmpex_send_message(%struct.ibmpex_bmc_data* %12)
  %14 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %15 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %14, i32 0, i32 7
  %16 = call i32 @wait_for_completion(i32* %15)
  %17 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %18 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %23 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 6
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %1
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %71

29:                                               ; preds = %21
  %30 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %31 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %36 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %38 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %43 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %45 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %48 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %51 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %54 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @extract_value(i32* %55, i32 2)
  %57 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %58 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %63 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %68 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_info(i32 %46, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i32 %56, i32 %61, i32 %66, i32 %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %29, %26
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @ibmpex_send_message(%struct.ibmpex_bmc_data*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @extract_value(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
