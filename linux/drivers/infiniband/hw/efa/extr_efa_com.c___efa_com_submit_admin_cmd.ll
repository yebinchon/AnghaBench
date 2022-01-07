; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c___efa_com_submit_admin_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c___efa_com_submit_admin_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_comp_ctx = type { i64, i32, i32, %struct.efa_admin_acq_entry*, i32 }
%struct.efa_com_admin_queue = type { i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.efa_admin_aq_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.efa_admin_acq_entry = type { i32 }

@EFA_ADMIN_AQ_COMMON_DESC_COMMAND_ID_MASK = common dso_local global i64 0, align 8
@EFA_ADMIN_AQ_COMMON_DESC_PHASE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFA_CMD_SUBMITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.efa_comp_ctx* (%struct.efa_com_admin_queue*, %struct.efa_admin_aq_entry*, i64, %struct.efa_admin_acq_entry*, i64)* @__efa_com_submit_admin_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.efa_comp_ctx* @__efa_com_submit_admin_cmd(%struct.efa_com_admin_queue* %0, %struct.efa_admin_aq_entry* %1, i64 %2, %struct.efa_admin_acq_entry* %3, i64 %4) #0 {
  %6 = alloca %struct.efa_comp_ctx*, align 8
  %7 = alloca %struct.efa_com_admin_queue*, align 8
  %8 = alloca %struct.efa_admin_aq_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.efa_admin_acq_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.efa_comp_ctx*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.efa_com_admin_queue* %0, %struct.efa_com_admin_queue** %7, align 8
  store %struct.efa_admin_aq_entry* %1, %struct.efa_admin_aq_entry** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.efa_admin_acq_entry* %3, %struct.efa_admin_acq_entry** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %18 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %19, 1
  store i64 %20, i64* %13, align 8
  %21 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %22 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %13, align 8
  %26 = and i64 %24, %25
  store i64 %26, i64* %16, align 8
  %27 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %28 = call i64 @efa_com_alloc_ctx_id(%struct.efa_com_admin_queue* %27)
  store i64 %28, i64* %15, align 8
  %29 = load i64, i64* %15, align 8
  %30 = load i64, i64* %13, align 8
  %31 = and i64 %29, %30
  store i64 %31, i64* %14, align 8
  %32 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %33 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %13, align 8
  %37 = xor i64 %36, -1
  %38 = and i64 %35, %37
  %39 = load i64, i64* %14, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %14, align 8
  %41 = load i64, i64* @EFA_ADMIN_AQ_COMMON_DESC_COMMAND_ID_MASK, align 8
  %42 = load i64, i64* %14, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load %struct.efa_admin_aq_entry*, %struct.efa_admin_aq_entry** %8, align 8
  %46 = getelementptr inbounds %struct.efa_admin_aq_entry, %struct.efa_admin_aq_entry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %49 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @EFA_ADMIN_AQ_COMMON_DESC_PHASE_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load %struct.efa_admin_aq_entry*, %struct.efa_admin_aq_entry** %8, align 8
  %55 = getelementptr inbounds %struct.efa_admin_aq_entry, %struct.efa_admin_aq_entry* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 8
  %59 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %60 = load i64, i64* %14, align 8
  %61 = call %struct.efa_comp_ctx* @efa_com_get_comp_ctx(%struct.efa_com_admin_queue* %59, i64 %60, i32 1)
  store %struct.efa_comp_ctx* %61, %struct.efa_comp_ctx** %12, align 8
  %62 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %12, align 8
  %63 = icmp ne %struct.efa_comp_ctx* %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %5
  %65 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %66 = load i64, i64* %15, align 8
  %67 = call i32 @efa_com_dealloc_ctx_id(%struct.efa_com_admin_queue* %65, i64 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  %70 = call %struct.efa_comp_ctx* @ERR_PTR(i32 %69)
  store %struct.efa_comp_ctx* %70, %struct.efa_comp_ctx** %6, align 8
  br label %137

71:                                               ; preds = %5
  %72 = load i32, i32* @EFA_CMD_SUBMITTED, align 4
  %73 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %12, align 8
  %74 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %12, align 8
  %77 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.efa_admin_acq_entry*, %struct.efa_admin_acq_entry** %10, align 8
  %79 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %12, align 8
  %80 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %79, i32 0, i32 3
  store %struct.efa_admin_acq_entry* %78, %struct.efa_admin_acq_entry** %80, align 8
  %81 = load %struct.efa_admin_aq_entry*, %struct.efa_admin_aq_entry** %8, align 8
  %82 = getelementptr inbounds %struct.efa_admin_aq_entry, %struct.efa_admin_aq_entry* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %12, align 8
  %86 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %12, align 8
  %88 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %87, i32 0, i32 1
  %89 = call i32 @reinit_completion(i32* %88)
  %90 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %91 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %16, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load %struct.efa_admin_aq_entry*, %struct.efa_admin_aq_entry** %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @memcpy(i32* %95, %struct.efa_admin_aq_entry* %96, i64 %97)
  %99 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %100 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %101, align 8
  %104 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %105 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = call i32 @atomic64_inc(i32* %106)
  %108 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %109 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %13, align 8
  %113 = and i64 %111, %112
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %71
  %116 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %117 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %124 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 8
  br label %126

126:                                              ; preds = %115, %71
  %127 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %128 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %132 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @writel(i64 %130, i32 %134)
  %136 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %12, align 8
  store %struct.efa_comp_ctx* %136, %struct.efa_comp_ctx** %6, align 8
  br label %137

137:                                              ; preds = %126, %64
  %138 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %6, align 8
  ret %struct.efa_comp_ctx* %138
}

declare dso_local i64 @efa_com_alloc_ctx_id(%struct.efa_com_admin_queue*) #1

declare dso_local %struct.efa_comp_ctx* @efa_com_get_comp_ctx(%struct.efa_com_admin_queue*, i64, i32) #1

declare dso_local i32 @efa_com_dealloc_ctx_id(%struct.efa_com_admin_queue*, i64) #1

declare dso_local %struct.efa_comp_ctx* @ERR_PTR(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.efa_admin_aq_entry*, i64) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
