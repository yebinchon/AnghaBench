; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl.c_parse_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl.c_parse_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.build_feature_devs_info = type { i32 }
%struct.dfl_fpga_enum_dfl = type { i64 }

@DFH = common dso_local global i64 0, align 8
@DFH_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Feature Type %x is not supported.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.build_feature_devs_info*, %struct.dfl_fpga_enum_dfl*, i64)* @parse_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_feature(%struct.build_feature_devs_info* %0, %struct.dfl_fpga_enum_dfl* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.build_feature_devs_info*, align 8
  %6 = alloca %struct.dfl_fpga_enum_dfl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.build_feature_devs_info* %0, %struct.build_feature_devs_info** %5, align 8
  store %struct.dfl_fpga_enum_dfl* %1, %struct.dfl_fpga_enum_dfl** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.dfl_fpga_enum_dfl*, %struct.dfl_fpga_enum_dfl** %6, align 8
  %11 = getelementptr inbounds %struct.dfl_fpga_enum_dfl, %struct.dfl_fpga_enum_dfl* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i64, i64* @DFH, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readq(i64 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @DFH_TYPE, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @FIELD_GET(i32 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %37 [
    i32 130, label %22
    i32 128, label %27
    i32 129, label %32
  ]

22:                                               ; preds = %3
  %23 = load %struct.build_feature_devs_info*, %struct.build_feature_devs_info** %5, align 8
  %24 = load %struct.dfl_fpga_enum_dfl*, %struct.dfl_fpga_enum_dfl** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @parse_feature_afu(%struct.build_feature_devs_info* %23, %struct.dfl_fpga_enum_dfl* %24, i64 %25)
  store i32 %26, i32* %4, align 4
  br label %44

27:                                               ; preds = %3
  %28 = load %struct.build_feature_devs_info*, %struct.build_feature_devs_info** %5, align 8
  %29 = load %struct.dfl_fpga_enum_dfl*, %struct.dfl_fpga_enum_dfl** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @parse_feature_private(%struct.build_feature_devs_info* %28, %struct.dfl_fpga_enum_dfl* %29, i64 %30)
  store i32 %31, i32* %4, align 4
  br label %44

32:                                               ; preds = %3
  %33 = load %struct.build_feature_devs_info*, %struct.build_feature_devs_info** %5, align 8
  %34 = load %struct.dfl_fpga_enum_dfl*, %struct.dfl_fpga_enum_dfl** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @parse_feature_fiu(%struct.build_feature_devs_info* %33, %struct.dfl_fpga_enum_dfl* %34, i64 %35)
  store i32 %36, i32* %4, align 4
  br label %44

37:                                               ; preds = %3
  %38 = load %struct.build_feature_devs_info*, %struct.build_feature_devs_info** %5, align 8
  %39 = getelementptr inbounds %struct.build_feature_devs_info, %struct.build_feature_devs_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @dev_info(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %32, %27, %22
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @readq(i64) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @parse_feature_afu(%struct.build_feature_devs_info*, %struct.dfl_fpga_enum_dfl*, i64) #1

declare dso_local i32 @parse_feature_private(%struct.build_feature_devs_info*, %struct.dfl_fpga_enum_dfl*, i64) #1

declare dso_local i32 @parse_feature_fiu(%struct.build_feature_devs_info*, %struct.dfl_fpga_enum_dfl*, i64) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
