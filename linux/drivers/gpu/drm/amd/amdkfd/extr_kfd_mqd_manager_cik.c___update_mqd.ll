; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_cik.c___update_mqd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_cik.c___update_mqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqd_manager = type { i32 }
%struct.queue_properties = type { i32, i64, i32, i32, i32, i64, i64 }
%struct.cik_mqd = type { i32, i32, i32, i8*, i8*, i8*, i8*, i32 }

@DEFAULT_RPTR_BLOCK_SIZE = common dso_local global i32 0, align 4
@DEFAULT_MIN_AVAIL_SIZE = common dso_local global i32 0, align 4
@DEFAULT_MIN_IB_AVAIL_SIZE = common dso_local global i32 0, align 4
@PQ_ATC_EN = common dso_local global i32 0, align 4
@IB_ATC_EN = common dso_local global i32 0, align 4
@KFD_QUEUE_FORMAT_AQL = common dso_local global i64 0, align 8
@NO_UPDATE_RPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqd_manager*, i8*, %struct.queue_properties*, i32)* @__update_mqd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__update_mqd(%struct.mqd_manager* %0, i8* %1, %struct.queue_properties* %2, i32 %3) #0 {
  %5 = alloca %struct.mqd_manager*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.queue_properties*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cik_mqd*, align 8
  store %struct.mqd_manager* %0, %struct.mqd_manager** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.queue_properties* %2, %struct.queue_properties** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.cik_mqd* @get_mqd(i8* %10)
  store %struct.cik_mqd* %11, %struct.cik_mqd** %9, align 8
  %12 = load i32, i32* @DEFAULT_RPTR_BLOCK_SIZE, align 4
  %13 = load i32, i32* @DEFAULT_MIN_AVAIL_SIZE, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.cik_mqd*, %struct.cik_mqd** %9, align 8
  %16 = getelementptr inbounds %struct.cik_mqd, %struct.cik_mqd* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @DEFAULT_MIN_IB_AVAIL_SIZE, align 4
  %18 = load %struct.cik_mqd*, %struct.cik_mqd** %9, align 8
  %19 = getelementptr inbounds %struct.cik_mqd, %struct.cik_mqd* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %4
  %23 = load i32, i32* @PQ_ATC_EN, align 4
  %24 = load %struct.cik_mqd*, %struct.cik_mqd** %9, align 8
  %25 = getelementptr inbounds %struct.cik_mqd, %struct.cik_mqd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @IB_ATC_EN, align 4
  %29 = load %struct.cik_mqd*, %struct.cik_mqd** %9, align 8
  %30 = getelementptr inbounds %struct.cik_mqd, %struct.cik_mqd* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %22, %4
  %34 = load %struct.queue_properties*, %struct.queue_properties** %7, align 8
  %35 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sdiv i32 %36, 4
  %38 = call i32 @order_base_2(i32 %37)
  %39 = sub nsw i32 %38, 1
  %40 = load %struct.cik_mqd*, %struct.cik_mqd** %9, align 8
  %41 = getelementptr inbounds %struct.cik_mqd, %struct.cik_mqd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.queue_properties*, %struct.queue_properties** %7, align 8
  %45 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = ashr i32 %47, 8
  %49 = call i8* @lower_32_bits(i32 %48)
  %50 = load %struct.cik_mqd*, %struct.cik_mqd** %9, align 8
  %51 = getelementptr inbounds %struct.cik_mqd, %struct.cik_mqd* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load %struct.queue_properties*, %struct.queue_properties** %7, align 8
  %53 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = ashr i32 %55, 8
  %57 = call i8* @upper_32_bits(i32 %56)
  %58 = load %struct.cik_mqd*, %struct.cik_mqd** %9, align 8
  %59 = getelementptr inbounds %struct.cik_mqd, %struct.cik_mqd* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = load %struct.queue_properties*, %struct.queue_properties** %7, align 8
  %61 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i8* @lower_32_bits(i32 %63)
  %65 = load %struct.cik_mqd*, %struct.cik_mqd** %9, align 8
  %66 = getelementptr inbounds %struct.cik_mqd, %struct.cik_mqd* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  %67 = load %struct.queue_properties*, %struct.queue_properties** %7, align 8
  %68 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i8* @upper_32_bits(i32 %70)
  %72 = load %struct.cik_mqd*, %struct.cik_mqd** %9, align 8
  %73 = getelementptr inbounds %struct.cik_mqd, %struct.cik_mqd* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load %struct.queue_properties*, %struct.queue_properties** %7, align 8
  %75 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @DOORBELL_OFFSET(i32 %76)
  %78 = load %struct.cik_mqd*, %struct.cik_mqd** %9, align 8
  %79 = getelementptr inbounds %struct.cik_mqd, %struct.cik_mqd* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.queue_properties*, %struct.queue_properties** %7, align 8
  %81 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.cik_mqd*, %struct.cik_mqd** %9, align 8
  %84 = getelementptr inbounds %struct.cik_mqd, %struct.cik_mqd* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.queue_properties*, %struct.queue_properties** %7, align 8
  %86 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @KFD_QUEUE_FORMAT_AQL, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %33
  %91 = load i32, i32* @NO_UPDATE_RPTR, align 4
  %92 = load %struct.cik_mqd*, %struct.cik_mqd** %9, align 8
  %93 = getelementptr inbounds %struct.cik_mqd, %struct.cik_mqd* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %90, %33
  %97 = load %struct.mqd_manager*, %struct.mqd_manager** %5, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = load %struct.queue_properties*, %struct.queue_properties** %7, align 8
  %100 = call i32 @update_cu_mask(%struct.mqd_manager* %97, i8* %98, %struct.queue_properties* %99)
  %101 = load %struct.cik_mqd*, %struct.cik_mqd** %9, align 8
  %102 = load %struct.queue_properties*, %struct.queue_properties** %7, align 8
  %103 = call i32 @set_priority(%struct.cik_mqd* %101, %struct.queue_properties* %102)
  %104 = load %struct.queue_properties*, %struct.queue_properties** %7, align 8
  %105 = call i32 @QUEUE_IS_ACTIVE(%struct.queue_properties* byval(%struct.queue_properties) align 8 %104)
  %106 = load %struct.queue_properties*, %struct.queue_properties** %7, align 8
  %107 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  ret void
}

declare dso_local %struct.cik_mqd* @get_mqd(i8*) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

declare dso_local i32 @DOORBELL_OFFSET(i32) #1

declare dso_local i32 @update_cu_mask(%struct.mqd_manager*, i8*, %struct.queue_properties*) #1

declare dso_local i32 @set_priority(%struct.cik_mqd*, %struct.queue_properties*) #1

declare dso_local i32 @QUEUE_IS_ACTIVE(%struct.queue_properties* byval(%struct.queue_properties) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
