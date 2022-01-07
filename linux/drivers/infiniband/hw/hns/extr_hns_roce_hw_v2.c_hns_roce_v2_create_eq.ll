; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_create_eq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_create_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_4__, %struct.device* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.hns_roce_eq = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.hns_roce_cmd_mailbox = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_TIMEOUT_MSECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"[mailbox cmd] create eqc failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_eq*, i32)* @hns_roce_v2_create_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_create_eq(%struct.hns_roce_dev* %0, %struct.hns_roce_eq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca %struct.hns_roce_eq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.hns_roce_cmd_mailbox*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store %struct.hns_roce_eq* %1, %struct.hns_roce_eq** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %13 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %12, i32 0, i32 1
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %16 = call %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev* %15)
  store %struct.hns_roce_cmd_mailbox* %16, %struct.hns_roce_cmd_mailbox** %9, align 8
  %17 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %18 = call i64 @IS_ERR(%struct.hns_roce_cmd_mailbox* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %22 = call i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox* %21)
  store i32 %22, i32* %4, align 4
  br label %142

23:                                               ; preds = %3
  %24 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %25 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %71, label %29

29:                                               ; preds = %23
  %30 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %31 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PAGE_SHIFT, align 4
  %35 = add nsw i32 %33, %34
  %36 = shl i32 1, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.TYPE_5__* @kzalloc(i32 4, i32 %37)
  %39 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %40 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %39, i32 0, i32 0
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %40, align 8
  %41 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %42 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %29
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  br label %137

48:                                               ; preds = %29
  %49 = load %struct.device*, %struct.device** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %52 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32 @dma_alloc_coherent(%struct.device* %49, i32 %50, i32* %54, i32 %55)
  %57 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %58 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 4
  %61 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %62 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %48
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %11, align 4
  br label %132

70:                                               ; preds = %48
  br label %81

71:                                               ; preds = %23
  %72 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %73 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %74 = call i32 @hns_roce_mhop_alloc_eq(%struct.hns_roce_dev* %72, %struct.hns_roce_eq* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %11, align 4
  br label %137

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %70
  %82 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %83 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %84 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %85 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @hns_roce_config_eqc(%struct.hns_roce_dev* %82, %struct.hns_roce_eq* %83, i32 %86)
  %88 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %89 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %90 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %93 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @HNS_ROCE_CMD_TIMEOUT_MSECS, align 4
  %97 = call i32 @hns_roce_cmd_mbox(%struct.hns_roce_dev* %88, i32 %91, i32 0, i32 %94, i32 0, i32 %95, i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %81
  %101 = load %struct.device*, %struct.device** %8, align 8
  %102 = call i32 @dev_err(%struct.device* %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %107

103:                                              ; preds = %81
  %104 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %105 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %106 = call i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev* %104, %struct.hns_roce_cmd_mailbox* %105)
  store i32 0, i32* %4, align 4
  br label %142

107:                                              ; preds = %100
  %108 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %109 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %127, label %113

113:                                              ; preds = %107
  %114 = load %struct.device*, %struct.device** %8, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %117 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %116, i32 0, i32 0
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %122 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %121, i32 0, i32 0
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @dma_free_coherent(%struct.device* %114, i32 %115, i32 %120, i32 %125)
  br label %131

127:                                              ; preds = %107
  %128 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %129 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %130 = call i32 @hns_roce_mhop_free_eq(%struct.hns_roce_dev* %128, %struct.hns_roce_eq* %129)
  br label %137

131:                                              ; preds = %113
  br label %132

132:                                              ; preds = %131, %67
  %133 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %134 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %133, i32 0, i32 0
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = call i32 @kfree(%struct.TYPE_5__* %135)
  br label %137

137:                                              ; preds = %132, %127, %77, %45
  %138 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %139 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %140 = call i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev* %138, %struct.hns_roce_cmd_mailbox* %139)
  %141 = load i32, i32* %11, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %137, %103, %20
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev*) #1

declare dso_local i64 @IS_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local %struct.TYPE_5__* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @hns_roce_mhop_alloc_eq(%struct.hns_roce_dev*, %struct.hns_roce_eq*) #1

declare dso_local i32 @hns_roce_config_eqc(%struct.hns_roce_dev*, %struct.hns_roce_eq*, i32) #1

declare dso_local i32 @hns_roce_cmd_mbox(%struct.hns_roce_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev*, %struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @hns_roce_mhop_free_eq(%struct.hns_roce_dev*, %struct.hns_roce_eq*) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
