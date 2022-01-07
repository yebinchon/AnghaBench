; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_power_down_aud.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_power_down_aud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { i64, i64 }
%struct.i2c_device_addr = type { i32 }
%struct.drxj_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AUD_COMM_EXEC__A = common dso_local global i32 0, align 4
@AUD_COMM_EXEC_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*)* @power_down_aud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_down_aud(%struct.drx_demod_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drx_demod_instance*, align 8
  %4 = alloca %struct.i2c_device_addr*, align 8
  %5 = alloca %struct.drxj_data*, align 8
  %6 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %3, align 8
  store %struct.i2c_device_addr* null, %struct.i2c_device_addr** %4, align 8
  store %struct.drxj_data* null, %struct.drxj_data** %5, align 8
  %7 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %8 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.i2c_device_addr*
  store %struct.i2c_device_addr* %10, %struct.i2c_device_addr** %4, align 8
  %11 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %12 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.drxj_data*
  store %struct.drxj_data* %14, %struct.drxj_data** %5, align 8
  %15 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %16 = load i32, i32* @AUD_COMM_EXEC__A, align 4
  %17 = load i32, i32* @AUD_COMM_EXEC_STOP, align 4
  %18 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %15, i32 %16, i32 %17, i32 0)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %28

24:                                               ; preds = %1
  %25 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %26 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  store i32 0, i32* %2, align 4
  br label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @drxj_dap_write_reg16(%struct.i2c_device_addr*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
