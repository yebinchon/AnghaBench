; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_emulated_link_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_emulated_link_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i32, %struct.dc_context*, %struct.dc_sink*, i32 }
%struct.dc_context = type { i32 }
%struct.dc_sink = type { i32 }
%struct.dc_sink_init_data = type { i32, %struct.dc_link*, i32 }
%struct.display_sink_capability = type { i32, i8*, i32 }

@dc_connection_none = common dso_local global i32 0, align 4
@DDC_TRANSACTION_TYPE_I2C = common dso_local global i8* null, align 8
@DDC_TRANSACTION_TYPE_I2C_OVER_AUX = common dso_local global i8* null, align 8
@SIGNAL_TYPE_VIRTUAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Invalid connector type! signal:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to create sink!\0A\00", align 1
@EDID_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Failed to read EDID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_link*)* @emulated_link_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emulated_link_detect(%struct.dc_link* %0) #0 {
  %2 = alloca %struct.dc_link*, align 8
  %3 = alloca %struct.dc_sink_init_data, align 8
  %4 = alloca %struct.display_sink_capability, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_context*, align 8
  %7 = alloca %struct.dc_sink*, align 8
  %8 = alloca %struct.dc_sink*, align 8
  store %struct.dc_link* %0, %struct.dc_link** %2, align 8
  %9 = bitcast %struct.dc_sink_init_data* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = bitcast %struct.display_sink_capability* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %12 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %11, i32 0, i32 1
  %13 = load %struct.dc_context*, %struct.dc_context** %12, align 8
  store %struct.dc_context* %13, %struct.dc_context** %6, align 8
  store %struct.dc_sink* null, %struct.dc_sink** %7, align 8
  store %struct.dc_sink* null, %struct.dc_sink** %8, align 8
  %14 = load i32, i32* @dc_connection_none, align 4
  %15 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %16 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %18 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %17, i32 0, i32 2
  %19 = load %struct.dc_sink*, %struct.dc_sink** %18, align 8
  store %struct.dc_sink* %19, %struct.dc_sink** %8, align 8
  %20 = load %struct.dc_sink*, %struct.dc_sink** %8, align 8
  %21 = icmp ne %struct.dc_sink* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.dc_sink*, %struct.dc_sink** %8, align 8
  %24 = call i32 @dc_sink_retain(%struct.dc_sink* %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %27 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %54 [
    i32 129, label %29
    i32 131, label %33
    i32 132, label %37
    i32 128, label %41
    i32 130, label %45
    i32 133, label %49
  ]

29:                                               ; preds = %25
  %30 = load i8*, i8** @DDC_TRANSACTION_TYPE_I2C, align 8
  %31 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %4, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %4, i32 0, i32 0
  store i32 129, i32* %32, align 8
  br label %59

33:                                               ; preds = %25
  %34 = load i8*, i8** @DDC_TRANSACTION_TYPE_I2C, align 8
  %35 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %4, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %4, i32 0, i32 0
  store i32 131, i32* %36, align 8
  br label %59

37:                                               ; preds = %25
  %38 = load i8*, i8** @DDC_TRANSACTION_TYPE_I2C, align 8
  %39 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %4, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %4, i32 0, i32 0
  store i32 132, i32* %40, align 8
  br label %59

41:                                               ; preds = %25
  %42 = load i8*, i8** @DDC_TRANSACTION_TYPE_I2C, align 8
  %43 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %4, i32 0, i32 1
  store i8* %42, i8** %43, align 8
  %44 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %4, i32 0, i32 0
  store i32 128, i32* %44, align 8
  br label %59

45:                                               ; preds = %25
  %46 = load i8*, i8** @DDC_TRANSACTION_TYPE_I2C_OVER_AUX, align 8
  %47 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %4, i32 0, i32 1
  store i8* %46, i8** %47, align 8
  %48 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %4, i32 0, i32 0
  store i32 130, i32* %48, align 8
  br label %59

49:                                               ; preds = %25
  %50 = load i8*, i8** @DDC_TRANSACTION_TYPE_I2C_OVER_AUX, align 8
  %51 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %4, i32 0, i32 1
  store i8* %50, i8** %51, align 8
  %52 = load i32, i32* @SIGNAL_TYPE_VIRTUAL, align 4
  %53 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %4, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  br label %59

54:                                               ; preds = %25
  %55 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %56 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, ...) @DC_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %85

59:                                               ; preds = %49, %45, %41, %37, %33, %29
  %60 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %61 = getelementptr inbounds %struct.dc_sink_init_data, %struct.dc_sink_init_data* %3, i32 0, i32 1
  store %struct.dc_link* %60, %struct.dc_link** %61, align 8
  %62 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %4, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.dc_sink_init_data, %struct.dc_sink_init_data* %3, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  %65 = call %struct.dc_sink* @dc_sink_create(%struct.dc_sink_init_data* %3)
  store %struct.dc_sink* %65, %struct.dc_sink** %7, align 8
  %66 = load %struct.dc_sink*, %struct.dc_sink** %7, align 8
  %67 = icmp ne %struct.dc_sink* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %59
  %69 = call i32 (i8*, ...) @DC_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %85

70:                                               ; preds = %59
  %71 = load %struct.dc_sink*, %struct.dc_sink** %7, align 8
  %72 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %73 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %72, i32 0, i32 2
  store %struct.dc_sink* %71, %struct.dc_sink** %73, align 8
  %74 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %75 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %74, i32 0, i32 1
  %76 = load %struct.dc_context*, %struct.dc_context** %75, align 8
  %77 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %78 = load %struct.dc_sink*, %struct.dc_sink** %7, align 8
  %79 = call i32 @dm_helpers_read_local_edid(%struct.dc_context* %76, %struct.dc_link* %77, %struct.dc_sink* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @EDID_OK, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %70
  %84 = call i32 (i8*, ...) @DC_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %85

85:                                               ; preds = %54, %68, %83, %70
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dc_sink_retain(%struct.dc_sink*) #2

declare dso_local i32 @DC_ERROR(i8*, ...) #2

declare dso_local %struct.dc_sink* @dc_sink_create(%struct.dc_sink_init_data*) #2

declare dso_local i32 @dm_helpers_read_local_edid(%struct.dc_context*, %struct.dc_link*, %struct.dc_sink*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
