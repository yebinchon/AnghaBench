; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_vi.c___update_mqd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_vi.c___update_mqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqd_manager = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.queue_properties = type { i32, i32, i32, i32, i64, i32, i64, i32, i64, i64, i64 }
%struct.vi_mqd = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@CP_HQD_PQ_CONTROL__RPTR_BLOCK_SIZE__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_PQ_CONTROL__PQ_ATC__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_PQ_CONTROL__MTYPE__SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cp_hqd_pq_control 0x%x\0A\00", align 1
@CP_HQD_PQ_DOORBELL_CONTROL__DOORBELL_OFFSET__SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"cp_hqd_pq_doorbell_control 0x%x\0A\00", align 1
@CP_HQD_EOP_CONTROL__EOP_ATC__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_EOP_CONTROL__MTYPE__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_IB_CONTROL__IB_ATC__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_IB_CONTROL__MIN_IB_AVAIL_SIZE__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_IB_CONTROL__MTYPE__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_IQ_TIMER__IQ_ATC__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_IQ_TIMER__MTYPE__SHIFT = common dso_local global i32 0, align 4
@KFD_QUEUE_FORMAT_AQL = common dso_local global i64 0, align 8
@CP_HQD_PQ_CONTROL__NO_UPDATE_RPTR_MASK = common dso_local global i32 0, align 4
@CP_HQD_PQ_CONTROL__SLOT_BASED_WPTR__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_CTX_SAVE_CONTROL__ATC__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_CTX_SAVE_CONTROL__MTYPE__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqd_manager*, i8*, %struct.queue_properties*, i32, i32)* @__update_mqd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__update_mqd(%struct.mqd_manager* %0, i8* %1, %struct.queue_properties* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mqd_manager*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.queue_properties*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vi_mqd*, align 8
  store %struct.mqd_manager* %0, %struct.mqd_manager** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.queue_properties* %2, %struct.queue_properties** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call %struct.vi_mqd* @get_mqd(i8* %12)
  store %struct.vi_mqd* %13, %struct.vi_mqd** %11, align 8
  %14 = load i32, i32* @CP_HQD_PQ_CONTROL__RPTR_BLOCK_SIZE__SHIFT, align 4
  %15 = shl i32 5, %14
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @CP_HQD_PQ_CONTROL__PQ_ATC__SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = or i32 %15, %18
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @CP_HQD_PQ_CONTROL__MTYPE__SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %19, %22
  %24 = load %struct.vi_mqd*, %struct.vi_mqd** %11, align 8
  %25 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.queue_properties*, %struct.queue_properties** %8, align 8
  %27 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sdiv i32 %28, 4
  %30 = call i32 @order_base_2(i32 %29)
  %31 = sub nsw i32 %30, 1
  %32 = load %struct.vi_mqd*, %struct.vi_mqd** %11, align 8
  %33 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.vi_mqd*, %struct.vi_mqd** %11, align 8
  %37 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.queue_properties*, %struct.queue_properties** %8, align 8
  %41 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %40, i32 0, i32 10
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = ashr i32 %43, 8
  %45 = call i8* @lower_32_bits(i32 %44)
  %46 = load %struct.vi_mqd*, %struct.vi_mqd** %11, align 8
  %47 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %46, i32 0, i32 14
  store i8* %45, i8** %47, align 8
  %48 = load %struct.queue_properties*, %struct.queue_properties** %8, align 8
  %49 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %48, i32 0, i32 10
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = ashr i32 %51, 8
  %53 = call i8* @upper_32_bits(i32 %52)
  %54 = load %struct.vi_mqd*, %struct.vi_mqd** %11, align 8
  %55 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %54, i32 0, i32 13
  store i8* %53, i8** %55, align 8
  %56 = load %struct.queue_properties*, %struct.queue_properties** %8, align 8
  %57 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %56, i32 0, i32 9
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i8* @lower_32_bits(i32 %59)
  %61 = load %struct.vi_mqd*, %struct.vi_mqd** %11, align 8
  %62 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %61, i32 0, i32 12
  store i8* %60, i8** %62, align 8
  %63 = load %struct.queue_properties*, %struct.queue_properties** %8, align 8
  %64 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %63, i32 0, i32 9
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i8* @upper_32_bits(i32 %66)
  %68 = load %struct.vi_mqd*, %struct.vi_mqd** %11, align 8
  %69 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %68, i32 0, i32 11
  store i8* %67, i8** %69, align 8
  %70 = load %struct.queue_properties*, %struct.queue_properties** %8, align 8
  %71 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %70, i32 0, i32 8
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i8* @lower_32_bits(i32 %73)
  %75 = load %struct.vi_mqd*, %struct.vi_mqd** %11, align 8
  %76 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %75, i32 0, i32 10
  store i8* %74, i8** %76, align 8
  %77 = load %struct.queue_properties*, %struct.queue_properties** %8, align 8
  %78 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %77, i32 0, i32 8
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i8* @upper_32_bits(i32 %80)
  %82 = load %struct.vi_mqd*, %struct.vi_mqd** %11, align 8
  %83 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %82, i32 0, i32 9
  store i8* %81, i8** %83, align 8
  %84 = load %struct.queue_properties*, %struct.queue_properties** %8, align 8
  %85 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @CP_HQD_PQ_DOORBELL_CONTROL__DOORBELL_OFFSET__SHIFT, align 4
  %88 = shl i32 %86, %87
  %89 = load %struct.vi_mqd*, %struct.vi_mqd** %11, align 8
  %90 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.vi_mqd*, %struct.vi_mqd** %11, align 8
  %92 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @CP_HQD_EOP_CONTROL__EOP_ATC__SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @CP_HQD_EOP_CONTROL__MTYPE__SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = or i32 %97, %100
  %102 = load %struct.vi_mqd*, %struct.vi_mqd** %11, align 8
  %103 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @CP_HQD_IB_CONTROL__IB_ATC__SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = load i32, i32* @CP_HQD_IB_CONTROL__MIN_IB_AVAIL_SIZE__SHIFT, align 4
  %108 = shl i32 3, %107
  %109 = or i32 %106, %108
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @CP_HQD_IB_CONTROL__MTYPE__SHIFT, align 4
  %112 = shl i32 %110, %111
  %113 = or i32 %109, %112
  %114 = load %struct.vi_mqd*, %struct.vi_mqd** %11, align 8
  %115 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load %struct.queue_properties*, %struct.queue_properties** %8, align 8
  %117 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = sdiv i32 %118, 4
  %120 = call i32 @order_base_2(i32 %119)
  %121 = sub nsw i32 %120, 1
  %122 = call i32 @min(i32 10, i32 %121)
  %123 = load %struct.vi_mqd*, %struct.vi_mqd** %11, align 8
  %124 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load %struct.queue_properties*, %struct.queue_properties** %8, align 8
  %128 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = ashr i32 %129, 8
  %131 = call i8* @lower_32_bits(i32 %130)
  %132 = load %struct.vi_mqd*, %struct.vi_mqd** %11, align 8
  %133 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %132, i32 0, i32 8
  store i8* %131, i8** %133, align 8
  %134 = load %struct.queue_properties*, %struct.queue_properties** %8, align 8
  %135 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 8
  %138 = call i8* @upper_32_bits(i32 %137)
  %139 = load %struct.vi_mqd*, %struct.vi_mqd** %11, align 8
  %140 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %139, i32 0, i32 7
  store i8* %138, i8** %140, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @CP_HQD_IQ_TIMER__IQ_ATC__SHIFT, align 4
  %143 = shl i32 %141, %142
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @CP_HQD_IQ_TIMER__MTYPE__SHIFT, align 4
  %146 = shl i32 %144, %145
  %147 = or i32 %143, %146
  %148 = load %struct.vi_mqd*, %struct.vi_mqd** %11, align 8
  %149 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  %150 = load %struct.queue_properties*, %struct.queue_properties** %8, align 8
  %151 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.vi_mqd*, %struct.vi_mqd** %11, align 8
  %154 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %153, i32 0, i32 6
  store i32 %152, i32* %154, align 8
  %155 = load %struct.queue_properties*, %struct.queue_properties** %8, align 8
  %156 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @KFD_QUEUE_FORMAT_AQL, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %5
  %161 = load i32, i32* @CP_HQD_PQ_CONTROL__NO_UPDATE_RPTR_MASK, align 4
  %162 = load i32, i32* @CP_HQD_PQ_CONTROL__SLOT_BASED_WPTR__SHIFT, align 4
  %163 = shl i32 2, %162
  %164 = or i32 %161, %163
  %165 = load %struct.vi_mqd*, %struct.vi_mqd** %11, align 8
  %166 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %160, %5
  %170 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %171 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %170, i32 0, i32 0
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %191

176:                                              ; preds = %169
  %177 = load %struct.queue_properties*, %struct.queue_properties** %8, align 8
  %178 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %177, i32 0, i32 6
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %176
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @CP_HQD_CTX_SAVE_CONTROL__ATC__SHIFT, align 4
  %184 = shl i32 %182, %183
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* @CP_HQD_CTX_SAVE_CONTROL__MTYPE__SHIFT, align 4
  %187 = shl i32 %185, %186
  %188 = or i32 %184, %187
  %189 = load %struct.vi_mqd*, %struct.vi_mqd** %11, align 8
  %190 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %189, i32 0, i32 5
  store i32 %188, i32* %190, align 4
  br label %191

191:                                              ; preds = %181, %176, %169
  %192 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %193 = load i8*, i8** %7, align 8
  %194 = load %struct.queue_properties*, %struct.queue_properties** %8, align 8
  %195 = call i32 @update_cu_mask(%struct.mqd_manager* %192, i8* %193, %struct.queue_properties* %194)
  %196 = load %struct.vi_mqd*, %struct.vi_mqd** %11, align 8
  %197 = load %struct.queue_properties*, %struct.queue_properties** %8, align 8
  %198 = call i32 @set_priority(%struct.vi_mqd* %196, %struct.queue_properties* %197)
  %199 = load %struct.queue_properties*, %struct.queue_properties** %8, align 8
  %200 = call i32 @QUEUE_IS_ACTIVE(%struct.queue_properties* byval(%struct.queue_properties) align 8 %199)
  %201 = load %struct.queue_properties*, %struct.queue_properties** %8, align 8
  %202 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %201, i32 0, i32 5
  store i32 %200, i32* %202, align 8
  ret void
}

declare dso_local %struct.vi_mqd* @get_mqd(i8*) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @update_cu_mask(%struct.mqd_manager*, i8*, %struct.queue_properties*) #1

declare dso_local i32 @set_priority(%struct.vi_mqd*, %struct.queue_properties*) #1

declare dso_local i32 @QUEUE_IS_ACTIVE(%struct.queue_properties* byval(%struct.queue_properties) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
