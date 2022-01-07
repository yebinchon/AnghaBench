; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_in_value_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_in_value_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fschmd_data = type { i64, i32* }
%struct.TYPE_2__ = type { i32 }

@__const.in_value_show.max_reading = private unnamed_addr constant [3 x i32] [i32 14200, i32 6600, i32 3300], align 4
@fscher = common dso_local global i64 0, align 8
@fschrc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@dmi_vref = common dso_local global i32 0, align 4
@dmi_mult = common dso_local global i32* null, align 8
@dmi_offset = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @in_value_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_value_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fschmd_data*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = bitcast [3 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast ([3 x i32]* @__const.in_value_show.max_reading to i8*), i64 12, i1 false)
  %12 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %13 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.fschmd_data* @fschmd_update_device(%struct.device* %16)
  store %struct.fschmd_data* %17, %struct.fschmd_data** %10, align 8
  %18 = load %struct.fschmd_data*, %struct.fschmd_data** %10, align 8
  %19 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @fscher, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %3
  %24 = load %struct.fschmd_data*, %struct.fschmd_data** %10, align 8
  %25 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @fschrc, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %23, %3
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.fschmd_data*, %struct.fschmd_data** %10, align 8
  %32 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @dmi_vref, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32*, i32** @dmi_mult, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %39, %44
  %46 = sdiv i32 %45, 255
  %47 = load i32*, i32** @dmi_offset, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %46, %51
  %53 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 %53, i32* %4, align 4
  br label %71

54:                                               ; preds = %23
  %55 = load i8*, i8** %7, align 8
  %56 = load %struct.fschmd_data*, %struct.fschmd_data** %10, align 8
  %57 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %62, %66
  %68 = add nsw i32 %67, 128
  %69 = sdiv i32 %68, 255
  %70 = call i32 @sprintf(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %54, %29
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #2

declare dso_local %struct.fschmd_data* @fschmd_update_device(%struct.device*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
