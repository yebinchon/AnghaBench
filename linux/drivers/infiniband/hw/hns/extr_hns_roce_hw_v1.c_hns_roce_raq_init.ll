; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_raq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_raq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hns_roce_v1_priv = type { %struct.hns_roce_raq_table }
%struct.hns_roce_raq_table = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HNS_ROCE_V1_RAQ_SIZE = common dso_local global i32 0, align 4
@ROCEE_EXT_RAQ_REG = common dso_local global i32 0, align 4
@HNS_ROCE_V1_RAQ_ENTRY = common dso_local global i32 0, align 4
@ROCEE_EXT_RAQ_H_REG = common dso_local global i32 0, align 4
@ROCEE_EXT_RAQ_H_EXT_RAQ_SHIFT_M = common dso_local global i32 0, align 4
@ROCEE_EXT_RAQ_H_EXT_RAQ_SHIFT_S = common dso_local global i32 0, align 4
@ROCEE_EXT_RAQ_H_EXT_RAQ_BA_H_M = common dso_local global i32 0, align 4
@ROCEE_EXT_RAQ_H_EXT_RAQ_BA_H_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Configure raq_shift 0x%x.\0A\00", align 1
@ROCEE_RAQ_WL_REG = common dso_local global i32 0, align 4
@ROCEE_RAQ_WL_ROCEE_RAQ_WL_M = common dso_local global i32 0, align 4
@ROCEE_RAQ_WL_ROCEE_RAQ_WL_S = common dso_local global i32 0, align 4
@HNS_ROCE_V1_EXT_RAQ_WF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Configure raq_wl 0x%x.\0A\00", align 1
@ROCEE_WRMS_POL_TIME_INTERVAL_REG = common dso_local global i32 0, align 4
@ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_POL_TIME_INTERVAL_M = common dso_local global i32 0, align 4
@ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_POL_TIME_INTERVAL_S = common dso_local global i32 0, align 4
@POL_TIME_INTERVAL_VAL = common dso_local global i32 0, align 4
@ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_EXT_RAQ_MODE = common dso_local global i32 0, align 4
@ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_RAQ_TIMEOUT_CHK_CFG_M = common dso_local global i32 0, align 4
@ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_RAQ_TIMEOUT_CHK_CFG_S = common dso_local global i32 0, align 4
@ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_RAQ_TIMEOUT_CHK_EN_S = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Configure WrmsPolTimeInterval 0x%x.\0A\00", align 1
@ROCEE_GLB_CFG_REG = common dso_local global i32 0, align 4
@ROCEE_GLB_CFG_TRP_RAQ_DROP_EN_S = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Configure GlbCfg = 0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*)* @hns_roce_raq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_raq_init(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hns_roce_v1_priv*, align 8
  %10 = alloca %struct.hns_roce_raq_table*, align 8
  %11 = alloca %struct.device*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %11, align 8
  %16 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %17 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.hns_roce_v1_priv*
  store %struct.hns_roce_v1_priv* %19, %struct.hns_roce_v1_priv** %9, align 8
  %20 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %9, align 8
  %21 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %20, i32 0, i32 0
  store %struct.hns_roce_raq_table* %21, %struct.hns_roce_raq_table** %10, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.TYPE_5__* @kzalloc(i32 8, i32 %22)
  %24 = load %struct.hns_roce_raq_table*, %struct.hns_roce_raq_table** %10, align 8
  %25 = getelementptr inbounds %struct.hns_roce_raq_table, %struct.hns_roce_raq_table* %24, i32 0, i32 0
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %25, align 8
  %26 = load %struct.hns_roce_raq_table*, %struct.hns_roce_raq_table** %10, align 8
  %27 = getelementptr inbounds %struct.hns_roce_raq_table, %struct.hns_roce_raq_table* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %170

33:                                               ; preds = %1
  %34 = load %struct.device*, %struct.device** %11, align 8
  %35 = load i32, i32* @HNS_ROCE_V1_RAQ_SIZE, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32 @dma_alloc_coherent(%struct.device* %34, i32 %35, i32* %8, i32 %36)
  %38 = load %struct.hns_roce_raq_table*, %struct.hns_roce_raq_table** %10, align 8
  %39 = getelementptr inbounds %struct.hns_roce_raq_table, %struct.hns_roce_raq_table* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  %42 = load %struct.hns_roce_raq_table*, %struct.hns_roce_raq_table** %10, align 8
  %43 = getelementptr inbounds %struct.hns_roce_raq_table, %struct.hns_roce_raq_table* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %33
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %164

51:                                               ; preds = %33
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.hns_roce_raq_table*, %struct.hns_roce_raq_table** %10, align 8
  %54 = getelementptr inbounds %struct.hns_roce_raq_table, %struct.hns_roce_raq_table* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %58 = load i32, i32* @ROCEE_EXT_RAQ_REG, align 4
  %59 = load %struct.hns_roce_raq_table*, %struct.hns_roce_raq_table** %10, align 8
  %60 = getelementptr inbounds %struct.hns_roce_raq_table, %struct.hns_roce_raq_table* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 12
  %65 = call i32 @roce_write(%struct.hns_roce_dev* %57, i32 %58, i32 %64)
  %66 = load i32, i32* @HNS_ROCE_V1_RAQ_SIZE, align 4
  %67 = load i32, i32* @HNS_ROCE_V1_RAQ_ENTRY, align 4
  %68 = sdiv i32 %66, %67
  %69 = call i32 @ilog2(i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %71 = load i32, i32* @ROCEE_EXT_RAQ_H_REG, align 4
  %72 = call i32 @roce_read(%struct.hns_roce_dev* %70, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @cpu_to_le32(i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @ROCEE_EXT_RAQ_H_EXT_RAQ_SHIFT_M, align 4
  %77 = load i32, i32* @ROCEE_EXT_RAQ_H_EXT_RAQ_SHIFT_S, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @roce_set_field(i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @ROCEE_EXT_RAQ_H_EXT_RAQ_BA_H_M, align 4
  %82 = load i32, i32* @ROCEE_EXT_RAQ_H_EXT_RAQ_BA_H_S, align 4
  %83 = load %struct.hns_roce_raq_table*, %struct.hns_roce_raq_table** %10, align 8
  %84 = getelementptr inbounds %struct.hns_roce_raq_table, %struct.hns_roce_raq_table* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = ashr i32 %87, 44
  %89 = call i32 @roce_set_field(i32 %80, i32 %81, i32 %82, i32 %88)
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @le32_to_cpu(i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %93 = load i32, i32* @ROCEE_EXT_RAQ_H_REG, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @roce_write(%struct.hns_roce_dev* %92, i32 %93, i32 %94)
  %96 = load %struct.device*, %struct.device** %11, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @dev_dbg(%struct.device* %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %100 = load i32, i32* @ROCEE_RAQ_WL_REG, align 4
  %101 = call i32 @roce_read(%struct.hns_roce_dev* %99, i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @cpu_to_le32(i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @ROCEE_RAQ_WL_ROCEE_RAQ_WL_M, align 4
  %106 = load i32, i32* @ROCEE_RAQ_WL_ROCEE_RAQ_WL_S, align 4
  %107 = load i32, i32* @HNS_ROCE_V1_EXT_RAQ_WF, align 4
  %108 = call i32 @roce_set_field(i32 %104, i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @le32_to_cpu(i32 %109)
  store i32 %110, i32* %5, align 4
  %111 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %112 = load i32, i32* @ROCEE_RAQ_WL_REG, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @roce_write(%struct.hns_roce_dev* %111, i32 %112, i32 %113)
  %115 = load %struct.device*, %struct.device** %11, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @dev_dbg(%struct.device* %115, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %119 = load i32, i32* @ROCEE_WRMS_POL_TIME_INTERVAL_REG, align 4
  %120 = call i32 @roce_read(%struct.hns_roce_dev* %118, i32 %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @cpu_to_le32(i32 %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_POL_TIME_INTERVAL_M, align 4
  %125 = load i32, i32* @ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_POL_TIME_INTERVAL_S, align 4
  %126 = load i32, i32* @POL_TIME_INTERVAL_VAL, align 4
  %127 = call i32 @roce_set_field(i32 %123, i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_EXT_RAQ_MODE, align 4
  %130 = call i32 @roce_set_bit(i32 %128, i32 %129, i32 1)
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_RAQ_TIMEOUT_CHK_CFG_M, align 4
  %133 = load i32, i32* @ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_RAQ_TIMEOUT_CHK_CFG_S, align 4
  %134 = call i32 @roce_set_field(i32 %131, i32 %132, i32 %133, i32 2)
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_RAQ_TIMEOUT_CHK_EN_S, align 4
  %137 = call i32 @roce_set_bit(i32 %135, i32 %136, i32 1)
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @le32_to_cpu(i32 %138)
  store i32 %139, i32* %5, align 4
  %140 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %141 = load i32, i32* @ROCEE_WRMS_POL_TIME_INTERVAL_REG, align 4
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @roce_write(%struct.hns_roce_dev* %140, i32 %141, i32 %142)
  %144 = load %struct.device*, %struct.device** %11, align 8
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @dev_dbg(%struct.device* %144, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %145)
  %147 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %148 = load i32, i32* @ROCEE_GLB_CFG_REG, align 4
  %149 = call i32 @roce_read(%struct.hns_roce_dev* %147, i32 %148)
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @cpu_to_le32(i32 %150)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @ROCEE_GLB_CFG_TRP_RAQ_DROP_EN_S, align 4
  %154 = call i32 @roce_set_bit(i32 %152, i32 %153, i32 1)
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @le32_to_cpu(i32 %155)
  store i32 %156, i32* %5, align 4
  %157 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %158 = load i32, i32* @ROCEE_GLB_CFG_REG, align 4
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @roce_write(%struct.hns_roce_dev* %157, i32 %158, i32 %159)
  %161 = load %struct.device*, %struct.device** %11, align 8
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @dev_dbg(%struct.device* %161, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %162)
  store i32 0, i32* %2, align 4
  br label %170

164:                                              ; preds = %48
  %165 = load %struct.hns_roce_raq_table*, %struct.hns_roce_raq_table** %10, align 8
  %166 = getelementptr inbounds %struct.hns_roce_raq_table, %struct.hns_roce_raq_table* %165, i32 0, i32 0
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = call i32 @kfree(%struct.TYPE_5__* %167)
  %169 = load i32, i32* %4, align 4
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %164, %51, %30
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local %struct.TYPE_5__* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @roce_write(%struct.hns_roce_dev*, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @roce_read(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @roce_set_bit(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
