; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_set_iqm_af.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_set_iqm_af.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { %struct.i2c_device_addr* }
%struct.i2c_device_addr = type { i32 }

@IQM_AF_STDBY__A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@IQM_AF_STDBY_STDBY_ADC_A2_ACTIVE = common dso_local global i32 0, align 4
@IQM_AF_STDBY_STDBY_AMP_A2_ACTIVE = common dso_local global i32 0, align 4
@IQM_AF_STDBY_STDBY_PD_A2_ACTIVE = common dso_local global i32 0, align 4
@IQM_AF_STDBY_STDBY_TAGC_IF_A2_ACTIVE = common dso_local global i32 0, align 4
@IQM_AF_STDBY_STDBY_TAGC_RF_A2_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*, i32)* @set_iqm_af to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_iqm_af(%struct.drx_demod_instance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drx_demod_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_device_addr*, align 8
  %8 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store %struct.i2c_device_addr* null, %struct.i2c_device_addr** %7, align 8
  %9 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %10 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %9, i32 0, i32 0
  %11 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %10, align 8
  store %struct.i2c_device_addr* %11, %struct.i2c_device_addr** %7, align 8
  %12 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %7, align 8
  %13 = load i32, i32* @IQM_AF_STDBY__A, align 4
  %14 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %12, i32 %13, i32* %6, i32 0)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %63

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @IQM_AF_STDBY_STDBY_ADC_A2_ACTIVE, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* @IQM_AF_STDBY_STDBY_AMP_A2_ACTIVE, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load i32, i32* @IQM_AF_STDBY_STDBY_PD_A2_ACTIVE, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = load i32, i32* @IQM_AF_STDBY_STDBY_TAGC_IF_A2_ACTIVE, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = load i32, i32* @IQM_AF_STDBY_STDBY_TAGC_RF_A2_ACTIVE, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %52

40:                                               ; preds = %20
  %41 = load i32, i32* @IQM_AF_STDBY_STDBY_ADC_A2_ACTIVE, align 4
  %42 = load i32, i32* @IQM_AF_STDBY_STDBY_AMP_A2_ACTIVE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @IQM_AF_STDBY_STDBY_PD_A2_ACTIVE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @IQM_AF_STDBY_STDBY_TAGC_IF_A2_ACTIVE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @IQM_AF_STDBY_STDBY_TAGC_RF_A2_ACTIVE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %40, %23
  %53 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %7, align 8
  %54 = load i32, i32* @IQM_AF_STDBY__A, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %53, i32 %54, i32 %55, i32 0)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %63

62:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %65

63:                                               ; preds = %59, %17
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %62
  %66 = load i32, i32* %3, align 4
  ret i32 %66
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
