; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_update_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_update_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.amdgpu_device*, %struct.smu_table_context }
%struct.amdgpu_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.amdgpu_device*, i32*)* }
%struct.smu_table_context = type { i32, %struct.smu_table* }
%struct.smu_table = type { i8*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMU_MSG_SetDriverDramAddrHigh = common dso_local global i32 0, align 4
@SMU_MSG_SetDriverDramAddrLow = common dso_local global i32 0, align 4
@SMU_MSG_TransferTableDram2Smu = common dso_local global i32 0, align 4
@SMU_MSG_TransferTableSmu2Dram = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu_update_table(%struct.smu_context* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.smu_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.smu_table_context*, align 8
  %13 = alloca %struct.amdgpu_device*, align 8
  %14 = alloca %struct.smu_table*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.smu_context*, %struct.smu_context** %7, align 8
  %18 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %17, i32 0, i32 1
  store %struct.smu_table_context* %18, %struct.smu_table_context** %12, align 8
  %19 = load %struct.smu_context*, %struct.smu_context** %7, align 8
  %20 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %19, i32 0, i32 0
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %20, align 8
  store %struct.amdgpu_device* %21, %struct.amdgpu_device** %13, align 8
  store %struct.smu_table* null, %struct.smu_table** %14, align 8
  store i32 0, i32* %15, align 4
  %22 = load %struct.smu_context*, %struct.smu_context** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @smu_table_get_index(%struct.smu_context* %22, i32 %23)
  store i32 %24, i32* %16, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %5
  %28 = load i32, i32* %16, align 4
  %29 = load %struct.smu_table_context*, %struct.smu_table_context** %12, align 8
  %30 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %28, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %16, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %27, %5
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %122

39:                                               ; preds = %33
  %40 = load %struct.smu_table_context*, %struct.smu_table_context** %12, align 8
  %41 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %40, i32 0, i32 1
  %42 = load %struct.smu_table*, %struct.smu_table** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %42, i64 %44
  store %struct.smu_table* %45, %struct.smu_table** %14, align 8
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %39
  %49 = load %struct.smu_table*, %struct.smu_table** %14, align 8
  %50 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load %struct.smu_table*, %struct.smu_table** %14, align 8
  %54 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @memcpy(i8* %51, i8* %52, i32 %55)
  br label %57

57:                                               ; preds = %48, %39
  %58 = load %struct.smu_context*, %struct.smu_context** %7, align 8
  %59 = load i32, i32* @SMU_MSG_SetDriverDramAddrHigh, align 4
  %60 = load %struct.smu_table*, %struct.smu_table** %14, align 8
  %61 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @upper_32_bits(i32 %62)
  %64 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %58, i32 %59, i32 %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %6, align 4
  br label %122

69:                                               ; preds = %57
  %70 = load %struct.smu_context*, %struct.smu_context** %7, align 8
  %71 = load i32, i32* @SMU_MSG_SetDriverDramAddrLow, align 4
  %72 = load %struct.smu_table*, %struct.smu_table** %14, align 8
  %73 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @lower_32_bits(i32 %74)
  %76 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %70, i32 %71, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load i32, i32* %15, align 4
  store i32 %80, i32* %6, align 4
  br label %122

81:                                               ; preds = %69
  %82 = load %struct.smu_context*, %struct.smu_context** %7, align 8
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @SMU_MSG_TransferTableDram2Smu, align 4
  br label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @SMU_MSG_TransferTableSmu2Dram, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %9, align 4
  %93 = and i32 %92, 65535
  %94 = shl i32 %93, 16
  %95 = or i32 %91, %94
  %96 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %82, i32 %90, i32 %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* %6, align 4
  br label %122

101:                                              ; preds = %89
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  %103 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32 (%struct.amdgpu_device*, i32*)*, i32 (%struct.amdgpu_device*, i32*)** %105, align 8
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  %108 = call i32 %106(%struct.amdgpu_device* %107, i32* null)
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %101
  %112 = load i8*, i8** %10, align 8
  %113 = load %struct.smu_table*, %struct.smu_table** %14, align 8
  %114 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.smu_table*, %struct.smu_table** %14, align 8
  %117 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @memcpy(i8* %112, i8* %115, i32 %118)
  br label %120

120:                                              ; preds = %111, %101
  %121 = load i32, i32* %15, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %120, %99, %79, %67, %36
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @smu_table_get_index(%struct.smu_context*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @smu_send_smc_msg_with_param(%struct.smu_context*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
