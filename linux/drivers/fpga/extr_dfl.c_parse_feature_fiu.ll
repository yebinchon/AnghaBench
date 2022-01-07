; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl.c_parse_feature_fiu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl.c_parse_feature_fiu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.build_feature_devs_info = type { i32 }
%struct.dfl_fpga_enum_dfl = type { i64 }

@DFH = common dso_local global i64 0, align 8
@DFH_ID = common dso_local global i32 0, align 4
@NEXT_AFU = common dso_local global i64 0, align 8
@NEXT_AFU_NEXT_DFH_OFST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No AFUs detected on FIU %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.build_feature_devs_info*, %struct.dfl_fpga_enum_dfl*, i64)* @parse_feature_fiu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_feature_fiu(%struct.build_feature_devs_info* %0, %struct.dfl_fpga_enum_dfl* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.build_feature_devs_info*, align 8
  %6 = alloca %struct.dfl_fpga_enum_dfl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.build_feature_devs_info* %0, %struct.build_feature_devs_info** %5, align 8
  store %struct.dfl_fpga_enum_dfl* %1, %struct.dfl_fpga_enum_dfl** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.dfl_fpga_enum_dfl*, %struct.dfl_fpga_enum_dfl** %6, align 8
  %13 = getelementptr inbounds %struct.dfl_fpga_enum_dfl, %struct.dfl_fpga_enum_dfl* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* @DFH, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readq(i64 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @DFH_ID, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @FIELD_GET(i32 %20, i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load %struct.build_feature_devs_info*, %struct.build_feature_devs_info** %5, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @dfh_id_to_type(i64 %24)
  %26 = load %struct.dfl_fpga_enum_dfl*, %struct.dfl_fpga_enum_dfl** %6, align 8
  %27 = getelementptr inbounds %struct.dfl_fpga_enum_dfl, %struct.dfl_fpga_enum_dfl* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @build_info_create_dev(%struct.build_feature_devs_info* %23, i32 %25, i64 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %4, align 4
  br label %73

36:                                               ; preds = %3
  %37 = load %struct.build_feature_devs_info*, %struct.build_feature_devs_info** %5, align 8
  %38 = load %struct.dfl_fpga_enum_dfl*, %struct.dfl_fpga_enum_dfl** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @create_feature_instance(%struct.build_feature_devs_info* %37, %struct.dfl_fpga_enum_dfl* %38, i64 %39, i32 0, i32 0)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %4, align 4
  br label %73

45:                                               ; preds = %36
  %46 = load %struct.dfl_fpga_enum_dfl*, %struct.dfl_fpga_enum_dfl** %6, align 8
  %47 = getelementptr inbounds %struct.dfl_fpga_enum_dfl, %struct.dfl_fpga_enum_dfl* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i64, i64* @NEXT_AFU, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @readq(i64 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* @NEXT_AFU_NEXT_DFH_OFST, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i64 @FIELD_GET(i32 %54, i32 %55)
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %45
  %60 = load %struct.build_feature_devs_info*, %struct.build_feature_devs_info** %5, align 8
  %61 = load %struct.dfl_fpga_enum_dfl*, %struct.dfl_fpga_enum_dfl** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %9, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @parse_feature_afu(%struct.build_feature_devs_info* %60, %struct.dfl_fpga_enum_dfl* %61, i64 %64)
  store i32 %65, i32* %4, align 4
  br label %73

66:                                               ; preds = %45
  %67 = load %struct.build_feature_devs_info*, %struct.build_feature_devs_info** %5, align 8
  %68 = getelementptr inbounds %struct.build_feature_devs_info, %struct.build_feature_devs_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @dev_dbg(i32 %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %70)
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %66, %59, %43, %34
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @readq(i64) #1

declare dso_local i64 @FIELD_GET(i32, i32) #1

declare dso_local i32 @build_info_create_dev(%struct.build_feature_devs_info*, i32, i64) #1

declare dso_local i32 @dfh_id_to_type(i64) #1

declare dso_local i32 @create_feature_instance(%struct.build_feature_devs_info*, %struct.dfl_fpga_enum_dfl*, i64, i32, i32) #1

declare dso_local i32 @parse_feature_afu(%struct.build_feature_devs_info*, %struct.dfl_fpga_enum_dfl*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
