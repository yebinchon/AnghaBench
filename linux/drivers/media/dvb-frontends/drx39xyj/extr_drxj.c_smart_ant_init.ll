; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_smart_ant_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_smart_ant_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { %struct.i2c_device_addr*, i64 }
%struct.i2c_device_addr = type { i32 }
%struct.drxj_data = type { i64 }
%struct.drxuio_cfg = type { i32, i32 }

@DRX_UIO1 = common dso_local global i32 0, align 4
@DRX_UIO_MODE_FIRMWARE_SMA = common dso_local global i32 0, align 4
@SIO_TOP_COMM_KEY__A = common dso_local global i32 0, align 4
@SIO_TOP_COMM_KEY_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@SIO_SA_TX_COMMAND__A = common dso_local global i32 0, align 4
@SIO_SA_TX_COMMAND_TX_INVERT__M = common dso_local global i32 0, align 4
@SIO_SA_TX_COMMAND_TX_ENABLE__M = common dso_local global i32 0, align 4
@SIO_PDR_SMA_TX_CFG__A = common dso_local global i32 0, align 4
@SIO_PDR_SMA_TX_GPIO_FNC__A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*)* @smart_ant_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smart_ant_init(%struct.drx_demod_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drx_demod_instance*, align 8
  %4 = alloca %struct.drxj_data*, align 8
  %5 = alloca %struct.i2c_device_addr*, align 8
  %6 = alloca %struct.drxuio_cfg, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %3, align 8
  store %struct.drxj_data* null, %struct.drxj_data** %4, align 8
  store %struct.i2c_device_addr* null, %struct.i2c_device_addr** %5, align 8
  %9 = getelementptr inbounds %struct.drxuio_cfg, %struct.drxuio_cfg* %6, i32 0, i32 0
  %10 = load i32, i32* @DRX_UIO1, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.drxuio_cfg, %struct.drxuio_cfg* %6, i32 0, i32 1
  %12 = load i32, i32* @DRX_UIO_MODE_FIRMWARE_SMA, align 4
  store i32 %12, i32* %11, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %14 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %13, i32 0, i32 0
  %15 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %14, align 8
  store %struct.i2c_device_addr* %15, %struct.i2c_device_addr** %5, align 8
  %16 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %17 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.drxj_data*
  store %struct.drxj_data* %19, %struct.drxj_data** %4, align 8
  %20 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %21 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %20, i32 0, i32 0
  %22 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %21, align 8
  %23 = load i32, i32* @SIO_TOP_COMM_KEY__A, align 4
  %24 = load i32, i32* @SIO_TOP_COMM_KEY_KEY, align 4
  %25 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %22, i32 %23, i32 %24, i32 0)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %118

31:                                               ; preds = %1
  %32 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %5, align 8
  %33 = load i32, i32* @SIO_SA_TX_COMMAND__A, align 4
  %34 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %32, i32 %33, i32* %8, i32 0)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %118

40:                                               ; preds = %31
  %41 = load %struct.drxj_data*, %struct.drxj_data** %4, align 8
  %42 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %40
  %46 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %5, align 8
  %47 = load i32, i32* @SIO_SA_TX_COMMAND__A, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @SIO_SA_TX_COMMAND_TX_INVERT__M, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @SIO_SA_TX_COMMAND_TX_ENABLE__M, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %46, i32 %47, i32 %52, i32 0)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %118

59:                                               ; preds = %45
  br label %76

60:                                               ; preds = %40
  %61 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %5, align 8
  %62 = load i32, i32* @SIO_SA_TX_COMMAND__A, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @SIO_SA_TX_COMMAND_TX_INVERT__M, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = load i32, i32* @SIO_SA_TX_COMMAND_TX_ENABLE__M, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %61, i32 %62, i32 %68, i32 0)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %60
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %118

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75, %59
  %77 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %78 = call i32 @ctrl_set_uio_cfg(%struct.drx_demod_instance* %77, %struct.drxuio_cfg* %6)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %118

84:                                               ; preds = %76
  %85 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %86 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %85, i32 0, i32 0
  %87 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %86, align 8
  %88 = load i32, i32* @SIO_PDR_SMA_TX_CFG__A, align 4
  %89 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %87, i32 %88, i32 19, i32 0)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %118

95:                                               ; preds = %84
  %96 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %97 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %96, i32 0, i32 0
  %98 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %97, align 8
  %99 = load i32, i32* @SIO_PDR_SMA_TX_GPIO_FNC__A, align 4
  %100 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %98, i32 %99, i32 3, i32 0)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %118

106:                                              ; preds = %95
  %107 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %108 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %107, i32 0, i32 0
  %109 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %108, align 8
  %110 = load i32, i32* @SIO_TOP_COMM_KEY__A, align 4
  %111 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %109, i32 %110, i32 0, i32 0)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %115)
  br label %118

117:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %120

118:                                              ; preds = %114, %103, %92, %81, %72, %56, %37, %28
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %118, %117
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @drxj_dap_write_reg16(%struct.i2c_device_addr*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @drxj_dap_read_reg16(%struct.i2c_device_addr*, i32, i32*, i32) #1

declare dso_local i32 @ctrl_set_uio_cfg(%struct.drx_demod_instance*, %struct.drxuio_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
