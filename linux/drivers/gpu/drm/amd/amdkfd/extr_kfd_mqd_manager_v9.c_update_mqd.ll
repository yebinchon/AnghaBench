; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_v9.c_update_mqd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_v9.c_update_mqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqd_manager = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.queue_properties = type { i32, i32, i32, i32, i64, i32, i64, i32, i64, i64, i64 }
%struct.v9_mqd = type { i32, i32, i32, i64, i32, i64, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8* }

@CP_HQD_PQ_CONTROL__RPTR_BLOCK_SIZE__SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cp_hqd_pq_control 0x%x\0A\00", align 1
@CP_HQD_PQ_DOORBELL_CONTROL__DOORBELL_OFFSET__SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"cp_hqd_pq_doorbell_control 0x%x\0A\00", align 1
@CP_HQD_IB_CONTROL__MIN_IB_AVAIL_SIZE__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_IB_CONTROL__IB_EXE_DISABLE__SHIFT = common dso_local global i32 0, align 4
@KFD_QUEUE_FORMAT_AQL = common dso_local global i64 0, align 8
@CP_HQD_PQ_CONTROL__NO_UPDATE_RPTR_MASK = common dso_local global i32 0, align 4
@CP_HQD_PQ_CONTROL__SLOT_BASED_WPTR__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_PQ_CONTROL__QUEUE_FULL_EN__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_PQ_CONTROL__WPP_CLAMP_EN__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_PQ_DOORBELL_CONTROL__DOORBELL_BIF_DROP__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqd_manager*, i8*, %struct.queue_properties*)* @update_mqd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_mqd(%struct.mqd_manager* %0, i8* %1, %struct.queue_properties* %2) #0 {
  %4 = alloca %struct.mqd_manager*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.queue_properties*, align 8
  %7 = alloca %struct.v9_mqd*, align 8
  store %struct.mqd_manager* %0, %struct.mqd_manager** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.queue_properties* %2, %struct.queue_properties** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.v9_mqd* @get_mqd(i8* %8)
  store %struct.v9_mqd* %9, %struct.v9_mqd** %7, align 8
  %10 = load i32, i32* @CP_HQD_PQ_CONTROL__RPTR_BLOCK_SIZE__SHIFT, align 4
  %11 = shl i32 5, %10
  %12 = load %struct.v9_mqd*, %struct.v9_mqd** %7, align 8
  %13 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %15 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sdiv i32 %16, 4
  %18 = call i32 @order_base_2(i32 %17)
  %19 = sub nsw i32 %18, 1
  %20 = load %struct.v9_mqd*, %struct.v9_mqd** %7, align 8
  %21 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.v9_mqd*, %struct.v9_mqd** %7, align 8
  %25 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %29 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %28, i32 0, i32 10
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = ashr i32 %31, 8
  %33 = call i8* @lower_32_bits(i32 %32)
  %34 = load %struct.v9_mqd*, %struct.v9_mqd** %7, align 8
  %35 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %34, i32 0, i32 14
  store i8* %33, i8** %35, align 8
  %36 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %37 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %36, i32 0, i32 10
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = ashr i32 %39, 8
  %41 = call i8* @upper_32_bits(i32 %40)
  %42 = load %struct.v9_mqd*, %struct.v9_mqd** %7, align 8
  %43 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %42, i32 0, i32 13
  store i8* %41, i8** %43, align 8
  %44 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %45 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %44, i32 0, i32 9
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i8* @lower_32_bits(i32 %47)
  %49 = load %struct.v9_mqd*, %struct.v9_mqd** %7, align 8
  %50 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %49, i32 0, i32 12
  store i8* %48, i8** %50, align 8
  %51 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %52 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %51, i32 0, i32 9
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i8* @upper_32_bits(i32 %54)
  %56 = load %struct.v9_mqd*, %struct.v9_mqd** %7, align 8
  %57 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %56, i32 0, i32 11
  store i8* %55, i8** %57, align 8
  %58 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %59 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %58, i32 0, i32 8
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i8* @lower_32_bits(i32 %61)
  %63 = load %struct.v9_mqd*, %struct.v9_mqd** %7, align 8
  %64 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %63, i32 0, i32 10
  store i8* %62, i8** %64, align 8
  %65 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %66 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %65, i32 0, i32 8
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i8* @upper_32_bits(i32 %68)
  %70 = load %struct.v9_mqd*, %struct.v9_mqd** %7, align 8
  %71 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %70, i32 0, i32 9
  store i8* %69, i8** %71, align 8
  %72 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %73 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CP_HQD_PQ_DOORBELL_CONTROL__DOORBELL_OFFSET__SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = load %struct.v9_mqd*, %struct.v9_mqd** %7, align 8
  %78 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.v9_mqd*, %struct.v9_mqd** %7, align 8
  %80 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @CP_HQD_IB_CONTROL__MIN_IB_AVAIL_SIZE__SHIFT, align 4
  %84 = shl i32 3, %83
  %85 = load i32, i32* @CP_HQD_IB_CONTROL__IB_EXE_DISABLE__SHIFT, align 4
  %86 = shl i32 1, %85
  %87 = or i32 %84, %86
  %88 = load %struct.v9_mqd*, %struct.v9_mqd** %7, align 8
  %89 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %91 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = sdiv i32 %92, 4
  %94 = call i32 @order_base_2(i32 %93)
  %95 = sub nsw i32 %94, 1
  %96 = call i32 @min(i32 10, i32 %95)
  %97 = load %struct.v9_mqd*, %struct.v9_mqd** %7, align 8
  %98 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %97, i32 0, i32 8
  store i32 %96, i32* %98, align 8
  %99 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %100 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %101, 8
  %103 = call i8* @lower_32_bits(i32 %102)
  %104 = load %struct.v9_mqd*, %struct.v9_mqd** %7, align 8
  %105 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %104, i32 0, i32 7
  store i8* %103, i8** %105, align 8
  %106 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %107 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 8
  %110 = call i8* @upper_32_bits(i32 %109)
  %111 = load %struct.v9_mqd*, %struct.v9_mqd** %7, align 8
  %112 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %111, i32 0, i32 6
  store i8* %110, i8** %112, align 8
  %113 = load %struct.v9_mqd*, %struct.v9_mqd** %7, align 8
  %114 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %113, i32 0, i32 5
  store i64 0, i64* %114, align 8
  %115 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %116 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.v9_mqd*, %struct.v9_mqd** %7, align 8
  %119 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %121 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @KFD_QUEUE_FORMAT_AQL, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %146

125:                                              ; preds = %3
  %126 = load i32, i32* @CP_HQD_PQ_CONTROL__NO_UPDATE_RPTR_MASK, align 4
  %127 = load i32, i32* @CP_HQD_PQ_CONTROL__SLOT_BASED_WPTR__SHIFT, align 4
  %128 = shl i32 2, %127
  %129 = or i32 %126, %128
  %130 = load i32, i32* @CP_HQD_PQ_CONTROL__QUEUE_FULL_EN__SHIFT, align 4
  %131 = shl i32 1, %130
  %132 = or i32 %129, %131
  %133 = load i32, i32* @CP_HQD_PQ_CONTROL__WPP_CLAMP_EN__SHIFT, align 4
  %134 = shl i32 1, %133
  %135 = or i32 %132, %134
  %136 = load %struct.v9_mqd*, %struct.v9_mqd** %7, align 8
  %137 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load i32, i32* @CP_HQD_PQ_DOORBELL_CONTROL__DOORBELL_BIF_DROP__SHIFT, align 4
  %141 = shl i32 1, %140
  %142 = load %struct.v9_mqd*, %struct.v9_mqd** %7, align 8
  %143 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %125, %3
  %147 = load %struct.mqd_manager*, %struct.mqd_manager** %4, align 8
  %148 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %147, i32 0, i32 0
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %146
  %154 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %155 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %154, i32 0, i32 6
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load %struct.v9_mqd*, %struct.v9_mqd** %7, align 8
  %160 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %159, i32 0, i32 3
  store i64 0, i64* %160, align 8
  br label %161

161:                                              ; preds = %158, %153, %146
  %162 = load %struct.mqd_manager*, %struct.mqd_manager** %4, align 8
  %163 = load i8*, i8** %5, align 8
  %164 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %165 = call i32 @update_cu_mask(%struct.mqd_manager* %162, i8* %163, %struct.queue_properties* %164)
  %166 = load %struct.v9_mqd*, %struct.v9_mqd** %7, align 8
  %167 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %168 = call i32 @set_priority(%struct.v9_mqd* %166, %struct.queue_properties* %167)
  %169 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %170 = call i32 @QUEUE_IS_ACTIVE(%struct.queue_properties* byval(%struct.queue_properties) align 8 %169)
  %171 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %172 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 8
  ret void
}

declare dso_local %struct.v9_mqd* @get_mqd(i8*) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @update_cu_mask(%struct.mqd_manager*, i8*, %struct.queue_properties*) #1

declare dso_local i32 @set_priority(%struct.v9_mqd*, %struct.queue_properties*) #1

declare dso_local i32 @QUEUE_IS_ACTIVE(%struct.queue_properties* byval(%struct.queue_properties) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
