; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_get_sig_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_get_sig_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { %struct.i2c_device_addr* }
%struct.i2c_device_addr = type { i32 }

@IQM_AF_AGC_IF__A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@IQM_AF_AGC_IF__M = common dso_local global i32 0, align 4
@IQM_AF_AGC_RF__A = common dso_local global i32 0, align 4
@IQM_AF_AGC_RF__M = common dso_local global i32 0, align 4
@DRXJ_AGC_SNS = common dso_local global i32 0, align 4
@DRXJ_AGC_TOP = common dso_local global i32 0, align 4
@DRXJ_RFAGC_MAX = common dso_local global i32 0, align 4
@DRXJ_RFAGC_MIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"error: rf_agc_max == rf_agc_min\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"error: if_agc_top == if_agc_sns\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"error: if_agc_sns is zero!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*, i32*)* @get_sig_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sig_strength(%struct.drx_demod_instance* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drx_demod_instance*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.i2c_device_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %15 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %14, i32 0, i32 0
  %16 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %15, align 8
  store %struct.i2c_device_addr* %16, %struct.i2c_device_addr** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %18 = load i32, i32* @IQM_AF_AGC_IF__A, align 4
  %19 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %17, i32 %18, i32* %9, i32 0)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %125

25:                                               ; preds = %2
  %26 = load i32, i32* @IQM_AF_AGC_IF__M, align 4
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %30 = load i32, i32* @IQM_AF_AGC_RF__A, align 4
  %31 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %29, i32 %30, i32* %8, i32 0)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %125

37:                                               ; preds = %25
  %38 = load i32, i32* @IQM_AF_AGC_RF__M, align 4
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @DRXJ_AGC_SNS, align 4
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* @DRXJ_AGC_TOP, align 4
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* @DRXJ_RFAGC_MAX, align 4
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* @DRXJ_RFAGC_MIN, align 4
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %81

48:                                               ; preds = %37
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32*, i32** %5, align 8
  store i32 100, i32* %53, align 4
  br label %80

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %127

66:                                               ; preds = %58
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %13, align 4
  %69 = sub nsw i32 %67, %68
  %70 = mul nsw i32 25, %69
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %13, align 4
  %73 = sub nsw i32 %71, %72
  %74 = sdiv i32 %70, %73
  %75 = add nsw i32 75, %74
  %76 = load i32*, i32** %5, align 8
  store i32 %75, i32* %76, align 4
  br label %79

77:                                               ; preds = %54
  %78 = load i32*, i32** %5, align 8
  store i32 75, i32* %78, align 4
  br label %79

79:                                               ; preds = %77, %66
  br label %80

80:                                               ; preds = %79, %52
  br label %118

81:                                               ; preds = %37
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %81
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %127

93:                                               ; preds = %85
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %10, align 4
  %96 = sub nsw i32 %94, %95
  %97 = mul nsw i32 55, %96
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %10, align 4
  %100 = sub nsw i32 %98, %99
  %101 = sdiv i32 %97, %100
  %102 = add nsw i32 20, %101
  %103 = load i32*, i32** %5, align 8
  store i32 %102, i32* %103, align 4
  br label %117

104:                                              ; preds = %81
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %127

111:                                              ; preds = %104
  %112 = load i32, i32* %9, align 4
  %113 = mul nsw i32 20, %112
  %114 = load i32, i32* %10, align 4
  %115 = sdiv i32 %113, %114
  %116 = load i32*, i32** %5, align 8
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %111, %93
  br label %118

118:                                              ; preds = %117, %80
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* %119, align 4
  %121 = icmp sle i32 %120, 7
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32*, i32** %5, align 8
  store i32 0, i32* %123, align 4
  br label %124

124:                                              ; preds = %122, %118
  store i32 0, i32* %3, align 4
  br label %127

125:                                              ; preds = %34, %22
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %124, %107, %89, %62
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @drxj_dap_read_reg16(%struct.i2c_device_addr*, i32, i32*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
