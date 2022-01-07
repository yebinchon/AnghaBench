; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_vnic_vport_info = type { i32, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32 }

@hfi1_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_vnic_vport_info*)* @hfi1_vnic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_vnic_init(%struct.hfi1_vnic_vport_info* %0) #0 {
  %2 = alloca %struct.hfi1_vnic_vport_info*, align 8
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hfi1_vnic_vport_info* %0, %struct.hfi1_vnic_vport_info** %2, align 8
  %6 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %2, align 8
  %7 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %6, i32 0, i32 1
  %8 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  store %struct.hfi1_devdata* %8, %struct.hfi1_devdata** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = call i32 @mutex_lock(i32* @hfi1_mutex)
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %11 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %17 = call i32 @hfi1_vnic_txreq_init(%struct.hfi1_devdata* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %144

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %24 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %66, %22
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %2, align 8
  %30 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %69

33:                                               ; preds = %27
  %34 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %35 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %36 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %38, i64 %40
  %42 = call i32 @hfi1_vnic_allot_ctxt(%struct.hfi1_devdata* %34, %struct.TYPE_7__** %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %69

46:                                               ; preds = %33
  %47 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %48 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %50, i64 %52
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = call i32 @hfi1_rcd_get(%struct.TYPE_7__* %54)
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %58 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %60, i64 %62
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i32 %56, i32* %65, align 4
  br label %66

66:                                               ; preds = %46
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %27

69:                                               ; preds = %45, %27
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %2, align 8
  %72 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %112

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %84, %75
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %4, align 4
  %79 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %80 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %77, %82
  br i1 %83, label %84, label %111

84:                                               ; preds = %76
  %85 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %86 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %87 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %89, i64 %91
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = call i32 @deallocate_vnic_ctxt(%struct.hfi1_devdata* %85, %struct.TYPE_7__* %93)
  %95 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %96 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %98, i64 %100
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = call i32 @hfi1_rcd_put(%struct.TYPE_7__* %102)
  %104 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %105 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %107, i64 %109
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %110, align 8
  br label %76

111:                                              ; preds = %76
  br label %134

112:                                              ; preds = %69
  %113 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %114 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %112
  %120 = load i32, i32* %4, align 4
  %121 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %122 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  %124 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %125 = call i32 @hfi1_init_vnic_rsm(%struct.hfi1_devdata* %124)
  br label %126

126:                                              ; preds = %119, %112
  %127 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %128 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %2, align 8
  %133 = call i32 @hfi1_vnic_sdma_init(%struct.hfi1_vnic_vport_info* %132)
  br label %134

134:                                              ; preds = %126, %111
  %135 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %136 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %134
  %141 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %142 = call i32 @hfi1_vnic_txreq_deinit(%struct.hfi1_devdata* %141)
  br label %143

143:                                              ; preds = %140, %134
  br label %144

144:                                              ; preds = %143, %20
  %145 = call i32 @mutex_unlock(i32* @hfi1_mutex)
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hfi1_vnic_txreq_init(%struct.hfi1_devdata*) #1

declare dso_local i32 @hfi1_vnic_allot_ctxt(%struct.hfi1_devdata*, %struct.TYPE_7__**) #1

declare dso_local i32 @hfi1_rcd_get(%struct.TYPE_7__*) #1

declare dso_local i32 @deallocate_vnic_ctxt(%struct.hfi1_devdata*, %struct.TYPE_7__*) #1

declare dso_local i32 @hfi1_rcd_put(%struct.TYPE_7__*) #1

declare dso_local i32 @hfi1_init_vnic_rsm(%struct.hfi1_devdata*) #1

declare dso_local i32 @hfi1_vnic_sdma_init(%struct.hfi1_vnic_vport_info*) #1

declare dso_local i32 @hfi1_vnic_txreq_deinit(%struct.hfi1_devdata*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
