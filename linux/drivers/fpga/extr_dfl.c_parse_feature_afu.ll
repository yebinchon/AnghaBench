; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl.c_parse_feature_afu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl.c_parse_feature_afu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.build_feature_devs_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dfl_fpga_enum_dfl = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"this AFU does not belong to any FIU.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"AFU belonging to FIU %s is not supported yet.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.build_feature_devs_info*, %struct.dfl_fpga_enum_dfl*, i32)* @parse_feature_afu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_feature_afu(%struct.build_feature_devs_info* %0, %struct.dfl_fpga_enum_dfl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.build_feature_devs_info*, align 8
  %6 = alloca %struct.dfl_fpga_enum_dfl*, align 8
  %7 = alloca i32, align 4
  store %struct.build_feature_devs_info* %0, %struct.build_feature_devs_info** %5, align 8
  store %struct.dfl_fpga_enum_dfl* %1, %struct.dfl_fpga_enum_dfl** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.build_feature_devs_info*, %struct.build_feature_devs_info** %5, align 8
  %9 = getelementptr inbounds %struct.build_feature_devs_info, %struct.build_feature_devs_info* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = load %struct.build_feature_devs_info*, %struct.build_feature_devs_info** %5, align 8
  %14 = getelementptr inbounds %struct.build_feature_devs_info, %struct.build_feature_devs_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %40

19:                                               ; preds = %3
  %20 = load %struct.build_feature_devs_info*, %struct.build_feature_devs_info** %5, align 8
  %21 = getelementptr inbounds %struct.build_feature_devs_info, %struct.build_feature_devs_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @feature_dev_id_type(%struct.TYPE_2__* %22)
  switch i32 %23, label %29 [
    i32 128, label %24
  ]

24:                                               ; preds = %19
  %25 = load %struct.build_feature_devs_info*, %struct.build_feature_devs_info** %5, align 8
  %26 = load %struct.dfl_fpga_enum_dfl*, %struct.dfl_fpga_enum_dfl** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @parse_feature_port_afu(%struct.build_feature_devs_info* %25, %struct.dfl_fpga_enum_dfl* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %40

29:                                               ; preds = %19
  %30 = load %struct.build_feature_devs_info*, %struct.build_feature_devs_info** %5, align 8
  %31 = getelementptr inbounds %struct.build_feature_devs_info, %struct.build_feature_devs_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.build_feature_devs_info*, %struct.build_feature_devs_info** %5, align 8
  %34 = getelementptr inbounds %struct.build_feature_devs_info, %struct.build_feature_devs_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_info(i32 %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %24, %12
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @feature_dev_id_type(%struct.TYPE_2__*) #1

declare dso_local i32 @parse_feature_port_afu(%struct.build_feature_devs_info*, %struct.dfl_fpga_enum_dfl*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
