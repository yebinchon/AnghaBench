; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_adc_sync_measurement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_adc_sync_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { %struct.i2c_device_addr* }
%struct.i2c_device_addr = type { i32 }

@IQM_AF_COMM_EXEC__A = common dso_local global i32 0, align 4
@IQM_AF_COMM_EXEC_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@IQM_AF_START_LOCK__A = common dso_local global i32 0, align 4
@IQM_AF_PHASE0__A = common dso_local global i32 0, align 4
@IQM_AF_PHASE1__A = common dso_local global i32 0, align 4
@IQM_AF_PHASE2__A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*, i32*)* @adc_sync_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc_sync_measurement(%struct.drx_demod_instance* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drx_demod_instance*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.i2c_device_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.i2c_device_addr* null, %struct.i2c_device_addr** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %10 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %9, i32 0, i32 0
  %11 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %10, align 8
  store %struct.i2c_device_addr* %11, %struct.i2c_device_addr** %6, align 8
  %12 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %13 = load i32, i32* @IQM_AF_COMM_EXEC__A, align 4
  %14 = load i32, i32* @IQM_AF_COMM_EXEC_ACTIVE, align 4
  %15 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %12, i32 %13, i32 %14, i32 0)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %84

21:                                               ; preds = %2
  %22 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %23 = load i32, i32* @IQM_AF_START_LOCK__A, align 4
  %24 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %22, i32 %23, i32 1, i32 0)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %84

30:                                               ; preds = %21
  %31 = call i32 @msleep(i32 1)
  %32 = load i32*, i32** %5, align 8
  store i32 0, i32* %32, align 4
  %33 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %34 = load i32, i32* @IQM_AF_PHASE0__A, align 4
  %35 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %33, i32 %34, i32* %8, i32 0)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %84

41:                                               ; preds = %30
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 127
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %41
  %50 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %51 = load i32, i32* @IQM_AF_PHASE1__A, align 4
  %52 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %50, i32 %51, i32* %8, i32 0)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %84

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 127
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %58
  %67 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %68 = load i32, i32* @IQM_AF_PHASE2__A, align 4
  %69 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %67, i32 %68, i32* %8, i32 0)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %84

75:                                               ; preds = %66
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, 127
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  %82 = load i32*, i32** %5, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %78, %75
  store i32 0, i32* %3, align 4
  br label %86

84:                                               ; preds = %72, %55, %38, %27, %18
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %83
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @drxj_dap_write_reg16(%struct.i2c_device_addr*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @drxj_dap_read_reg16(%struct.i2c_device_addr*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
