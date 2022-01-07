; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_set_orx_nsu_aox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_set_orx_nsu_aox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { %struct.i2c_device_addr* }
%struct.i2c_device_addr = type { i32 }

@ORX_NSU_AOX_STDBY_W__A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@ORX_NSU_AOX_STDBY_W_STDBYADC_A2_ON = common dso_local global i32 0, align 4
@ORX_NSU_AOX_STDBY_W_STDBYAMP_A2_ON = common dso_local global i32 0, align 4
@ORX_NSU_AOX_STDBY_W_STDBYBIAS_A2_ON = common dso_local global i32 0, align 4
@ORX_NSU_AOX_STDBY_W_STDBYPLL_A2_ON = common dso_local global i32 0, align 4
@ORX_NSU_AOX_STDBY_W_STDBYPD_A2_ON = common dso_local global i32 0, align 4
@ORX_NSU_AOX_STDBY_W_STDBYTAGC_IF_A2_ON = common dso_local global i32 0, align 4
@ORX_NSU_AOX_STDBY_W_STDBYTAGC_RF_A2_ON = common dso_local global i32 0, align 4
@ORX_NSU_AOX_STDBY_W_STDBYFLT_A2_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*, i32)* @set_orx_nsu_aox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_orx_nsu_aox(%struct.drx_demod_instance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drx_demod_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_device_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %10 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %9, i32 0, i32 0
  %11 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %10, align 8
  store %struct.i2c_device_addr* %11, %struct.i2c_device_addr** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %13 = load i32, i32* @ORX_NSU_AOX_STDBY_W__A, align 4
  %14 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %12, i32 %13, i32* %8, i32 0)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %78

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %49, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @ORX_NSU_AOX_STDBY_W_STDBYADC_A2_ON, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* @ORX_NSU_AOX_STDBY_W_STDBYAMP_A2_ON, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load i32, i32* @ORX_NSU_AOX_STDBY_W_STDBYBIAS_A2_ON, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = load i32, i32* @ORX_NSU_AOX_STDBY_W_STDBYPLL_A2_ON, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = load i32, i32* @ORX_NSU_AOX_STDBY_W_STDBYPD_A2_ON, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* @ORX_NSU_AOX_STDBY_W_STDBYTAGC_IF_A2_ON, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load i32, i32* @ORX_NSU_AOX_STDBY_W_STDBYTAGC_RF_A2_ON, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = load i32, i32* @ORX_NSU_AOX_STDBY_W_STDBYFLT_A2_ON, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %67

49:                                               ; preds = %20
  %50 = load i32, i32* @ORX_NSU_AOX_STDBY_W_STDBYADC_A2_ON, align 4
  %51 = load i32, i32* @ORX_NSU_AOX_STDBY_W_STDBYAMP_A2_ON, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @ORX_NSU_AOX_STDBY_W_STDBYBIAS_A2_ON, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @ORX_NSU_AOX_STDBY_W_STDBYPLL_A2_ON, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @ORX_NSU_AOX_STDBY_W_STDBYPD_A2_ON, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @ORX_NSU_AOX_STDBY_W_STDBYTAGC_IF_A2_ON, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @ORX_NSU_AOX_STDBY_W_STDBYTAGC_RF_A2_ON, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @ORX_NSU_AOX_STDBY_W_STDBYFLT_A2_ON, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %49, %23
  %68 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %69 = load i32, i32* @ORX_NSU_AOX_STDBY_W__A, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %68, i32 %69, i32 %70, i32 0)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %78

77:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %80

78:                                               ; preds = %74, %17
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %77
  %81 = load i32, i32* %3, align 4
  ret i32 %81
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
