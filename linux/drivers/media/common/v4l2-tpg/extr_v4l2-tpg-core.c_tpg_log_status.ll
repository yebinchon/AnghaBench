; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg_data = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"tpg source WxH: %ux%u (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"tpg field: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"tpg crop: %ux%u@%dx%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"tpg compose: %ux%u@%dx%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"tpg colorspace: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"tpg transfer function: %d/%d\0A\00", align 1
@TGP_COLOR_ENC_HSV = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"tpg HSV encoding: %d/%d\0A\00", align 1
@TGP_COLOR_ENC_YCBCR = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"tpg Y'CbCr encoding: %d/%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"tpg quantization: %d/%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"tpg RGB range: %d/%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tpg_log_status(%struct.tpg_data* %0) #0 {
  %2 = alloca %struct.tpg_data*, align 8
  store %struct.tpg_data* %0, %struct.tpg_data** %2, align 8
  %3 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %4 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %3, i32 0, i32 16
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %7 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %6, i32 0, i32 15
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %10 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @tpg_color_enc_str(i64 %11)
  %13 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8, i32 %12)
  %14 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %15 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %14, i32 0, i32 14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %19 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %18, i32 0, i32 13
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %23 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %22, i32 0, i32 13
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %27 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %26, i32 0, i32 13
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %31 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %30, i32 0, i32 13
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %21, i32 %25, i32 %29, i32 %33)
  %35 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %36 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %35, i32 0, i32 12
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %40 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %39, i32 0, i32 12
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %44 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %43, i32 0, i32 12
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %48 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %47, i32 0, i32 12
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %38, i32 %42, i32 %46, i32 %50)
  %52 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %53 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %52, i32 0, i32 11
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %57 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %60 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %58, i32 %61)
  %63 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %64 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TGP_COLOR_ENC_HSV, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %1
  %69 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %70 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %73 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %71, i32 %74)
  br label %91

76:                                               ; preds = %1
  %77 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %78 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TGP_COLOR_ENC_YCBCR, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %84 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %87 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %82, %76
  br label %91

91:                                               ; preds = %90, %68
  %92 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %93 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %96 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %94, i32 %97)
  %99 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %100 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %103 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %101, i32 %104)
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @tpg_color_enc_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
