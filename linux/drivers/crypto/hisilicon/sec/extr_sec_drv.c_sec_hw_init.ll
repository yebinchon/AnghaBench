; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_dev_info = type { i32, i64*, i32 }
%struct.iommu_domain = type { i32 }

@__IOMMU_DOMAIN_PAGING = common dso_local global i32 0, align 4
@SEC_SAA = common dso_local global i64 0, align 8
@SEC_CLK_EN_REG = common dso_local global i64 0, align 8
@SEC_FSM_MAX_CNT_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Failed to set ipv4 hashmask %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SEC_Q_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sec_dev_info*)* @sec_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_hw_init(%struct.sec_dev_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sec_dev_info*, align 8
  %4 = alloca %struct.iommu_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [10 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sec_dev_info* %0, %struct.sec_dev_info** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = bitcast [10 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 40, i1 false)
  %10 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %11 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.iommu_domain* @iommu_get_domain_for_dev(i32 %12)
  store %struct.iommu_domain* %13, %struct.iommu_domain** %4, align 8
  %14 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %15 = icmp ne %struct.iommu_domain* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %18 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @__IOMMU_DOMAIN_PAGING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %25 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %24, i32 0, i32 0
  store i32 5, i32* %25, align 8
  br label %29

26:                                               ; preds = %16, %1
  %27 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %28 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %27, i32 0, i32 0
  store i32 10, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %31 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = call i32 @GENMASK(i32 %33, i32 0)
  %35 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %36 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* @SEC_SAA, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SEC_CLK_EN_REG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel_relaxed(i32 %34, i64 %42)
  %44 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %45 = call i32 @sec_bd_endian_little(%struct.sec_dev_info* %44)
  %46 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %47 = call i32 @sec_cache_config(%struct.sec_dev_info* %46)
  %48 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %49 = call i32 @sec_data_axiwr_otsd_cfg(%struct.sec_dev_info* %48, i32 7)
  %50 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %51 = call i32 @sec_data_axird_otsd_cfg(%struct.sec_dev_info* %50, i32 7)
  %52 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %53 = call i32 @sec_clk_gate_en(%struct.sec_dev_info* %52, i32 1)
  %54 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %55 = call i32 @sec_comm_cnt_cfg(%struct.sec_dev_info* %54, i32 0)
  %56 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %57 = call i32 @sec_commsnap_en(%struct.sec_dev_info* %56, i32 0)
  %58 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %59 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* @SEC_SAA, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SEC_FSM_MAX_CNT_REG, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel_relaxed(i32 -1, i64 %65)
  %67 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @sec_ipv4_hashmask(%struct.sec_dev_info* %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %29
  %73 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %74 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %136

80:                                               ; preds = %29
  %81 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %82 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %83 = call i32 @sec_ipv6_hashmask(%struct.sec_dev_info* %81, i32* %82)
  %84 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %85 = call i32 @sec_set_dbg_bd_cfg(%struct.sec_dev_info* %84, i32 0)
  %86 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %87 = icmp ne %struct.iommu_domain* %86, null
  br i1 %87, label %88, label %118

88:                                               ; preds = %80
  %89 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %90 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @__IOMMU_DOMAIN_PAGING, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %118

95:                                               ; preds = %88
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %114, %95
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @SEC_Q_NUM, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %96
  %101 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @sec_streamid(%struct.sec_dev_info* %101, i32 %102)
  %104 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %105 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* @SEC_SAA, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i64 @SEC_Q_WEIGHT_CFG_REG(i32 %110)
  %112 = add nsw i64 %109, %111
  %113 = call i32 @writel_relaxed(i32 63, i64 %112)
  br label %114

114:                                              ; preds = %100
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %96

117:                                              ; preds = %96
  br label %118

118:                                              ; preds = %117, %88, %80
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %132, %118
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %122 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %119
  %126 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @sec_saa_getqm_en(%struct.sec_dev_info* %126, i32 %127, i32 1)
  %129 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @sec_saa_int_mask(%struct.sec_dev_info* %129, i32 %130, i32 0)
  br label %132

132:                                              ; preds = %125
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %119

135:                                              ; preds = %119
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %72
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.iommu_domain* @iommu_get_domain_for_dev(i32) #2

declare dso_local i32 @writel_relaxed(i32, i64) #2

declare dso_local i32 @GENMASK(i32, i32) #2

declare dso_local i32 @sec_bd_endian_little(%struct.sec_dev_info*) #2

declare dso_local i32 @sec_cache_config(%struct.sec_dev_info*) #2

declare dso_local i32 @sec_data_axiwr_otsd_cfg(%struct.sec_dev_info*, i32) #2

declare dso_local i32 @sec_data_axird_otsd_cfg(%struct.sec_dev_info*, i32) #2

declare dso_local i32 @sec_clk_gate_en(%struct.sec_dev_info*, i32) #2

declare dso_local i32 @sec_comm_cnt_cfg(%struct.sec_dev_info*, i32) #2

declare dso_local i32 @sec_commsnap_en(%struct.sec_dev_info*, i32) #2

declare dso_local i32 @sec_ipv4_hashmask(%struct.sec_dev_info*, i32) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @sec_ipv6_hashmask(%struct.sec_dev_info*, i32*) #2

declare dso_local i32 @sec_set_dbg_bd_cfg(%struct.sec_dev_info*, i32) #2

declare dso_local i32 @sec_streamid(%struct.sec_dev_info*, i32) #2

declare dso_local i64 @SEC_Q_WEIGHT_CFG_REG(i32) #2

declare dso_local i32 @sec_saa_getqm_en(%struct.sec_dev_info*, i32, i32) #2

declare dso_local i32 @sec_saa_int_mask(%struct.sec_dev_info*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
