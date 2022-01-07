; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 (i32, %struct.qed_rdma_start_in_params*)*, i32 (i32, %struct.qed_rdma_add_user_out_params*)* }
%struct.qed_rdma_start_in_params = type { i32, i32*, i32, i32, %struct.qed_rdma_events*, %struct.qed_rdma_cnq_params* }
%struct.qed_rdma_events = type { %struct.qedr_dev*, i32, i32 }
%struct.qed_rdma_cnq_params = type { i64, i32 }
%struct.qed_rdma_add_user_out_params = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qedr_affiliated_event = common dso_local global i32 0, align 4
@qedr_unaffiliated_event = common dso_local global i32 0, align 4
@QED_RDMA_CQ_MODE_32_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Init HW Failed rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*)* @qedr_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_init_hw(%struct.qedr_dev* %0) #0 {
  %2 = alloca %struct.qedr_dev*, align 8
  %3 = alloca %struct.qed_rdma_add_user_out_params, align 4
  %4 = alloca %struct.qed_rdma_start_in_params*, align 8
  %5 = alloca %struct.qed_rdma_cnq_params*, align 8
  %6 = alloca %struct.qed_rdma_events, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %2, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.qed_rdma_start_in_params* @kzalloc(i32 40, i32 %11)
  store %struct.qed_rdma_start_in_params* %12, %struct.qed_rdma_start_in_params** %4, align 8
  %13 = load %struct.qed_rdma_start_in_params*, %struct.qed_rdma_start_in_params** %4, align 8
  %14 = icmp ne %struct.qed_rdma_start_in_params* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %9, align 4
  br label %143

18:                                               ; preds = %1
  %19 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %20 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.qed_rdma_start_in_params*, %struct.qed_rdma_start_in_params** %4, align 8
  %23 = getelementptr inbounds %struct.qed_rdma_start_in_params, %struct.qed_rdma_start_in_params* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %59, %18
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %27 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %24
  %31 = load %struct.qed_rdma_start_in_params*, %struct.qed_rdma_start_in_params** %4, align 8
  %32 = getelementptr inbounds %struct.qed_rdma_start_in_params, %struct.qed_rdma_start_in_params* %31, i32 0, i32 5
  %33 = load %struct.qed_rdma_cnq_params*, %struct.qed_rdma_cnq_params** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.qed_rdma_cnq_params, %struct.qed_rdma_cnq_params* %33, i64 %35
  store %struct.qed_rdma_cnq_params* %36, %struct.qed_rdma_cnq_params** %5, align 8
  %37 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %38 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %37, i32 0, i32 10
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @qed_chain_get_page_cnt(i32* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.qed_rdma_cnq_params*, %struct.qed_rdma_cnq_params** %5, align 8
  %47 = getelementptr inbounds %struct.qed_rdma_cnq_params, %struct.qed_rdma_cnq_params* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %49 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %48, i32 0, i32 10
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i64 @qed_chain_get_pbl_phys(i32* %54)
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.qed_rdma_cnq_params*, %struct.qed_rdma_cnq_params** %5, align 8
  %58 = getelementptr inbounds %struct.qed_rdma_cnq_params, %struct.qed_rdma_cnq_params* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %30
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %24

62:                                               ; preds = %24
  %63 = load i32, i32* @qedr_affiliated_event, align 4
  %64 = getelementptr inbounds %struct.qed_rdma_events, %struct.qed_rdma_events* %6, i32 0, i32 2
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @qedr_unaffiliated_event, align 4
  %66 = getelementptr inbounds %struct.qed_rdma_events, %struct.qed_rdma_events* %6, i32 0, i32 1
  store i32 %65, i32* %66, align 8
  %67 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %68 = getelementptr inbounds %struct.qed_rdma_events, %struct.qed_rdma_events* %6, i32 0, i32 0
  store %struct.qedr_dev* %67, %struct.qedr_dev** %68, align 8
  %69 = load %struct.qed_rdma_start_in_params*, %struct.qed_rdma_start_in_params** %4, align 8
  %70 = getelementptr inbounds %struct.qed_rdma_start_in_params, %struct.qed_rdma_start_in_params* %69, i32 0, i32 4
  store %struct.qed_rdma_events* %6, %struct.qed_rdma_events** %70, align 8
  %71 = load i32, i32* @QED_RDMA_CQ_MODE_32_BITS, align 4
  %72 = load %struct.qed_rdma_start_in_params*, %struct.qed_rdma_start_in_params** %4, align 8
  %73 = getelementptr inbounds %struct.qed_rdma_start_in_params, %struct.qed_rdma_start_in_params* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %75 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %74, i32 0, i32 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.qed_rdma_start_in_params*, %struct.qed_rdma_start_in_params** %4, align 8
  %80 = getelementptr inbounds %struct.qed_rdma_start_in_params, %struct.qed_rdma_start_in_params* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %82 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %81, i32 0, i32 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %87 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %86, i32 0, i32 9
  store i32 %85, i32* %87, align 8
  %88 = load %struct.qed_rdma_start_in_params*, %struct.qed_rdma_start_in_params** %4, align 8
  %89 = getelementptr inbounds %struct.qed_rdma_start_in_params, %struct.qed_rdma_start_in_params* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %93 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %92, i32 0, i32 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ether_addr_copy(i32* %91, i32 %96)
  %98 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %99 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %98, i32 0, i32 6
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32 (i32, %struct.qed_rdma_start_in_params*)*, i32 (i32, %struct.qed_rdma_start_in_params*)** %101, align 8
  %103 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %104 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.qed_rdma_start_in_params*, %struct.qed_rdma_start_in_params** %4, align 8
  %107 = call i32 %102(i32 %105, %struct.qed_rdma_start_in_params* %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %62
  br label %143

111:                                              ; preds = %62
  %112 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %113 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %112, i32 0, i32 6
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i32 (i32, %struct.qed_rdma_add_user_out_params*)*, i32 (i32, %struct.qed_rdma_add_user_out_params*)** %115, align 8
  %117 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %118 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 %116(i32 %119, %struct.qed_rdma_add_user_out_params* %3)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  br label %143

124:                                              ; preds = %111
  %125 = getelementptr inbounds %struct.qed_rdma_add_user_out_params, %struct.qed_rdma_add_user_out_params* %3, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %128 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  %129 = getelementptr inbounds %struct.qed_rdma_add_user_out_params, %struct.qed_rdma_add_user_out_params* %3, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %132 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  %133 = getelementptr inbounds %struct.qed_rdma_add_user_out_params, %struct.qed_rdma_add_user_out_params* %3, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %136 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  %137 = getelementptr inbounds %struct.qed_rdma_add_user_out_params, %struct.qed_rdma_add_user_out_params* %3, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %140 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %142 = call i32 @qedr_set_device_attr(%struct.qedr_dev* %141)
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %124, %123, %110, %15
  %144 = load %struct.qed_rdma_start_in_params*, %struct.qed_rdma_start_in_params** %4, align 8
  %145 = call i32 @kfree(%struct.qed_rdma_start_in_params* %144)
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @DP_ERR(%struct.qedr_dev* %149, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %148, %143
  %153 = load i32, i32* %9, align 4
  ret i32 %153
}

declare dso_local %struct.qed_rdma_start_in_params* @kzalloc(i32, i32) #1

declare dso_local i32 @qed_chain_get_page_cnt(i32*) #1

declare dso_local i64 @qed_chain_get_pbl_phys(i32*) #1

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

declare dso_local i32 @qedr_set_device_attr(%struct.qedr_dev*) #1

declare dso_local i32 @kfree(%struct.qed_rdma_start_in_params*) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
