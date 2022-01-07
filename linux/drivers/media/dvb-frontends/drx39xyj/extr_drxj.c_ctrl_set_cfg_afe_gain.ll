; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_ctrl_set_cfg_afe_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_ctrl_set_cfg_afe_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { i64, %struct.i2c_device_addr* }
%struct.i2c_device_addr = type { i32 }
%struct.drxj_cfg_afe_gain = type { i32, i32 }
%struct.drxj_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IQM_AF_PGA_GAIN__A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*, %struct.drxj_cfg_afe_gain*)* @ctrl_set_cfg_afe_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_set_cfg_afe_gain(%struct.drx_demod_instance* %0, %struct.drxj_cfg_afe_gain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drx_demod_instance*, align 8
  %5 = alloca %struct.drxj_cfg_afe_gain*, align 8
  %6 = alloca %struct.i2c_device_addr*, align 8
  %7 = alloca %struct.drxj_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %4, align 8
  store %struct.drxj_cfg_afe_gain* %1, %struct.drxj_cfg_afe_gain** %5, align 8
  store %struct.i2c_device_addr* null, %struct.i2c_device_addr** %6, align 8
  store %struct.drxj_data* null, %struct.drxj_data** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.drxj_cfg_afe_gain*, %struct.drxj_cfg_afe_gain** %5, align 8
  %11 = icmp eq %struct.drxj_cfg_afe_gain* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %91

15:                                               ; preds = %2
  %16 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %17 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %16, i32 0, i32 1
  %18 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %17, align 8
  store %struct.i2c_device_addr* %18, %struct.i2c_device_addr** %6, align 8
  %19 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %20 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.drxj_data*
  store %struct.drxj_data* %22, %struct.drxj_data** %7, align 8
  %23 = load %struct.drxj_cfg_afe_gain*, %struct.drxj_cfg_afe_gain** %5, align 8
  %24 = getelementptr inbounds %struct.drxj_cfg_afe_gain, %struct.drxj_cfg_afe_gain* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %27 [
    i32 131, label %26
    i32 130, label %26
    i32 129, label %26
    i32 128, label %26
  ]

26:                                               ; preds = %15, %15, %15, %15
  br label %30

27:                                               ; preds = %15
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %91

30:                                               ; preds = %26
  %31 = load %struct.drxj_cfg_afe_gain*, %struct.drxj_cfg_afe_gain** %5, align 8
  %32 = getelementptr inbounds %struct.drxj_cfg_afe_gain, %struct.drxj_cfg_afe_gain* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %33, 329
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 15, i32* %9, align 4
  br label %50

36:                                               ; preds = %30
  %37 = load %struct.drxj_cfg_afe_gain*, %struct.drxj_cfg_afe_gain** %5, align 8
  %38 = getelementptr inbounds %struct.drxj_cfg_afe_gain, %struct.drxj_cfg_afe_gain* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %39, 147
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %49

42:                                               ; preds = %36
  %43 = load %struct.drxj_cfg_afe_gain*, %struct.drxj_cfg_afe_gain** %5, align 8
  %44 = getelementptr inbounds %struct.drxj_cfg_afe_gain, %struct.drxj_cfg_afe_gain* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 140
  %47 = add nsw i32 %46, 6
  %48 = sdiv i32 %47, 13
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %42, %41
  br label %50

50:                                               ; preds = %49, %35
  %51 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %52 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.drxj_cfg_afe_gain*, %struct.drxj_cfg_afe_gain** %5, align 8
  %55 = getelementptr inbounds %struct.drxj_cfg_afe_gain, %struct.drxj_cfg_afe_gain* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %50
  %59 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %60 = load i32, i32* @IQM_AF_PGA_GAIN__A, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %59, i32 %60, i32 %61, i32 0)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %89

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %50
  %70 = load %struct.drxj_cfg_afe_gain*, %struct.drxj_cfg_afe_gain** %5, align 8
  %71 = getelementptr inbounds %struct.drxj_cfg_afe_gain, %struct.drxj_cfg_afe_gain* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %85 [
    i32 131, label %73
    i32 130, label %79
    i32 129, label %79
    i32 128, label %79
  ]

73:                                               ; preds = %69
  %74 = load i32, i32* %9, align 4
  %75 = mul nsw i32 %74, 13
  %76 = add nsw i32 %75, 140
  %77 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %78 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  br label %88

79:                                               ; preds = %69, %69, %69
  %80 = load i32, i32* %9, align 4
  %81 = mul nsw i32 %80, 13
  %82 = add nsw i32 %81, 140
  %83 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %84 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %88

85:                                               ; preds = %69
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %91

88:                                               ; preds = %79, %73
  store i32 0, i32* %3, align 4
  br label %91

89:                                               ; preds = %65
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %88, %85, %27, %12
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @drxj_dap_write_reg16(%struct.i2c_device_addr*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
