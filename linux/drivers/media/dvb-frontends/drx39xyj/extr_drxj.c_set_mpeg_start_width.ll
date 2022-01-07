; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_set_mpeg_start_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_set_mpeg_start_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { %struct.drx_common_attr*, i64, %struct.i2c_device_addr* }
%struct.drx_common_attr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_device_addr = type { i32 }
%struct.drxj_data = type { i64 }

@FEC_OC_COMM_MB__A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@FEC_OC_COMM_MB_CTL_ON = common dso_local global i32 0, align 4
@DRXJ_MPEG_START_WIDTH_8CLKCYC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*)* @set_mpeg_start_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_mpeg_start_width(%struct.drx_demod_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drx_demod_instance*, align 8
  %4 = alloca %struct.drxj_data*, align 8
  %5 = alloca %struct.i2c_device_addr*, align 8
  %6 = alloca %struct.drx_common_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %3, align 8
  store %struct.drxj_data* null, %struct.drxj_data** %4, align 8
  store %struct.i2c_device_addr* null, %struct.i2c_device_addr** %5, align 8
  store %struct.drx_common_attr* null, %struct.drx_common_attr** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %10 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %9, i32 0, i32 2
  %11 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %10, align 8
  store %struct.i2c_device_addr* %11, %struct.i2c_device_addr** %5, align 8
  %12 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %13 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.drxj_data*
  store %struct.drxj_data* %15, %struct.drxj_data** %4, align 8
  %16 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %17 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %16, i32 0, i32 0
  %18 = load %struct.drx_common_attr*, %struct.drx_common_attr** %17, align 8
  store %struct.drx_common_attr* %18, %struct.drx_common_attr** %6, align 8
  %19 = load %struct.drx_common_attr*, %struct.drx_common_attr** %6, align 8
  %20 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %64

24:                                               ; preds = %1
  %25 = load %struct.drx_common_attr*, %struct.drx_common_attr** %6, align 8
  %26 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %64

30:                                               ; preds = %24
  %31 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %5, align 8
  %32 = load i32, i32* @FEC_OC_COMM_MB__A, align 4
  %33 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %31, i32 %32, i32* %8, i32 0)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %65

39:                                               ; preds = %30
  %40 = load i32, i32* @FEC_OC_COMM_MB_CTL_ON, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load %struct.drxj_data*, %struct.drxj_data** %4, align 8
  %45 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DRXJ_MPEG_START_WIDTH_8CLKCYC, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load i32, i32* @FEC_OC_COMM_MB_CTL_ON, align 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %49, %39
  %54 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %5, align 8
  %55 = load i32, i32* @FEC_OC_COMM_MB__A, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %54, i32 %55, i32 %56, i32 0)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %65

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %24, %1
  store i32 0, i32* %2, align 4
  br label %67

65:                                               ; preds = %60, %36
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %64
  %68 = load i32, i32* %2, align 4
  ret i32 %68
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
