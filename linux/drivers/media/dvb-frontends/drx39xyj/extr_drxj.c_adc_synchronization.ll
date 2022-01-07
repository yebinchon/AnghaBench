; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_adc_synchronization.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_adc_synchronization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { %struct.i2c_device_addr* }
%struct.i2c_device_addr = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@IQM_AF_CLKNEG__A = common dso_local global i32 0, align 4
@IQM_AF_CLKNEG_CLKNEGDATA__M = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*)* @adc_synchronization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc_synchronization(%struct.drx_demod_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drx_demod_instance*, align 8
  %4 = alloca %struct.i2c_device_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %3, align 8
  store %struct.i2c_device_addr* null, %struct.i2c_device_addr** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %9 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %8, i32 0, i32 0
  %10 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %9, align 8
  store %struct.i2c_device_addr* %10, %struct.i2c_device_addr** %4, align 8
  %11 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %12 = call i32 @adc_sync_measurement(%struct.drx_demod_instance* %11, i32* %6)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %59

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %52

21:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  %22 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %23 = load i32, i32* @IQM_AF_CLKNEG__A, align 4
  %24 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %22, i32 %23, i32* %7, i32 0)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %59

30:                                               ; preds = %21
  %31 = load i32, i32* @IQM_AF_CLKNEG_CLKNEGDATA__M, align 4
  %32 = load i32, i32* %7, align 4
  %33 = xor i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %35 = load i32, i32* @IQM_AF_CLKNEG__A, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %34, i32 %35, i32 %36, i32 0)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %59

43:                                               ; preds = %30
  %44 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %45 = call i32 @adc_sync_measurement(%struct.drx_demod_instance* %44, i32* %6)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %59

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %18
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 2
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %61

58:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %61

59:                                               ; preds = %48, %40, %27, %15
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %58, %55
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @adc_sync_measurement(%struct.drx_demod_instance*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @drxj_dap_read_reg16(%struct.i2c_device_addr*, i32, i32*, i32) #1

declare dso_local i32 @drxj_dap_write_reg16(%struct.i2c_device_addr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
