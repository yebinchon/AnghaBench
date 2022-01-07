; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_power_down_qam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_power_down_qam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { %struct.drx_common_attr*, %struct.i2c_device_addr* }
%struct.drx_common_attr = type { i32 }
%struct.i2c_device_addr = type { i32 }
%struct.drxjscu_cmd = type { i32, i32, i32*, i32*, i64, i32*, i32*, i32, i32, i32 }
%struct.drx_cfg_mpeg_output = type { i32 }

@FEC_COMM_EXEC__A = common dso_local global i32 0, align 4
@FEC_COMM_EXEC_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@QAM_COMM_EXEC__A = common dso_local global i32 0, align 4
@QAM_COMM_EXEC_STOP = common dso_local global i32 0, align 4
@SCU_RAM_COMMAND_STANDARD_QAM = common dso_local global i32 0, align 4
@SCU_RAM_COMMAND_CMD_DEMOD_STOP = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*, i32)* @power_down_qam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_down_qam(%struct.drx_demod_instance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drx_demod_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drxjscu_cmd, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_device_addr*, align 8
  %9 = alloca %struct.drx_cfg_mpeg_output, align 4
  %10 = alloca %struct.drx_common_attr*, align 8
  %11 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = bitcast %struct.drxjscu_cmd* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 64, i1 false)
  %13 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %14 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %13, i32 0, i32 1
  %15 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %14, align 8
  store %struct.i2c_device_addr* %15, %struct.i2c_device_addr** %8, align 8
  %16 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %17 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %16, i32 0, i32 0
  %18 = load %struct.drx_common_attr*, %struct.drx_common_attr** %17, align 8
  store %struct.drx_common_attr* %18, %struct.drx_common_attr** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %20 = load i32, i32* @FEC_COMM_EXEC__A, align 4
  %21 = load i32, i32* @FEC_COMM_EXEC_STOP, align 4
  %22 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %19, i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %140

28:                                               ; preds = %2
  %29 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %30 = load i32, i32* @QAM_COMM_EXEC__A, align 4
  %31 = load i32, i32* @QAM_COMM_EXEC_STOP, align 4
  %32 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %29, i32 %30, i32 %31, i32 0)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %140

38:                                               ; preds = %28
  %39 = load i32, i32* @SCU_RAM_COMMAND_STANDARD_QAM, align 4
  %40 = load i32, i32* @SCU_RAM_COMMAND_CMD_DEMOD_STOP, align 4
  %41 = or i32 %39, %40
  %42 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %6, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %6, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %6, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %6, i32 0, i32 3
  store i32* null, i32** %45, align 8
  %46 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %6, i32 0, i32 2
  store i32* %11, i32** %46, align 8
  %47 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %48 = call i32 @scu_command(%struct.i2c_device_addr* %47, %struct.drxjscu_cmd* %6)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %140

54:                                               ; preds = %38
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %54
  %58 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %59 = load i32, i32* @IQM_COMM_EXEC__A, align 4
  %60 = load i32, i32* @IQM_COMM_EXEC_STOP, align 4
  %61 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %58, i32 %59, i32 %60, i32 0)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %140

67:                                               ; preds = %57
  %68 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %69 = call i32 @set_iqm_af(%struct.drx_demod_instance* %68, i32 0)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %140

75:                                               ; preds = %67
  br label %127

76:                                               ; preds = %54
  %77 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %78 = load i32, i32* @IQM_FS_COMM_EXEC__A, align 4
  %79 = load i32, i32* @IQM_FS_COMM_EXEC_STOP, align 4
  %80 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %77, i32 %78, i32 %79, i32 0)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %140

86:                                               ; preds = %76
  %87 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %88 = load i32, i32* @IQM_FD_COMM_EXEC__A, align 4
  %89 = load i32, i32* @IQM_FD_COMM_EXEC_STOP, align 4
  %90 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %87, i32 %88, i32 %89, i32 0)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %140

96:                                               ; preds = %86
  %97 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %98 = load i32, i32* @IQM_RC_COMM_EXEC__A, align 4
  %99 = load i32, i32* @IQM_RC_COMM_EXEC_STOP, align 4
  %100 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %97, i32 %98, i32 %99, i32 0)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %140

106:                                              ; preds = %96
  %107 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %108 = load i32, i32* @IQM_RT_COMM_EXEC__A, align 4
  %109 = load i32, i32* @IQM_RT_COMM_EXEC_STOP, align 4
  %110 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %107, i32 %108, i32 %109, i32 0)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %114)
  br label %140

116:                                              ; preds = %106
  %117 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %118 = load i32, i32* @IQM_CF_COMM_EXEC__A, align 4
  %119 = load i32, i32* @IQM_CF_COMM_EXEC_STOP, align 4
  %120 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %117, i32 %118, i32 %119, i32 0)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %124)
  br label %140

126:                                              ; preds = %116
  br label %127

127:                                              ; preds = %126, %75
  %128 = load %struct.drx_common_attr*, %struct.drx_common_attr** %10, align 8
  %129 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %128, i32 0, i32 0
  %130 = call i32 @memcpy(%struct.drx_cfg_mpeg_output* %9, i32* %129, i32 4)
  %131 = getelementptr inbounds %struct.drx_cfg_mpeg_output, %struct.drx_cfg_mpeg_output* %9, i32 0, i32 0
  store i32 0, i32* %131, align 4
  %132 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %133 = call i32 @ctrl_set_cfg_mpeg_output(%struct.drx_demod_instance* %132, %struct.drx_cfg_mpeg_output* %9)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %127
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %137)
  br label %140

139:                                              ; preds = %127
  store i32 0, i32* %3, align 4
  br label %142

140:                                              ; preds = %136, %123, %113, %103, %93, %83, %72, %64, %51, %35, %25
  %141 = load i32, i32* %7, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %139
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @drxj_dap_write_reg16(%struct.i2c_device_addr*, i32, i32, i32) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @scu_command(%struct.i2c_device_addr*, %struct.drxjscu_cmd*) #2

declare dso_local i32 @set_iqm_af(%struct.drx_demod_instance*, i32) #2

declare dso_local i32 @memcpy(%struct.drx_cfg_mpeg_output*, i32*, i32) #2

declare dso_local i32 @ctrl_set_cfg_mpeg_output(%struct.drx_demod_instance*, %struct.drx_cfg_mpeg_output*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
