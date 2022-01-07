; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_deflate.c_zip_deflate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_deflate.c_zip_deflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_operation = type { i64, i32, i64, i32, i32 }
%struct.zip_state = type { %union.zip_zres_s, %union.zip_inst_s }
%union.zip_zres_s = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%union.zip_inst_s = type { i32 }
%struct.zip_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Zip instruction not yet completed\00", align 1
@ZIP_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Zip instruction completed successfully\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Output Truncate error\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Zip instruction failed. Code:%d\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"RAW Format: %d \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"ZLIB Format: %d \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"GZIP Format: %d \00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"LZS Format: %d \00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Unknown Format:%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"output_len (%d) < total bytes written(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zip_deflate(%struct.zip_operation* %0, %struct.zip_state* %1, %struct.zip_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zip_operation*, align 8
  %6 = alloca %struct.zip_state*, align 8
  %7 = alloca %struct.zip_device*, align 8
  %8 = alloca %union.zip_inst_s*, align 8
  %9 = alloca %union.zip_zres_s*, align 8
  %10 = alloca i32, align 4
  store %struct.zip_operation* %0, %struct.zip_operation** %5, align 8
  store %struct.zip_state* %1, %struct.zip_state** %6, align 8
  store %struct.zip_device* %2, %struct.zip_device** %7, align 8
  %11 = load %struct.zip_state*, %struct.zip_state** %6, align 8
  %12 = getelementptr inbounds %struct.zip_state, %struct.zip_state* %11, i32 0, i32 1
  store %union.zip_inst_s* %12, %union.zip_inst_s** %8, align 8
  %13 = load %struct.zip_state*, %struct.zip_state** %6, align 8
  %14 = getelementptr inbounds %struct.zip_state, %struct.zip_state* %13, i32 0, i32 0
  store %union.zip_zres_s* %14, %union.zip_zres_s** %9, align 8
  %15 = load %struct.zip_operation*, %struct.zip_operation** %5, align 8
  %16 = load %struct.zip_state*, %struct.zip_state** %6, align 8
  %17 = load %union.zip_inst_s*, %union.zip_inst_s** %8, align 8
  %18 = call i32 @prepare_zip_command(%struct.zip_operation* %15, %struct.zip_state* %16, %union.zip_inst_s* %17)
  %19 = load %struct.zip_operation*, %struct.zip_operation** %5, align 8
  %20 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.zip_device*, %struct.zip_device** %7, align 8
  %23 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = call i32 @atomic64_add(i64 %21, i32* %24)
  %26 = load %union.zip_inst_s*, %union.zip_inst_s** %8, align 8
  %27 = load %struct.zip_device*, %struct.zip_device** %7, align 8
  %28 = call i32 @zip_load_instr(%union.zip_inst_s* %26, %struct.zip_device* %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.zip_device*, %struct.zip_device** %7, align 8
  %30 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = call i32 @atomic64_inc(i32* %31)
  %33 = load %union.zip_zres_s*, %union.zip_zres_s** %9, align 8
  %34 = call i32 @zip_poll_result(%union.zip_zres_s* %33)
  %35 = load %struct.zip_device*, %struct.zip_device** %7, align 8
  %36 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = call i32 @atomic64_inc(i32* %37)
  %39 = load %union.zip_zres_s*, %union.zip_zres_s** %9, align 8
  %40 = bitcast %union.zip_zres_s* %39 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.zip_operation*, %struct.zip_operation** %5, align 8
  %44 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.zip_operation*, %struct.zip_operation** %5, align 8
  %46 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %59 [
    i32 130, label %48
    i32 129, label %51
    i32 131, label %56
  ]

48:                                               ; preds = %3
  %49 = call i32 (i8*, ...) @zip_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ZIP_ERROR, align 4
  store i32 %50, i32* %4, align 4
  br label %150

51:                                               ; preds = %3
  %52 = call i32 (i8*, ...) @zip_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.zip_device*, %struct.zip_device** %7, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @zip_update_cmd_bufs(%struct.zip_device* %53, i32 %54)
  br label %66

56:                                               ; preds = %3
  %57 = call i32 (i8*, ...) @zip_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @ZIP_ERROR, align 4
  store i32 %58, i32* %4, align 4
  br label %150

59:                                               ; preds = %3
  %60 = load %struct.zip_operation*, %struct.zip_operation** %5, align 8
  %61 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = call i32 (i8*, i64, ...) @zip_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %63)
  %65 = load i32, i32* @ZIP_ERROR, align 4
  store i32 %65, i32* %4, align 4
  br label %150

66:                                               ; preds = %51
  %67 = load %struct.zip_operation*, %struct.zip_operation** %5, align 8
  %68 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %108 [
    i32 132, label %70
    i32 128, label %81
    i32 134, label %92
    i32 133, label %103
  ]

70:                                               ; preds = %66
  %71 = load %struct.zip_operation*, %struct.zip_operation** %5, align 8
  %72 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i8*, ...) @zip_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load %union.zip_zres_s*, %union.zip_zres_s** %9, align 8
  %76 = bitcast %union.zip_zres_s* %75 to %struct.TYPE_4__*
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.zip_operation*, %struct.zip_operation** %5, align 8
  %80 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  br label %114

81:                                               ; preds = %66
  %82 = load %struct.zip_operation*, %struct.zip_operation** %5, align 8
  %83 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i8*, ...) @zip_dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  %86 = load %union.zip_zres_s*, %union.zip_zres_s** %9, align 8
  %87 = bitcast %union.zip_zres_s* %86 to %struct.TYPE_4__*
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.zip_operation*, %struct.zip_operation** %5, align 8
  %91 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  br label %114

92:                                               ; preds = %66
  %93 = load %struct.zip_operation*, %struct.zip_operation** %5, align 8
  %94 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i8*, ...) @zip_dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  %97 = load %union.zip_zres_s*, %union.zip_zres_s** %9, align 8
  %98 = bitcast %union.zip_zres_s* %97 to %struct.TYPE_4__*
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.zip_operation*, %struct.zip_operation** %5, align 8
  %102 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 8
  br label %114

103:                                              ; preds = %66
  %104 = load %struct.zip_operation*, %struct.zip_operation** %5, align 8
  %105 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i8*, ...) @zip_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %106)
  br label %114

108:                                              ; preds = %66
  %109 = load %struct.zip_operation*, %struct.zip_operation** %5, align 8
  %110 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = call i32 (i8*, i64, ...) @zip_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i64 %112)
  br label %114

114:                                              ; preds = %108, %103, %92, %81, %70
  %115 = load %union.zip_zres_s*, %union.zip_zres_s** %9, align 8
  %116 = bitcast %union.zip_zres_s* %115 to %struct.TYPE_4__*
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.zip_device*, %struct.zip_device** %7, align 8
  %120 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = call i32 @atomic64_add(i64 %118, i32* %121)
  %123 = load %struct.zip_operation*, %struct.zip_operation** %5, align 8
  %124 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %union.zip_zres_s*, %union.zip_zres_s** %9, align 8
  %127 = bitcast %union.zip_zres_s* %126 to %struct.TYPE_4__*
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp slt i64 %125, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %114
  %132 = load %struct.zip_operation*, %struct.zip_operation** %5, align 8
  %133 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load %union.zip_zres_s*, %union.zip_zres_s** %9, align 8
  %136 = bitcast %union.zip_zres_s* %135 to %struct.TYPE_4__*
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 (i8*, i64, ...) @zip_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i64 %134, i64 %138)
  %140 = load %struct.zip_operation*, %struct.zip_operation** %5, align 8
  %141 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %140, i32 0, i32 2
  store i64 0, i64* %141, align 8
  br label %149

142:                                              ; preds = %114
  %143 = load %union.zip_zres_s*, %union.zip_zres_s** %9, align 8
  %144 = bitcast %union.zip_zres_s* %143 to %struct.TYPE_4__*
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.zip_operation*, %struct.zip_operation** %5, align 8
  %148 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %147, i32 0, i32 2
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %142, %131
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %149, %59, %56, %48
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @prepare_zip_command(%struct.zip_operation*, %struct.zip_state*, %union.zip_inst_s*) #1

declare dso_local i32 @atomic64_add(i64, i32*) #1

declare dso_local i32 @zip_load_instr(%union.zip_inst_s*, %struct.zip_device*) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @zip_poll_result(%union.zip_zres_s*) #1

declare dso_local i32 @zip_dbg(i8*, ...) #1

declare dso_local i32 @zip_update_cmd_bufs(%struct.zip_device*, i32) #1

declare dso_local i32 @zip_err(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
