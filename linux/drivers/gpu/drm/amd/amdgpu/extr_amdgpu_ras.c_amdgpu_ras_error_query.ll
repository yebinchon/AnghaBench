; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_error_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_error_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32 (%struct.amdgpu_device*, %struct.ras_err_data*)* }
%struct.ras_err_data = type { i64, i64, i32*, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.amdgpu_device*, %struct.ras_err_data*)* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.amdgpu_device*, %struct.ras_err_data*)*, i32 (%struct.amdgpu_device*, %struct.ras_err_data*)* }
%struct.ras_query_if = type { %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.ras_manager = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%ld correctable errors detected in %s block\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"%ld uncorrectable errors detected in %s block\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ras_error_query(%struct.amdgpu_device* %0, %struct.ras_query_if* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.ras_query_if*, align 8
  %6 = alloca %struct.ras_manager*, align 8
  %7 = alloca %struct.ras_err_data, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.ras_query_if* %1, %struct.ras_query_if** %5, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %9 = load %struct.ras_query_if*, %struct.ras_query_if** %5, align 8
  %10 = getelementptr inbounds %struct.ras_query_if, %struct.ras_query_if* %9, i32 0, i32 0
  %11 = call %struct.ras_manager* @amdgpu_ras_find_obj(%struct.amdgpu_device* %8, %struct.TYPE_14__* %10)
  store %struct.ras_manager* %11, %struct.ras_manager** %6, align 8
  %12 = bitcast %struct.ras_err_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 40, i1 false)
  %13 = load %struct.ras_manager*, %struct.ras_manager** %6, align 8
  %14 = icmp ne %struct.ras_manager* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %160

18:                                               ; preds = %2
  %19 = load %struct.ras_query_if*, %struct.ras_query_if** %5, align 8
  %20 = getelementptr inbounds %struct.ras_query_if, %struct.ras_query_if* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %92 [
    i32 128, label %23
    i32 130, label %58
    i32 129, label %76
  ]

23:                                               ; preds = %18
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32 (%struct.amdgpu_device*, %struct.ras_err_data*)*, i32 (%struct.amdgpu_device*, %struct.ras_err_data*)** %28, align 8
  %30 = icmp ne i32 (%struct.amdgpu_device*, %struct.ras_err_data*)* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32 (%struct.amdgpu_device*, %struct.ras_err_data*)*, i32 (%struct.amdgpu_device*, %struct.ras_err_data*)** %36, align 8
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %39 = call i32 %37(%struct.amdgpu_device* %38, %struct.ras_err_data* %7)
  br label %40

40:                                               ; preds = %31, %23
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32 (%struct.amdgpu_device*, %struct.ras_err_data*)*, i32 (%struct.amdgpu_device*, %struct.ras_err_data*)** %45, align 8
  %47 = icmp ne i32 (%struct.amdgpu_device*, %struct.ras_err_data*)* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32 (%struct.amdgpu_device*, %struct.ras_err_data*)*, i32 (%struct.amdgpu_device*, %struct.ras_err_data*)** %53, align 8
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %56 = call i32 %54(%struct.amdgpu_device* %55, %struct.ras_err_data* %7)
  br label %57

57:                                               ; preds = %48, %40
  br label %93

58:                                               ; preds = %18
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32 (%struct.amdgpu_device*, %struct.ras_err_data*)*, i32 (%struct.amdgpu_device*, %struct.ras_err_data*)** %63, align 8
  %65 = icmp ne i32 (%struct.amdgpu_device*, %struct.ras_err_data*)* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %58
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32 (%struct.amdgpu_device*, %struct.ras_err_data*)*, i32 (%struct.amdgpu_device*, %struct.ras_err_data*)** %71, align 8
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %74 = call i32 %72(%struct.amdgpu_device* %73, %struct.ras_err_data* %7)
  br label %75

75:                                               ; preds = %66, %58
  br label %93

76:                                               ; preds = %18
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 1
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32 (%struct.amdgpu_device*, %struct.ras_err_data*)*, i32 (%struct.amdgpu_device*, %struct.ras_err_data*)** %80, align 8
  %82 = icmp ne i32 (%struct.amdgpu_device*, %struct.ras_err_data*)* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %85 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %84, i32 0, i32 1
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32 (%struct.amdgpu_device*, %struct.ras_err_data*)*, i32 (%struct.amdgpu_device*, %struct.ras_err_data*)** %87, align 8
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %90 = call i32 %88(%struct.amdgpu_device* %89, %struct.ras_err_data* %7)
  br label %91

91:                                               ; preds = %83, %76
  br label %93

92:                                               ; preds = %18
  br label %93

93:                                               ; preds = %92, %91, %75, %57
  %94 = getelementptr inbounds %struct.ras_err_data, %struct.ras_err_data* %7, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.ras_manager*, %struct.ras_manager** %6, align 8
  %97 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %95
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 4
  %103 = getelementptr inbounds %struct.ras_err_data, %struct.ras_err_data* %7, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.ras_manager*, %struct.ras_manager** %6, align 8
  %106 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %104
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %107, align 4
  %112 = load %struct.ras_manager*, %struct.ras_manager** %6, align 8
  %113 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ras_query_if*, %struct.ras_query_if** %5, align 8
  %117 = getelementptr inbounds %struct.ras_query_if, %struct.ras_query_if* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load %struct.ras_manager*, %struct.ras_manager** %6, align 8
  %119 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ras_query_if*, %struct.ras_query_if** %5, align 8
  %123 = getelementptr inbounds %struct.ras_query_if, %struct.ras_query_if* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = getelementptr inbounds %struct.ras_err_data, %struct.ras_err_data* %7, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %93
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %129 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.ras_manager*, %struct.ras_manager** %6, align 8
  %132 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ras_query_if*, %struct.ras_query_if** %5, align 8
  %136 = getelementptr inbounds %struct.ras_query_if, %struct.ras_query_if* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ras_block_str(i32 %138)
  %140 = call i32 @dev_info(i32 %130, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %134, i32 %139)
  br label %141

141:                                              ; preds = %127, %93
  %142 = getelementptr inbounds %struct.ras_err_data, %struct.ras_err_data* %7, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %141
  %146 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %147 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.ras_manager*, %struct.ras_manager** %6, align 8
  %150 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ras_query_if*, %struct.ras_query_if** %5, align 8
  %154 = getelementptr inbounds %struct.ras_query_if, %struct.ras_query_if* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @ras_block_str(i32 %156)
  %158 = call i32 @dev_info(i32 %148, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %152, i32 %157)
  br label %159

159:                                              ; preds = %145, %141
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %159, %15
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local %struct.ras_manager* @amdgpu_ras_find_obj(%struct.amdgpu_device*, %struct.TYPE_14__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @ras_block_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
