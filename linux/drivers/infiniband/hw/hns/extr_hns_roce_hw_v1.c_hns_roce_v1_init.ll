; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@ROCEE_DMAE_USER_CFG1_REG = common dso_local global i32 0, align 4
@ROCEE_DMAE_USER_CFG1_ROCEE_CACHE_TB_CFG_M = common dso_local global i32 0, align 4
@ROCEE_DMAE_USER_CFG1_ROCEE_CACHE_TB_CFG_S = common dso_local global i32 0, align 4
@ROCEE_DMAE_USER_CFG1_ROCEE_STREAM_ID_TB_CFG_M = common dso_local global i32 0, align 4
@ROCEE_DMAE_USER_CFG1_ROCEE_STREAM_ID_TB_CFG_S = common dso_local global i32 0, align 4
@PAGES_SHIFT_16 = common dso_local global i32 0, align 4
@ROCEE_DMAE_USER_CFG2_REG = common dso_local global i32 0, align 4
@ROCEE_DMAE_USER_CFG2_ROCEE_CACHE_PKT_CFG_M = common dso_local global i32 0, align 4
@ROCEE_DMAE_USER_CFG2_ROCEE_CACHE_PKT_CFG_S = common dso_local global i32 0, align 4
@ROCEE_DMAE_USER_CFG2_ROCEE_STREAM_ID_PKT_CFG_M = common dso_local global i32 0, align 4
@ROCEE_DMAE_USER_CFG2_ROCEE_STREAM_ID_PKT_CFG_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"doorbell init failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"raq init failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"bt init failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"tptr init failed!\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"free mr init failed!\0A\00", align 1
@HNS_ROCE_PORT_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*)* @hns_roce_v1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v1_init(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  %8 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %9 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %13 = load i32, i32* @ROCEE_DMAE_USER_CFG1_REG, align 4
  %14 = call i32 @roce_read(%struct.hns_roce_dev* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @cpu_to_le32(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @ROCEE_DMAE_USER_CFG1_ROCEE_CACHE_TB_CFG_M, align 4
  %19 = load i32, i32* @ROCEE_DMAE_USER_CFG1_ROCEE_CACHE_TB_CFG_S, align 4
  %20 = call i32 @roce_set_field(i32 %17, i32 %18, i32 %19, i32 15)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ROCEE_DMAE_USER_CFG1_ROCEE_STREAM_ID_TB_CFG_M, align 4
  %23 = load i32, i32* @ROCEE_DMAE_USER_CFG1_ROCEE_STREAM_ID_TB_CFG_S, align 4
  %24 = load i32, i32* @PAGES_SHIFT_16, align 4
  %25 = shl i32 1, %24
  %26 = call i32 @roce_set_field(i32 %21, i32 %22, i32 %23, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %30 = load i32, i32* @ROCEE_DMAE_USER_CFG1_REG, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @roce_write(%struct.hns_roce_dev* %29, i32 %30, i32 %31)
  %33 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %34 = load i32, i32* @ROCEE_DMAE_USER_CFG2_REG, align 4
  %35 = call i32 @roce_read(%struct.hns_roce_dev* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @cpu_to_le32(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @ROCEE_DMAE_USER_CFG2_ROCEE_CACHE_PKT_CFG_M, align 4
  %40 = load i32, i32* @ROCEE_DMAE_USER_CFG2_ROCEE_CACHE_PKT_CFG_S, align 4
  %41 = call i32 @roce_set_field(i32 %38, i32 %39, i32 %40, i32 15)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @ROCEE_DMAE_USER_CFG2_ROCEE_STREAM_ID_PKT_CFG_M, align 4
  %44 = load i32, i32* @ROCEE_DMAE_USER_CFG2_ROCEE_STREAM_ID_PKT_CFG_S, align 4
  %45 = load i32, i32* @PAGES_SHIFT_16, align 4
  %46 = shl i32 1, %45
  %47 = call i32 @roce_set_field(i32 %42, i32 %43, i32 %44, i32 %46)
  %48 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %49 = call i32 @hns_roce_db_init(%struct.hns_roce_dev* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %1
  %53 = load %struct.device*, %struct.device** %7, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %105

56:                                               ; preds = %1
  %57 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %58 = call i32 @hns_roce_raq_init(%struct.hns_roce_dev* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.device*, %struct.device** %7, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %101

64:                                               ; preds = %56
  %65 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %66 = call i32 @hns_roce_bt_init(%struct.hns_roce_dev* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.device*, %struct.device** %7, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %98

72:                                               ; preds = %64
  %73 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %74 = call i32 @hns_roce_tptr_init(%struct.hns_roce_dev* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.device*, %struct.device** %7, align 8
  %79 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %95

80:                                               ; preds = %72
  %81 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %82 = call i32 @hns_roce_free_mr_init(%struct.hns_roce_dev* %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.device*, %struct.device** %7, align 8
  %87 = call i32 @dev_err(%struct.device* %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %92

88:                                               ; preds = %80
  %89 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %90 = load i32, i32* @HNS_ROCE_PORT_UP, align 4
  %91 = call i32 @hns_roce_port_enable(%struct.hns_roce_dev* %89, i32 %90)
  store i32 0, i32* %2, align 4
  br label %105

92:                                               ; preds = %85
  %93 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %94 = call i32 @hns_roce_tptr_free(%struct.hns_roce_dev* %93)
  br label %95

95:                                               ; preds = %92, %77
  %96 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %97 = call i32 @hns_roce_bt_free(%struct.hns_roce_dev* %96)
  br label %98

98:                                               ; preds = %95, %69
  %99 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %100 = call i32 @hns_roce_raq_free(%struct.hns_roce_dev* %99)
  br label %101

101:                                              ; preds = %98, %61
  %102 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %103 = call i32 @hns_roce_db_free(%struct.hns_roce_dev* %102)
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %101, %88, %52
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @roce_read(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @roce_write(%struct.hns_roce_dev*, i32, i32) #1

declare dso_local i32 @hns_roce_db_init(%struct.hns_roce_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @hns_roce_raq_init(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_bt_init(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_tptr_init(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_free_mr_init(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_port_enable(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @hns_roce_tptr_free(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_bt_free(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_raq_free(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_db_free(%struct.hns_roce_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
