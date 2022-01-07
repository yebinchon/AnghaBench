; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_set_mpegtei_handling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_set_mpegtei_handling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { i64, %struct.i2c_device_addr* }
%struct.i2c_device_addr = type { i32 }
%struct.drxj_data = type { i64 }

@FEC_OC_DPR_MODE__A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@FEC_OC_SNC_MODE__A = common dso_local global i32 0, align 4
@FEC_OC_EMS_MODE__A = common dso_local global i32 0, align 4
@FEC_OC_DPR_MODE_ERR_DISABLE__M = common dso_local global i32 0, align 4
@FEC_OC_SNC_MODE_ERROR_CTL__M = common dso_local global i32 0, align 4
@FEC_OC_SNC_MODE_CORR_DISABLE__M = common dso_local global i32 0, align 4
@FEC_OC_EMS_MODE_MODE__M = common dso_local global i32 0, align 4
@FEC_OC_SNC_MODE_ERROR_CTL__B = common dso_local global i32 0, align 4
@FEC_OC_EMS_MODE_MODE__B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*)* @set_mpegtei_handling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_mpegtei_handling(%struct.drx_demod_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drx_demod_instance*, align 8
  %4 = alloca %struct.drxj_data*, align 8
  %5 = alloca %struct.i2c_device_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %3, align 8
  store %struct.drxj_data* null, %struct.drxj_data** %4, align 8
  store %struct.i2c_device_addr* null, %struct.i2c_device_addr** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %11 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %10, i32 0, i32 1
  %12 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %11, align 8
  store %struct.i2c_device_addr* %12, %struct.i2c_device_addr** %5, align 8
  %13 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %14 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.drxj_data*
  store %struct.drxj_data* %16, %struct.drxj_data** %4, align 8
  %17 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %5, align 8
  %18 = load i32, i32* @FEC_OC_DPR_MODE__A, align 4
  %19 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %17, i32 %18, i32* %7, i32 0)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %107

25:                                               ; preds = %1
  %26 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %5, align 8
  %27 = load i32, i32* @FEC_OC_SNC_MODE__A, align 4
  %28 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %26, i32 %27, i32* %8, i32 0)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %107

34:                                               ; preds = %25
  %35 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %5, align 8
  %36 = load i32, i32* @FEC_OC_EMS_MODE__A, align 4
  %37 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %35, i32 %36, i32* %9, i32 0)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %107

43:                                               ; preds = %34
  %44 = load i32, i32* @FEC_OC_DPR_MODE_ERR_DISABLE__M, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @FEC_OC_SNC_MODE_ERROR_CTL__M, align 4
  %49 = load i32, i32* @FEC_OC_SNC_MODE_CORR_DISABLE__M, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @FEC_OC_EMS_MODE_MODE__M, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load %struct.drxj_data*, %struct.drxj_data** %4, align 8
  %59 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %43
  %63 = load i32, i32* @FEC_OC_DPR_MODE_ERR_DISABLE__M, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* @FEC_OC_SNC_MODE_CORR_DISABLE__M, align 4
  %67 = load i32, i32* @FEC_OC_SNC_MODE_ERROR_CTL__B, align 4
  %68 = shl i32 2, %67
  %69 = or i32 %66, %68
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* @FEC_OC_EMS_MODE_MODE__B, align 4
  %73 = shl i32 1, %72
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %62, %43
  %77 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %5, align 8
  %78 = load i32, i32* @FEC_OC_DPR_MODE__A, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %77, i32 %78, i32 %79, i32 0)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %107

86:                                               ; preds = %76
  %87 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %5, align 8
  %88 = load i32, i32* @FEC_OC_SNC_MODE__A, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %87, i32 %88, i32 %89, i32 0)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %107

96:                                               ; preds = %86
  %97 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %5, align 8
  %98 = load i32, i32* @FEC_OC_EMS_MODE__A, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %97, i32 %98, i32 %99, i32 0)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %107

106:                                              ; preds = %96
  store i32 0, i32* %2, align 4
  br label %109

107:                                              ; preds = %103, %93, %83, %40, %31, %22
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %106
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @drxj_dap_read_reg16(%struct.i2c_device_addr*, i32, i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @drxj_dap_write_reg16(%struct.i2c_device_addr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
