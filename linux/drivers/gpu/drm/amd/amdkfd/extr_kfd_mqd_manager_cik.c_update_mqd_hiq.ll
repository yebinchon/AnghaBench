; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_cik.c_update_mqd_hiq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_cik.c_update_mqd_hiq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqd_manager = type { i32 }
%struct.queue_properties = type { i32, i32, i32, i32, i64, i64 }
%struct.cik_mqd = type { i32, i32, i32, i8*, i8*, i8*, i8* }

@DEFAULT_RPTR_BLOCK_SIZE = common dso_local global i32 0, align 4
@DEFAULT_MIN_AVAIL_SIZE = common dso_local global i32 0, align 4
@PRIV_STATE = common dso_local global i32 0, align 4
@KMD_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqd_manager*, i8*, %struct.queue_properties*)* @update_mqd_hiq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_mqd_hiq(%struct.mqd_manager* %0, i8* %1, %struct.queue_properties* %2) #0 {
  %4 = alloca %struct.mqd_manager*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.queue_properties*, align 8
  %7 = alloca %struct.cik_mqd*, align 8
  store %struct.mqd_manager* %0, %struct.mqd_manager** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.queue_properties* %2, %struct.queue_properties** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.cik_mqd* @get_mqd(i8* %8)
  store %struct.cik_mqd* %9, %struct.cik_mqd** %7, align 8
  %10 = load i32, i32* @DEFAULT_RPTR_BLOCK_SIZE, align 4
  %11 = load i32, i32* @DEFAULT_MIN_AVAIL_SIZE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @PRIV_STATE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @KMD_QUEUE, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.cik_mqd*, %struct.cik_mqd** %7, align 8
  %18 = getelementptr inbounds %struct.cik_mqd, %struct.cik_mqd* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %20 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sdiv i32 %21, 4
  %23 = call i32 @order_base_2(i32 %22)
  %24 = sub nsw i32 %23, 1
  %25 = load %struct.cik_mqd*, %struct.cik_mqd** %7, align 8
  %26 = getelementptr inbounds %struct.cik_mqd, %struct.cik_mqd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %30 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = ashr i32 %32, 8
  %34 = call i8* @lower_32_bits(i32 %33)
  %35 = load %struct.cik_mqd*, %struct.cik_mqd** %7, align 8
  %36 = getelementptr inbounds %struct.cik_mqd, %struct.cik_mqd* %35, i32 0, i32 6
  store i8* %34, i8** %36, align 8
  %37 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %38 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = ashr i32 %40, 8
  %42 = call i8* @upper_32_bits(i32 %41)
  %43 = load %struct.cik_mqd*, %struct.cik_mqd** %7, align 8
  %44 = getelementptr inbounds %struct.cik_mqd, %struct.cik_mqd* %43, i32 0, i32 5
  store i8* %42, i8** %44, align 8
  %45 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %46 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i8* @lower_32_bits(i32 %48)
  %50 = load %struct.cik_mqd*, %struct.cik_mqd** %7, align 8
  %51 = getelementptr inbounds %struct.cik_mqd, %struct.cik_mqd* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %53 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i8* @upper_32_bits(i32 %55)
  %57 = load %struct.cik_mqd*, %struct.cik_mqd** %7, align 8
  %58 = getelementptr inbounds %struct.cik_mqd, %struct.cik_mqd* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %60 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @DOORBELL_OFFSET(i32 %61)
  %63 = load %struct.cik_mqd*, %struct.cik_mqd** %7, align 8
  %64 = getelementptr inbounds %struct.cik_mqd, %struct.cik_mqd* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %66 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.cik_mqd*, %struct.cik_mqd** %7, align 8
  %69 = getelementptr inbounds %struct.cik_mqd, %struct.cik_mqd* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %71 = call i32 @QUEUE_IS_ACTIVE(%struct.queue_properties* byval(%struct.queue_properties) align 8 %70)
  %72 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %73 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.cik_mqd*, %struct.cik_mqd** %7, align 8
  %75 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %76 = call i32 @set_priority(%struct.cik_mqd* %74, %struct.queue_properties* %75)
  ret void
}

declare dso_local %struct.cik_mqd* @get_mqd(i8*) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

declare dso_local i32 @DOORBELL_OFFSET(i32) #1

declare dso_local i32 @QUEUE_IS_ACTIVE(%struct.queue_properties* byval(%struct.queue_properties) align 8) #1

declare dso_local i32 @set_priority(%struct.cik_mqd*, %struct.queue_properties*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
