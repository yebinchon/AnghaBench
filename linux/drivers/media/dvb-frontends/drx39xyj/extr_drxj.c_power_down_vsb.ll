; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_power_down_vsb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_power_down_vsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { %struct.i2c_device_addr* }
%struct.i2c_device_addr = type { i32 }
%struct.drxjscu_cmd = type { i32, i32, i32*, i32*, i64, i32*, i32*, i32, i32, i32 }
%struct.drx_cfg_mpeg_output = type { i32 }

@SCU_RAM_COMMAND_STANDARD_VSB = common dso_local global i32 0, align 4
@SCU_RAM_COMMAND_CMD_DEMOD_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@FEC_COMM_EXEC__A = common dso_local global i32 0, align 4
@FEC_COMM_EXEC_STOP = common dso_local global i32 0, align 4
@VSB_COMM_EXEC__A = common dso_local global i32 0, align 4
@VSB_COMM_EXEC_STOP = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*, i32)* @power_down_vsb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_down_vsb(%struct.drx_demod_instance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drx_demod_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_device_addr*, align 8
  %7 = alloca %struct.drxjscu_cmd, align 8
  %8 = alloca %struct.drx_cfg_mpeg_output, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %12 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %11, i32 0, i32 0
  %13 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %12, align 8
  store %struct.i2c_device_addr* %13, %struct.i2c_device_addr** %6, align 8
  %14 = bitcast %struct.drxjscu_cmd* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 64, i1 false)
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @SCU_RAM_COMMAND_STANDARD_VSB, align 4
  %16 = load i32, i32* @SCU_RAM_COMMAND_CMD_DEMOD_STOP, align 4
  %17 = or i32 %15, %16
  %18 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %7, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %7, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %7, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %7, i32 0, i32 3
  store i32* null, i32** %21, align 8
  %22 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %7, i32 0, i32 2
  store i32* %10, i32** %22, align 8
  %23 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %24 = call i32 @scu_command(%struct.i2c_device_addr* %23, %struct.drxjscu_cmd* %7)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %133

30:                                               ; preds = %2
  %31 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %32 = load i32, i32* @FEC_COMM_EXEC__A, align 4
  %33 = load i32, i32* @FEC_COMM_EXEC_STOP, align 4
  %34 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %31, i32 %32, i32 %33, i32 0)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %133

40:                                               ; preds = %30
  %41 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %42 = load i32, i32* @VSB_COMM_EXEC__A, align 4
  %43 = load i32, i32* @VSB_COMM_EXEC_STOP, align 4
  %44 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %41, i32 %42, i32 %43, i32 0)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %133

50:                                               ; preds = %40
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %50
  %54 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %55 = load i32, i32* @IQM_COMM_EXEC__A, align 4
  %56 = load i32, i32* @IQM_COMM_EXEC_STOP, align 4
  %57 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %54, i32 %55, i32 %56, i32 0)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %133

63:                                               ; preds = %53
  %64 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %65 = call i32 @set_iqm_af(%struct.drx_demod_instance* %64, i32 0)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %133

71:                                               ; preds = %63
  br label %123

72:                                               ; preds = %50
  %73 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %74 = load i32, i32* @IQM_FS_COMM_EXEC__A, align 4
  %75 = load i32, i32* @IQM_FS_COMM_EXEC_STOP, align 4
  %76 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %73, i32 %74, i32 %75, i32 0)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %133

82:                                               ; preds = %72
  %83 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %84 = load i32, i32* @IQM_FD_COMM_EXEC__A, align 4
  %85 = load i32, i32* @IQM_FD_COMM_EXEC_STOP, align 4
  %86 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %83, i32 %84, i32 %85, i32 0)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %133

92:                                               ; preds = %82
  %93 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %94 = load i32, i32* @IQM_RC_COMM_EXEC__A, align 4
  %95 = load i32, i32* @IQM_RC_COMM_EXEC_STOP, align 4
  %96 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %93, i32 %94, i32 %95, i32 0)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %100)
  br label %133

102:                                              ; preds = %92
  %103 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %104 = load i32, i32* @IQM_RT_COMM_EXEC__A, align 4
  %105 = load i32, i32* @IQM_RT_COMM_EXEC_STOP, align 4
  %106 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %103, i32 %104, i32 %105, i32 0)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %110)
  br label %133

112:                                              ; preds = %102
  %113 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %114 = load i32, i32* @IQM_CF_COMM_EXEC__A, align 4
  %115 = load i32, i32* @IQM_CF_COMM_EXEC_STOP, align 4
  %116 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %113, i32 %114, i32 %115, i32 0)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %120)
  br label %133

122:                                              ; preds = %112
  br label %123

123:                                              ; preds = %122, %71
  %124 = getelementptr inbounds %struct.drx_cfg_mpeg_output, %struct.drx_cfg_mpeg_output* %8, i32 0, i32 0
  store i32 0, i32* %124, align 4
  %125 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %126 = call i32 @ctrl_set_cfg_mpeg_output(%struct.drx_demod_instance* %125, %struct.drx_cfg_mpeg_output* %8)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %130)
  br label %133

132:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %135

133:                                              ; preds = %129, %119, %109, %99, %89, %79, %68, %60, %47, %37, %27
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %133, %132
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @scu_command(%struct.i2c_device_addr*, %struct.drxjscu_cmd*) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @drxj_dap_write_reg16(%struct.i2c_device_addr*, i32, i32, i32) #2

declare dso_local i32 @set_iqm_af(%struct.drx_demod_instance*, i32) #2

declare dso_local i32 @ctrl_set_cfg_mpeg_output(%struct.drx_demod_instance*, %struct.drx_cfg_mpeg_output*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
