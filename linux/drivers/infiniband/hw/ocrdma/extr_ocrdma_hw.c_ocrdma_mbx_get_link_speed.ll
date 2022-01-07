; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_get_link_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_get_link_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_get_link_speed_rsp = type { i32, i32 }
%struct.ocrdma_mqe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.ocrdma_mbx_hdr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_CMD_QUERY_NTWK_LINK_CONFIG_V1 = common dso_local global i32 0, align 4
@OCRDMA_SUBSYS_COMMON = common dso_local global i32 0, align 4
@OCRDMA_PHY_PS_MASK = common dso_local global i32 0, align 4
@OCRDMA_PHY_PS_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_LINK_ST_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_mbx_get_link_speed(%struct.ocrdma_dev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocrdma_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocrdma_get_link_speed_rsp*, align 8
  %10 = alloca %struct.ocrdma_mqe*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @OCRDMA_CMD_QUERY_NTWK_LINK_CONFIG_V1, align 4
  %14 = call %struct.ocrdma_mqe* @ocrdma_init_emb_mqe(i32 %13, i32 8)
  store %struct.ocrdma_mqe* %14, %struct.ocrdma_mqe** %10, align 8
  %15 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %10, align 8
  %16 = icmp ne %struct.ocrdma_mqe* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %70

19:                                               ; preds = %3
  %20 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %10, align 8
  %21 = getelementptr inbounds %struct.ocrdma_mqe, %struct.ocrdma_mqe* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = bitcast i32* %24 to %struct.ocrdma_mbx_hdr*
  %26 = load i32, i32* @OCRDMA_CMD_QUERY_NTWK_LINK_CONFIG_V1, align 4
  %27 = load i32, i32* @OCRDMA_SUBSYS_COMMON, align 4
  %28 = call i32 @ocrdma_init_mch(%struct.ocrdma_mbx_hdr* %25, i32 %26, i32 %27, i32 8)
  %29 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %10, align 8
  %30 = getelementptr inbounds %struct.ocrdma_mqe, %struct.ocrdma_mqe* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = bitcast i32* %32 to %struct.ocrdma_mbx_hdr*
  %34 = getelementptr inbounds %struct.ocrdma_mbx_hdr, %struct.ocrdma_mbx_hdr* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %36 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %10, align 8
  %37 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %35, %struct.ocrdma_mqe* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %19
  br label %66

41:                                               ; preds = %19
  %42 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %10, align 8
  %43 = bitcast %struct.ocrdma_mqe* %42 to %struct.ocrdma_get_link_speed_rsp*
  store %struct.ocrdma_get_link_speed_rsp* %43, %struct.ocrdma_get_link_speed_rsp** %9, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.ocrdma_get_link_speed_rsp*, %struct.ocrdma_get_link_speed_rsp** %9, align 8
  %48 = getelementptr inbounds %struct.ocrdma_get_link_speed_rsp, %struct.ocrdma_get_link_speed_rsp* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @OCRDMA_PHY_PS_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @OCRDMA_PHY_PS_SHIFT, align 4
  %53 = ashr i32 %51, %52
  %54 = load i32*, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %46, %41
  %56 = load i32*, i32** %7, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load %struct.ocrdma_get_link_speed_rsp*, %struct.ocrdma_get_link_speed_rsp** %9, align 8
  %60 = getelementptr inbounds %struct.ocrdma_get_link_speed_rsp, %struct.ocrdma_get_link_speed_rsp* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @OCRDMA_LINK_ST_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %58, %55
  br label %66

66:                                               ; preds = %65, %40
  %67 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %10, align 8
  %68 = call i32 @kfree(%struct.ocrdma_mqe* %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %66, %17
  %71 = load i32, i32* %4, align 4
  ret i32 %71
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
