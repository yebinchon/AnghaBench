; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl.c_parse_feature_private.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl.c_parse_feature_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.build_feature_devs_info = type { i32, i32 }
%struct.dfl_fpga_enum_dfl = type { i64 }

@.str = private unnamed_addr constant [54 x i8] c"the private feature %llx does not belong to any AFU.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.build_feature_devs_info*, %struct.dfl_fpga_enum_dfl*, i64)* @parse_feature_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_feature_private(%struct.build_feature_devs_info* %0, %struct.dfl_fpga_enum_dfl* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.build_feature_devs_info*, align 8
  %6 = alloca %struct.dfl_fpga_enum_dfl*, align 8
  %7 = alloca i64, align 8
  store %struct.build_feature_devs_info* %0, %struct.build_feature_devs_info** %5, align 8
  store %struct.dfl_fpga_enum_dfl* %1, %struct.dfl_fpga_enum_dfl** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.build_feature_devs_info*, %struct.build_feature_devs_info** %5, align 8
  %9 = getelementptr inbounds %struct.build_feature_devs_info, %struct.build_feature_devs_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %3
  %13 = load %struct.build_feature_devs_info*, %struct.build_feature_devs_info** %5, align 8
  %14 = getelementptr inbounds %struct.build_feature_devs_info, %struct.build_feature_devs_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dfl_fpga_enum_dfl*, %struct.dfl_fpga_enum_dfl** %6, align 8
  %17 = getelementptr inbounds %struct.dfl_fpga_enum_dfl, %struct.dfl_fpga_enum_dfl* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i64 @feature_id(i64 %20)
  %22 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %30

25:                                               ; preds = %3
  %26 = load %struct.build_feature_devs_info*, %struct.build_feature_devs_info** %5, align 8
  %27 = load %struct.dfl_fpga_enum_dfl*, %struct.dfl_fpga_enum_dfl** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @create_feature_instance(%struct.build_feature_devs_info* %26, %struct.dfl_fpga_enum_dfl* %27, i64 %28, i32 0, i32 0)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %12
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i64 @feature_id(i64) #1

declare dso_local i32 @create_feature_instance(%struct.build_feature_devs_info*, %struct.dfl_fpga_enum_dfl*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
