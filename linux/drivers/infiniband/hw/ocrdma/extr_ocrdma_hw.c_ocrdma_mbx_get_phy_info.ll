; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_get_phy_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_get_phy_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.ocrdma_mqe = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.ocrdma_get_phy_info_rsp = type { i32, i32 }
%struct.ocrdma_mbx_hdr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_CMD_PHY_DETAILS = common dso_local global i32 0, align 4
@OCRDMA_SUBSYS_COMMON = common dso_local global i32 0, align 4
@OCRDMA_PHY_TYPE_MASK = common dso_local global i32 0, align 4
@OCRDMA_IF_TYPE_MASK = common dso_local global i32 0, align 4
@OCRDMA_IF_TYPE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_ASPEED_SUPP_MASK = common dso_local global i32 0, align 4
@OCRDMA_FSPEED_SUPP_MASK = common dso_local global i32 0, align 4
@OCRDMA_FSPEED_SUPP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*)* @ocrdma_mbx_get_phy_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_mbx_get_phy_info(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocrdma_mqe*, align 8
  %6 = alloca %struct.ocrdma_get_phy_info_rsp*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @OCRDMA_CMD_PHY_DETAILS, align 4
  %10 = call %struct.ocrdma_mqe* @ocrdma_init_emb_mqe(i32 %9, i32 8)
  store %struct.ocrdma_mqe* %10, %struct.ocrdma_mqe** %5, align 8
  %11 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %5, align 8
  %12 = icmp ne %struct.ocrdma_mqe* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %74

15:                                               ; preds = %1
  %16 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %5, align 8
  %17 = getelementptr inbounds %struct.ocrdma_mqe, %struct.ocrdma_mqe* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = bitcast i32* %20 to %struct.ocrdma_mbx_hdr*
  %22 = load i32, i32* @OCRDMA_CMD_PHY_DETAILS, align 4
  %23 = load i32, i32* @OCRDMA_SUBSYS_COMMON, align 4
  %24 = call i32 @ocrdma_init_mch(%struct.ocrdma_mbx_hdr* %21, i32 %22, i32 %23, i32 8)
  %25 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %26 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %5, align 8
  %27 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %25, %struct.ocrdma_mqe* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  br label %70

31:                                               ; preds = %15
  %32 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %5, align 8
  %33 = bitcast %struct.ocrdma_mqe* %32 to %struct.ocrdma_get_phy_info_rsp*
  store %struct.ocrdma_get_phy_info_rsp* %33, %struct.ocrdma_get_phy_info_rsp** %6, align 8
  %34 = load %struct.ocrdma_get_phy_info_rsp*, %struct.ocrdma_get_phy_info_rsp** %6, align 8
  %35 = getelementptr inbounds %struct.ocrdma_get_phy_info_rsp, %struct.ocrdma_get_phy_info_rsp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @OCRDMA_PHY_TYPE_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %40 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.ocrdma_get_phy_info_rsp*, %struct.ocrdma_get_phy_info_rsp** %6, align 8
  %43 = getelementptr inbounds %struct.ocrdma_get_phy_info_rsp, %struct.ocrdma_get_phy_info_rsp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @OCRDMA_IF_TYPE_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @OCRDMA_IF_TYPE_SHIFT, align 4
  %48 = ashr i32 %46, %47
  %49 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %50 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.ocrdma_get_phy_info_rsp*, %struct.ocrdma_get_phy_info_rsp** %6, align 8
  %53 = getelementptr inbounds %struct.ocrdma_get_phy_info_rsp, %struct.ocrdma_get_phy_info_rsp* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @OCRDMA_ASPEED_SUPP_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %58 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 4
  %60 = load %struct.ocrdma_get_phy_info_rsp*, %struct.ocrdma_get_phy_info_rsp** %6, align 8
  %61 = getelementptr inbounds %struct.ocrdma_get_phy_info_rsp, %struct.ocrdma_get_phy_info_rsp* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @OCRDMA_FSPEED_SUPP_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @OCRDMA_FSPEED_SUPP_SHIFT, align 4
  %66 = ashr i32 %64, %65
  %67 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %68 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 4
  br label %70

70:                                               ; preds = %31, %30
  %71 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %5, align 8
  %72 = call i32 @kfree(%struct.ocrdma_mqe* %71)
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %70, %13
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.ocrdma_mqe* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @ocrdma_init_mch(%struct.ocrdma_mbx_hdr*, i32, i32, i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @kfree(%struct.ocrdma_mqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
