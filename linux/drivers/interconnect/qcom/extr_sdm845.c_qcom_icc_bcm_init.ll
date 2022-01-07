; ModuleID = '/home/carl/AnghaBench/linux/drivers/interconnect/qcom/extr_sdm845.c_qcom_icc_bcm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/interconnect/qcom/extr_sdm845.c_qcom_icc_bcm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_icc_bcm = type { i32, %struct.qcom_icc_node**, %struct.TYPE_2__, i32, i32 }
%struct.qcom_icc_node = type { i64, %struct.qcom_icc_bcm** }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.bcm_db = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"%s could not find RPMh address\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s command db read error (%ld)\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"%s command db missing or partial aux data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_icc_bcm*, %struct.device*)* @qcom_icc_bcm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_icc_bcm_init(%struct.qcom_icc_bcm* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcom_icc_bcm*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.qcom_icc_node*, align 8
  %7 = alloca %struct.bcm_db*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.qcom_icc_bcm* %0, %struct.qcom_icc_bcm** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %10 = load %struct.qcom_icc_bcm*, %struct.qcom_icc_bcm** %4, align 8
  %11 = getelementptr inbounds %struct.qcom_icc_bcm, %struct.qcom_icc_bcm* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @cmd_db_read_addr(i32 %12)
  %14 = load %struct.qcom_icc_bcm*, %struct.qcom_icc_bcm** %4, align 8
  %15 = getelementptr inbounds %struct.qcom_icc_bcm, %struct.qcom_icc_bcm* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load %struct.qcom_icc_bcm*, %struct.qcom_icc_bcm** %4, align 8
  %17 = getelementptr inbounds %struct.qcom_icc_bcm, %struct.qcom_icc_bcm* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load %struct.qcom_icc_bcm*, %struct.qcom_icc_bcm** %4, align 8
  %23 = getelementptr inbounds %struct.qcom_icc_bcm, %struct.qcom_icc_bcm* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %114

28:                                               ; preds = %2
  %29 = load %struct.qcom_icc_bcm*, %struct.qcom_icc_bcm** %4, align 8
  %30 = getelementptr inbounds %struct.qcom_icc_bcm, %struct.qcom_icc_bcm* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.bcm_db* @cmd_db_read_aux_data(i32 %31, i64* %8)
  store %struct.bcm_db* %32, %struct.bcm_db** %7, align 8
  %33 = load %struct.bcm_db*, %struct.bcm_db** %7, align 8
  %34 = call i64 @IS_ERR(%struct.bcm_db* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = load %struct.qcom_icc_bcm*, %struct.qcom_icc_bcm** %4, align 8
  %39 = getelementptr inbounds %struct.qcom_icc_bcm, %struct.qcom_icc_bcm* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.bcm_db*, %struct.bcm_db** %7, align 8
  %42 = call i32 @PTR_ERR(%struct.bcm_db* %41)
  %43 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %42)
  %44 = load %struct.bcm_db*, %struct.bcm_db** %7, align 8
  %45 = call i32 @PTR_ERR(%struct.bcm_db* %44)
  store i32 %45, i32* %3, align 4
  br label %114

46:                                               ; preds = %28
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %46
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load %struct.qcom_icc_bcm*, %struct.qcom_icc_bcm** %4, align 8
  %52 = getelementptr inbounds %struct.qcom_icc_bcm, %struct.qcom_icc_bcm* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %114

57:                                               ; preds = %46
  %58 = load %struct.bcm_db*, %struct.bcm_db** %7, align 8
  %59 = getelementptr inbounds %struct.bcm_db, %struct.bcm_db* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le32_to_cpu(i32 %60)
  %62 = load %struct.qcom_icc_bcm*, %struct.qcom_icc_bcm** %4, align 8
  %63 = getelementptr inbounds %struct.qcom_icc_bcm, %struct.qcom_icc_bcm* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  store i32 %61, i32* %64, align 4
  %65 = load %struct.bcm_db*, %struct.bcm_db** %7, align 8
  %66 = getelementptr inbounds %struct.bcm_db, %struct.bcm_db* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le16_to_cpu(i32 %67)
  %69 = load %struct.qcom_icc_bcm*, %struct.qcom_icc_bcm** %4, align 8
  %70 = getelementptr inbounds %struct.qcom_icc_bcm, %struct.qcom_icc_bcm* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 8
  %72 = load %struct.bcm_db*, %struct.bcm_db** %7, align 8
  %73 = getelementptr inbounds %struct.bcm_db, %struct.bcm_db* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.qcom_icc_bcm*, %struct.qcom_icc_bcm** %4, align 8
  %76 = getelementptr inbounds %struct.qcom_icc_bcm, %struct.qcom_icc_bcm* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load %struct.bcm_db*, %struct.bcm_db** %7, align 8
  %79 = getelementptr inbounds %struct.bcm_db, %struct.bcm_db* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.qcom_icc_bcm*, %struct.qcom_icc_bcm** %4, align 8
  %82 = getelementptr inbounds %struct.qcom_icc_bcm, %struct.qcom_icc_bcm* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %110, %57
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.qcom_icc_bcm*, %struct.qcom_icc_bcm** %4, align 8
  %87 = getelementptr inbounds %struct.qcom_icc_bcm, %struct.qcom_icc_bcm* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %84
  %91 = load %struct.qcom_icc_bcm*, %struct.qcom_icc_bcm** %4, align 8
  %92 = getelementptr inbounds %struct.qcom_icc_bcm, %struct.qcom_icc_bcm* %91, i32 0, i32 1
  %93 = load %struct.qcom_icc_node**, %struct.qcom_icc_node*** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.qcom_icc_node*, %struct.qcom_icc_node** %93, i64 %95
  %97 = load %struct.qcom_icc_node*, %struct.qcom_icc_node** %96, align 8
  store %struct.qcom_icc_node* %97, %struct.qcom_icc_node** %6, align 8
  %98 = load %struct.qcom_icc_bcm*, %struct.qcom_icc_bcm** %4, align 8
  %99 = load %struct.qcom_icc_node*, %struct.qcom_icc_node** %6, align 8
  %100 = getelementptr inbounds %struct.qcom_icc_node, %struct.qcom_icc_node* %99, i32 0, i32 1
  %101 = load %struct.qcom_icc_bcm**, %struct.qcom_icc_bcm*** %100, align 8
  %102 = load %struct.qcom_icc_node*, %struct.qcom_icc_node** %6, align 8
  %103 = getelementptr inbounds %struct.qcom_icc_node, %struct.qcom_icc_node* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.qcom_icc_bcm*, %struct.qcom_icc_bcm** %101, i64 %104
  store %struct.qcom_icc_bcm* %98, %struct.qcom_icc_bcm** %105, align 8
  %106 = load %struct.qcom_icc_node*, %struct.qcom_icc_node** %6, align 8
  %107 = getelementptr inbounds %struct.qcom_icc_node, %struct.qcom_icc_node* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %107, align 8
  br label %110

110:                                              ; preds = %90
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %84

113:                                              ; preds = %84
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %49, %36, %20
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @cmd_db_read_addr(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local %struct.bcm_db* @cmd_db_read_aux_data(i32, i64*) #1

declare dso_local i64 @IS_ERR(%struct.bcm_db*) #1

declare dso_local i32 @PTR_ERR(%struct.bcm_db*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
