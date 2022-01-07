; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp2.c_sp2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp2.c_sp2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp2 = type { %struct.TYPE_3__*, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.sp2*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__const.sp2_init.cimax_init = private unnamed_addr constant [34 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 1, i32 0, i32 0, i32 0, i32 5, i32 0, i32 4, i32 0, i32 34, i32 0], align 16
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@sp2_ci_read_attribute_mem = common dso_local global i32 0, align 4
@sp2_ci_write_attribute_mem = common dso_local global i32 0, align 4
@sp2_ci_read_cam_control = common dso_local global i32 0, align 4
@sp2_ci_write_cam_control = common dso_local global i32 0, align 4
@sp2_ci_slot_reset = common dso_local global i32 0, align 4
@sp2_ci_slot_shutdown = common dso_local global i32 0, align 4
@sp2_ci_slot_ts_enable = common dso_local global i32 0, align 4
@sp2_ci_poll_slot_status = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"init failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sp2*)* @sp2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp2_init(%struct.sp2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sp2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [34 x i32], align 16
  store %struct.sp2* %0, %struct.sp2** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = bitcast [34 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([34 x i32]* @__const.sp2_init.cimax_init to i8*), i64 136, i1 false)
  %8 = load %struct.sp2*, %struct.sp2** %3, align 8
  %9 = getelementptr inbounds %struct.sp2, %struct.sp2* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @THIS_MODULE, align 4
  %14 = load %struct.sp2*, %struct.sp2** %3, align 8
  %15 = getelementptr inbounds %struct.sp2, %struct.sp2* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 9
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* @sp2_ci_read_attribute_mem, align 4
  %18 = load %struct.sp2*, %struct.sp2** %3, align 8
  %19 = getelementptr inbounds %struct.sp2, %struct.sp2* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 8
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @sp2_ci_write_attribute_mem, align 4
  %22 = load %struct.sp2*, %struct.sp2** %3, align 8
  %23 = getelementptr inbounds %struct.sp2, %struct.sp2* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 7
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* @sp2_ci_read_cam_control, align 4
  %26 = load %struct.sp2*, %struct.sp2** %3, align 8
  %27 = getelementptr inbounds %struct.sp2, %struct.sp2* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 6
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @sp2_ci_write_cam_control, align 4
  %30 = load %struct.sp2*, %struct.sp2** %3, align 8
  %31 = getelementptr inbounds %struct.sp2, %struct.sp2* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 5
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @sp2_ci_slot_reset, align 4
  %34 = load %struct.sp2*, %struct.sp2** %3, align 8
  %35 = getelementptr inbounds %struct.sp2, %struct.sp2* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @sp2_ci_slot_shutdown, align 4
  %38 = load %struct.sp2*, %struct.sp2** %3, align 8
  %39 = getelementptr inbounds %struct.sp2, %struct.sp2* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @sp2_ci_slot_ts_enable, align 4
  %42 = load %struct.sp2*, %struct.sp2** %3, align 8
  %43 = getelementptr inbounds %struct.sp2, %struct.sp2* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @sp2_ci_poll_slot_status, align 4
  %46 = load %struct.sp2*, %struct.sp2** %3, align 8
  %47 = getelementptr inbounds %struct.sp2, %struct.sp2* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 8
  %49 = load %struct.sp2*, %struct.sp2** %3, align 8
  %50 = load %struct.sp2*, %struct.sp2** %3, align 8
  %51 = getelementptr inbounds %struct.sp2, %struct.sp2* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store %struct.sp2* %49, %struct.sp2** %52, align 8
  %53 = load %struct.sp2*, %struct.sp2** %3, align 8
  %54 = getelementptr inbounds %struct.sp2, %struct.sp2* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.sp2*, %struct.sp2** %3, align 8
  %56 = getelementptr inbounds [34 x i32], [34 x i32]* %6, i64 0, i64 0
  %57 = call i32 @sp2_write_i2c(%struct.sp2* %55, i32 0, i32* %56, i32 34)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %1
  br label %84

61:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %62 = load %struct.sp2*, %struct.sp2** %3, align 8
  %63 = call i32 @sp2_write_i2c(%struct.sp2* %62, i32 31, i32* %5, i32 1)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %84

67:                                               ; preds = %61
  %68 = load %struct.sp2*, %struct.sp2** %3, align 8
  %69 = call i32 @sp2_write_i2c(%struct.sp2* %68, i32 24, i32* %5, i32 1)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %84

73:                                               ; preds = %67
  %74 = load %struct.sp2*, %struct.sp2** %3, align 8
  %75 = getelementptr inbounds %struct.sp2, %struct.sp2* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.sp2*, %struct.sp2** %3, align 8
  %78 = getelementptr inbounds %struct.sp2, %struct.sp2* %77, i32 0, i32 1
  %79 = call i32 @dvb_ca_en50221_init(i32 %76, %struct.TYPE_4__* %78, i32 0, i32 1)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %84

83:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %92

84:                                               ; preds = %82, %72, %66, %60
  %85 = load %struct.sp2*, %struct.sp2** %3, align 8
  %86 = getelementptr inbounds %struct.sp2, %struct.sp2* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %4, align 4
  %90 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %84, %83
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #2

declare dso_local i32 @sp2_write_i2c(%struct.sp2*, i32, i32*, i32) #2

declare dso_local i32 @dvb_ca_en50221_init(i32, %struct.TYPE_4__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
