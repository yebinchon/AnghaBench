; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_power_down_atv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_power_down_atv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { %struct.i2c_device_addr* }
%struct.i2c_device_addr = type { i32 }
%struct.drxjscu_cmd = type { i32, i32, i32*, i32*, i64, i32*, i32*, i32, i32, i32 }

@SCU_RAM_COMMAND_STANDARD_ATV = common dso_local global i32 0, align 4
@SCU_RAM_COMMAND_CMD_DEMOD_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@ATV_TOP_STDBY__A = common dso_local global i32 0, align 4
@ATV_TOP_STDBY_SIF_STDBY_STANDBY = common dso_local global i32 0, align 4
@ATV_TOP_STDBY_CVBS_STDBY_A2_ACTIVE = common dso_local global i32 0, align 4
@ATV_COMM_EXEC__A = common dso_local global i32 0, align 4
@ATV_COMM_EXEC_STOP = common dso_local global i32 0, align 4
@IQM_COMM_EXEC__A = common dso_local global i32 0, align 4
@IQM_COMM_EXEC_STOP = common dso_local global i32 0, align 4
@IQM_FS_COMM_EXEC__A = common dso_local global i32 0, align 4
@IQM_FS_COMM_EXEC_STOP = common dso_local global i32 0, align 4
@IQM_FD_COMM_EXEC__A = common dso_local global i32 0, align 4
@IQM_FD_COMM_EXEC_STOP = common dso_local global i32 0, align 4
@IQM_RC_COMM_EXEC__A = common dso_local global i32 0, align 4
@IQM_RC_COMM_EXEC_STOP = common dso_local global i32 0, align 4
@IQM_RT_COMM_EXEC__A = common dso_local global i32 0, align 4
@IQM_RT_COMM_EXEC_STOP = common dso_local global i32 0, align 4
@IQM_CF_COMM_EXEC__A = common dso_local global i32 0, align 4
@IQM_CF_COMM_EXEC_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*, i32, i32)* @power_down_atv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_down_atv(%struct.drx_demod_instance* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drx_demod_instance*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_device_addr*, align 8
  %9 = alloca %struct.drxjscu_cmd, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %13 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %12, i32 0, i32 0
  %14 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %13, align 8
  store %struct.i2c_device_addr* %14, %struct.i2c_device_addr** %8, align 8
  %15 = bitcast %struct.drxjscu_cmd* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 64, i1 false)
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @SCU_RAM_COMMAND_STANDARD_ATV, align 4
  %17 = load i32, i32* @SCU_RAM_COMMAND_CMD_DEMOD_STOP, align 4
  %18 = or i32 %16, %17
  %19 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %9, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %9, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %9, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %9, i32 0, i32 3
  store i32* null, i32** %22, align 8
  %23 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %9, i32 0, i32 2
  store i32* %11, i32** %23, align 8
  %24 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %25 = call i32 @scu_command(%struct.i2c_device_addr* %24, %struct.drxjscu_cmd* %9)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %136

31:                                               ; preds = %3
  %32 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %33 = load i32, i32* @ATV_TOP_STDBY__A, align 4
  %34 = load i32, i32* @ATV_TOP_STDBY_SIF_STDBY_STANDBY, align 4
  %35 = load i32, i32* @ATV_TOP_STDBY_CVBS_STDBY_A2_ACTIVE, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %32, i32 %33, i32 %37, i32 0)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %136

44:                                               ; preds = %31
  %45 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %46 = load i32, i32* @ATV_COMM_EXEC__A, align 4
  %47 = load i32, i32* @ATV_COMM_EXEC_STOP, align 4
  %48 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %45, i32 %46, i32 %47, i32 0)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %136

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %54
  %58 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %59 = load i32, i32* @IQM_COMM_EXEC__A, align 4
  %60 = load i32, i32* @IQM_COMM_EXEC_STOP, align 4
  %61 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %58, i32 %59, i32 %60, i32 0)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %136

67:                                               ; preds = %57
  %68 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %69 = call i32 @set_iqm_af(%struct.drx_demod_instance* %68, i32 0)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %136

75:                                               ; preds = %67
  br label %127

76:                                               ; preds = %54
  %77 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %78 = load i32, i32* @IQM_FS_COMM_EXEC__A, align 4
  %79 = load i32, i32* @IQM_FS_COMM_EXEC_STOP, align 4
  %80 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %77, i32 %78, i32 %79, i32 0)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %136

86:                                               ; preds = %76
  %87 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %88 = load i32, i32* @IQM_FD_COMM_EXEC__A, align 4
  %89 = load i32, i32* @IQM_FD_COMM_EXEC_STOP, align 4
  %90 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %87, i32 %88, i32 %89, i32 0)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %136

96:                                               ; preds = %86
  %97 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %98 = load i32, i32* @IQM_RC_COMM_EXEC__A, align 4
  %99 = load i32, i32* @IQM_RC_COMM_EXEC_STOP, align 4
  %100 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %97, i32 %98, i32 %99, i32 0)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %136

106:                                              ; preds = %96
  %107 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %108 = load i32, i32* @IQM_RT_COMM_EXEC__A, align 4
  %109 = load i32, i32* @IQM_RT_COMM_EXEC_STOP, align 4
  %110 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %107, i32 %108, i32 %109, i32 0)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %114)
  br label %136

116:                                              ; preds = %106
  %117 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %118 = load i32, i32* @IQM_CF_COMM_EXEC__A, align 4
  %119 = load i32, i32* @IQM_CF_COMM_EXEC_STOP, align 4
  %120 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %117, i32 %118, i32 %119, i32 0)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %124)
  br label %136

126:                                              ; preds = %116
  br label %127

127:                                              ; preds = %126, %75
  %128 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %129 = call i32 @power_down_aud(%struct.drx_demod_instance* %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %133)
  br label %136

135:                                              ; preds = %127
  store i32 0, i32* %4, align 4
  br label %138

136:                                              ; preds = %132, %123, %113, %103, %93, %83, %72, %64, %51, %41, %28
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %136, %135
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @scu_command(%struct.i2c_device_addr*, %struct.drxjscu_cmd*) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @drxj_dap_write_reg16(%struct.i2c_device_addr*, i32, i32, i32) #2

declare dso_local i32 @set_iqm_af(%struct.drx_demod_instance*, i32) #2

declare dso_local i32 @power_down_aud(%struct.drx_demod_instance*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
