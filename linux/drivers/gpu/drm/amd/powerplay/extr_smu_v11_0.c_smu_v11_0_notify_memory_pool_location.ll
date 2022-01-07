; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_notify_memory_pool_location.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_notify_memory_pool_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_table_context }
%struct.smu_table_context = type { %struct.smu_table }
%struct.smu_table = type { i64, i64, i32* }

@SMU_MSG_SetSystemVirtualDramAddrHigh = common dso_local global i32 0, align 4
@SMU_MSG_SetSystemVirtualDramAddrLow = common dso_local global i32 0, align 4
@SMU_MSG_DramLogSetDramAddrHigh = common dso_local global i32 0, align 4
@SMU_MSG_DramLogSetDramAddrLow = common dso_local global i32 0, align 4
@SMU_MSG_DramLogSetDramSize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_v11_0_notify_memory_pool_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_notify_memory_pool_location(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca %struct.smu_table_context*, align 8
  %5 = alloca %struct.smu_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %10 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %11 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %10, i32 0, i32 0
  store %struct.smu_table_context* %11, %struct.smu_table_context** %4, align 8
  %12 = load %struct.smu_table_context*, %struct.smu_table_context** %4, align 8
  %13 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %12, i32 0, i32 0
  store %struct.smu_table* %13, %struct.smu_table** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %15 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %20 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %1
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %89

25:                                               ; preds = %18
  %26 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %27 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = ptrtoint i32* %28 to i64
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @upper_32_bits(i64 %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @lower_32_bits(i64 %32)
  store i64 %33, i64* %8, align 8
  %34 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %35 = load i32, i32* @SMU_MSG_SetSystemVirtualDramAddrHigh, align 4
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %34, i32 %35, i64 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %89

42:                                               ; preds = %25
  %43 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %44 = load i32, i32* @SMU_MSG_SetSystemVirtualDramAddrLow, align 4
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %43, i32 %44, i64 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %89

51:                                               ; preds = %42
  %52 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %53 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i64 @upper_32_bits(i64 %55)
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i64 @lower_32_bits(i64 %57)
  store i64 %58, i64* %8, align 8
  %59 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %60 = load i32, i32* @SMU_MSG_DramLogSetDramAddrHigh, align 4
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %59, i32 %60, i64 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %51
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %89

67:                                               ; preds = %51
  %68 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %69 = load i32, i32* @SMU_MSG_DramLogSetDramAddrLow, align 4
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %68, i32 %69, i64 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %89

76:                                               ; preds = %67
  %77 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %78 = load i32, i32* @SMU_MSG_DramLogSetDramSize, align 4
  %79 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %80 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %77, i32 %78, i64 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %89

87:                                               ; preds = %76
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %85, %74, %65, %49, %40, %23
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i64 @upper_32_bits(i64) #1

declare dso_local i64 @lower_32_bits(i64) #1

declare dso_local i32 @smu_send_smc_msg_with_param(%struct.smu_context*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
