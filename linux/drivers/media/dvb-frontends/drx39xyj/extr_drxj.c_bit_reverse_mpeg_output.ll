; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_bit_reverse_mpeg_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_bit_reverse_mpeg_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { i64, %struct.i2c_device_addr* }
%struct.i2c_device_addr = type { i32 }
%struct.drxj_data = type { i64 }

@FEC_OC_IPR_MODE__A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@FEC_OC_IPR_MODE_REVERSE_ORDER__M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*)* @bit_reverse_mpeg_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bit_reverse_mpeg_output(%struct.drx_demod_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drx_demod_instance*, align 8
  %4 = alloca %struct.drxj_data*, align 8
  %5 = alloca %struct.i2c_device_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %3, align 8
  store %struct.drxj_data* null, %struct.drxj_data** %4, align 8
  store %struct.i2c_device_addr* null, %struct.i2c_device_addr** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %9 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %8, i32 0, i32 1
  %10 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %9, align 8
  store %struct.i2c_device_addr* %10, %struct.i2c_device_addr** %5, align 8
  %11 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %12 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.drxj_data*
  store %struct.drxj_data* %14, %struct.drxj_data** %4, align 8
  %15 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %5, align 8
  %16 = load i32, i32* @FEC_OC_IPR_MODE__A, align 4
  %17 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %15, i32 %16, i32* %7, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %47

23:                                               ; preds = %1
  %24 = load i32, i32* @FEC_OC_IPR_MODE_REVERSE_ORDER__M, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load %struct.drxj_data*, %struct.drxj_data** %4, align 8
  %29 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i32, i32* @FEC_OC_IPR_MODE_REVERSE_ORDER__M, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %32, %23
  %37 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %5, align 8
  %38 = load i32, i32* @FEC_OC_IPR_MODE__A, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %37, i32 %38, i32 %39, i32 0)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %47

46:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %49

47:                                               ; preds = %43, %20
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %46
  %50 = load i32, i32* %2, align 4
  ret i32 %50
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
