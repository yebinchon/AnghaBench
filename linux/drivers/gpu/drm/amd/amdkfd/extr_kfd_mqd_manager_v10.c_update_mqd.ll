; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_v10.c_update_mqd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_v10.c_update_mqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqd_manager = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.queue_properties = type { i32, i64, i32, i32, i32, i64, i32, i64, i32, i32, i64, i64 }
%struct.v10_compute_mqd = type { i32, i32, i32, i64, i32, i64, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8* }

@CP_HQD_PQ_CONTROL__RPTR_BLOCK_SIZE__SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cp_hqd_pq_control 0x%x\0A\00", align 1
@CP_HQD_PQ_DOORBELL_CONTROL__DOORBELL_OFFSET__SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"cp_hqd_pq_doorbell_control 0x%x\0A\00", align 1
@CP_HQD_IB_CONTROL__MIN_IB_AVAIL_SIZE__SHIFT = common dso_local global i32 0, align 4
@KFD_QUEUE_FORMAT_AQL = common dso_local global i64 0, align 8
@CP_HQD_PQ_CONTROL__NO_UPDATE_RPTR_MASK = common dso_local global i32 0, align 4
@CP_HQD_PQ_CONTROL__SLOT_BASED_WPTR__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_PQ_CONTROL__QUEUE_FULL_EN__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_PQ_DOORBELL_CONTROL__DOORBELL_BIF_DROP__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqd_manager*, i8*, %struct.queue_properties*)* @update_mqd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_mqd(%struct.mqd_manager* %0, i8* %1, %struct.queue_properties* %2) #0 {
  %4 = alloca %struct.mqd_manager*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.queue_properties*, align 8
  %7 = alloca %struct.v10_compute_mqd*, align 8
  store %struct.mqd_manager* %0, %struct.mqd_manager** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.queue_properties* %2, %struct.queue_properties** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.v10_compute_mqd* @get_mqd(i8* %8)
  store %struct.v10_compute_mqd* %9, %struct.v10_compute_mqd** %7, align 8
  %10 = load i32, i32* @CP_HQD_PQ_CONTROL__RPTR_BLOCK_SIZE__SHIFT, align 4
  %11 = shl i32 5, %10
  %12 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %7, align 8
  %13 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %15 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = udiv i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = call i32 @ffs(i32 %19)
  %21 = sub nsw i32 %20, 1
  %22 = sub nsw i32 %21, 1
  %23 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %7, align 8
  %24 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %7, align 8
  %28 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %32 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = ashr i32 %34, 8
  %36 = call i8* @lower_32_bits(i32 %35)
  %37 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %7, align 8
  %38 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %37, i32 0, i32 14
  store i8* %36, i8** %38, align 8
  %39 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %40 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = ashr i32 %42, 8
  %44 = call i8* @upper_32_bits(i32 %43)
  %45 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %7, align 8
  %46 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %45, i32 0, i32 13
  store i8* %44, i8** %46, align 8
  %47 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %48 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %47, i32 0, i32 11
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i8* @lower_32_bits(i32 %50)
  %52 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %7, align 8
  %53 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %52, i32 0, i32 12
  store i8* %51, i8** %53, align 8
  %54 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %55 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %54, i32 0, i32 11
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i8* @upper_32_bits(i32 %57)
  %59 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %7, align 8
  %60 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %59, i32 0, i32 11
  store i8* %58, i8** %60, align 8
  %61 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %62 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %61, i32 0, i32 10
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i8* @lower_32_bits(i32 %64)
  %66 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %7, align 8
  %67 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %66, i32 0, i32 10
  store i8* %65, i8** %67, align 8
  %68 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %69 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %68, i32 0, i32 10
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i8* @upper_32_bits(i32 %71)
  %73 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %7, align 8
  %74 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %73, i32 0, i32 9
  store i8* %72, i8** %74, align 8
  %75 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %76 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CP_HQD_PQ_DOORBELL_CONTROL__DOORBELL_OFFSET__SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %7, align 8
  %81 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %7, align 8
  %83 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @CP_HQD_IB_CONTROL__MIN_IB_AVAIL_SIZE__SHIFT, align 4
  %87 = shl i32 3, %86
  %88 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %7, align 8
  %89 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %91 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = udiv i64 %93, 4
  %95 = trunc i64 %94 to i32
  %96 = call i32 @ffs(i32 %95)
  %97 = sub nsw i32 %96, 1
  %98 = sub nsw i32 %97, 1
  %99 = call i32 @min(i32 10, i32 %98)
  %100 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %7, align 8
  %101 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %100, i32 0, i32 8
  store i32 %99, i32* %101, align 8
  %102 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %103 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = ashr i32 %104, 8
  %106 = call i8* @lower_32_bits(i32 %105)
  %107 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %7, align 8
  %108 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %107, i32 0, i32 7
  store i8* %106, i8** %108, align 8
  %109 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %110 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = ashr i32 %111, 8
  %113 = call i8* @upper_32_bits(i32 %112)
  %114 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %7, align 8
  %115 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %114, i32 0, i32 6
  store i8* %113, i8** %115, align 8
  %116 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %7, align 8
  %117 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %116, i32 0, i32 5
  store i64 0, i64* %117, align 8
  %118 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %119 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %118, i32 0, i32 9
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %7, align 8
  %122 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %124 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @KFD_QUEUE_FORMAT_AQL, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %3
  %129 = load i32, i32* @CP_HQD_PQ_CONTROL__NO_UPDATE_RPTR_MASK, align 4
  %130 = load i32, i32* @CP_HQD_PQ_CONTROL__SLOT_BASED_WPTR__SHIFT, align 4
  %131 = shl i32 2, %130
  %132 = or i32 %129, %131
  %133 = load i32, i32* @CP_HQD_PQ_CONTROL__QUEUE_FULL_EN__SHIFT, align 4
  %134 = shl i32 1, %133
  %135 = or i32 %132, %134
  %136 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %7, align 8
  %137 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load i32, i32* @CP_HQD_PQ_DOORBELL_CONTROL__DOORBELL_BIF_DROP__SHIFT, align 4
  %141 = shl i32 1, %140
  %142 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %7, align 8
  %143 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %128, %3
  %147 = load %struct.mqd_manager*, %struct.mqd_manager** %4, align 8
  %148 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %147, i32 0, i32 0
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %146
  %154 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %7, align 8
  %155 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %154, i32 0, i32 3
  store i64 0, i64* %155, align 8
  br label %156

156:                                              ; preds = %153, %146
  %157 = load %struct.mqd_manager*, %struct.mqd_manager** %4, align 8
  %158 = load i8*, i8** %5, align 8
  %159 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %160 = call i32 @update_cu_mask(%struct.mqd_manager* %157, i8* %158, %struct.queue_properties* %159)
  %161 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %162 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %181

165:                                              ; preds = %156
  %166 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %167 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %165
  %171 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %172 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %171, i32 0, i32 7
  %173 = load i64, i64* %172, align 8
  %174 = icmp sgt i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %177 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %176, i32 0, i32 8
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  br label %181

181:                                              ; preds = %175, %170, %165, %156
  %182 = phi i1 [ false, %170 ], [ false, %165 ], [ false, %156 ], [ %180, %175 ]
  %183 = zext i1 %182 to i32
  %184 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %185 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %184, i32 0, i32 6
  store i32 %183, i32* %185, align 8
  ret void
}

declare dso_local %struct.v10_compute_mqd* @get_mqd(i8*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @update_cu_mask(%struct.mqd_manager*, i8*, %struct.queue_properties*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
