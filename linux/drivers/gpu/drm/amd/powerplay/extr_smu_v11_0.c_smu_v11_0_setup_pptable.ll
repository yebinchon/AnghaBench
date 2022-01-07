; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_setup_pptable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_setup_pptable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.TYPE_10__, %struct.amdgpu_device* }
%struct.TYPE_10__ = type { i32, i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.amdgpu_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.smc_firmware_header_v1_0 = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@atom_master_list_of_data_tables_v2_1 = common dso_local global i32 0, align 4
@powerplayinfo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_v11_0_setup_pptable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_setup_pptable(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.smc_firmware_header_v1_0*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %15 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %16 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %15, i32 0, i32 1
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  store %struct.amdgpu_device* %17, %struct.amdgpu_device** %4, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.smc_firmware_header_v1_0*
  store %struct.smc_firmware_header_v1_0* %24, %struct.smc_firmware_header_v1_0** %5, align 8
  %25 = load %struct.smc_firmware_header_v1_0*, %struct.smc_firmware_header_v1_0** %5, align 8
  %26 = getelementptr inbounds %struct.smc_firmware_header_v1_0, %struct.smc_firmware_header_v1_0* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load %struct.smc_firmware_header_v1_0*, %struct.smc_firmware_header_v1_0** %5, align 8
  %31 = getelementptr inbounds %struct.smc_firmware_header_v1_0, %struct.smc_firmware_header_v1_0* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %66

37:                                               ; preds = %1
  %38 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %39 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %37
  %45 = load i32, i32* %14, align 4
  switch i32 %45, label %57 [
    i32 0, label %46
    i32 1, label %49
  ]

46:                                               ; preds = %44
  %47 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %48 = call i32 @smu_v11_0_set_pptable_v2_0(%struct.smu_context* %47, i8** %12, i32* %8)
  store i32 %48, i32* %6, align 4
  br label %60

49:                                               ; preds = %44
  %50 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %51 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %52 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @smu_v11_0_set_pptable_v2_1(%struct.smu_context* %50, i8** %12, i32* %8, i64 %55)
  store i32 %56, i32* %6, align 4
  br label %60

57:                                               ; preds = %44
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %57, %49, %46
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %103

65:                                               ; preds = %60
  br label %80

66:                                               ; preds = %37, %1
  %67 = load i32, i32* @atom_master_list_of_data_tables_v2_1, align 4
  %68 = load i32, i32* @powerplayinfo, align 4
  %69 = call i32 @get_index_into_master_table(i32 %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %71 = load i32, i32* %7, align 4
  %72 = bitcast i8** %12 to i32**
  %73 = call i32 @smu_get_atom_data_table(%struct.smu_context* %70, i32 %71, i32* %9, i32* %10, i32* %11, i32** %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %103

78:                                               ; preds = %66
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %78, %65
  %81 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %82 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %80
  %87 = load i8*, i8** %12, align 8
  %88 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %89 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  store i8* %87, i8** %90, align 8
  br label %91

91:                                               ; preds = %86, %80
  %92 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %93 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %100 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  br label %102

102:                                              ; preds = %97, %91
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %76, %63
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @smu_v11_0_set_pptable_v2_0(%struct.smu_context*, i8**, i32*) #1

declare dso_local i32 @smu_v11_0_set_pptable_v2_1(%struct.smu_context*, i8**, i32*, i64) #1

declare dso_local i32 @get_index_into_master_table(i32, i32) #1

declare dso_local i32 @smu_get_atom_data_table(%struct.smu_context*, i32, i32*, i32*, i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
