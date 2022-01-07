; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_t2.c_cxd2820r_sleep_t2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_t2.c_cxd2820r_sleep_t2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_val_mask = type { i32, i32, i32 }
%struct.dvb_frontend = type { %struct.cxd2820r_priv* }
%struct.cxd2820r_priv = type { i32, %struct.i2c_client** }
%struct.i2c_client = type { i32 }

@__const.cxd2820r_sleep_t2.tab = private unnamed_addr constant [6 x %struct.reg_val_mask] [%struct.reg_val_mask { i32 255, i32 31, i32 255 }, %struct.reg_val_mask { i32 133, i32 0, i32 255 }, %struct.reg_val_mask { i32 136, i32 1, i32 255 }, %struct.reg_val_mask { i32 8297, i32 0, i32 255 }, %struct.reg_val_mask { i32 129, i32 0, i32 255 }, %struct.reg_val_mask { i32 128, i32 0, i32 255 }], align 16
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SYS_UNDEFINED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2820r_sleep_t2(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.cxd2820r_priv*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [6 x %struct.reg_val_mask], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %9, align 8
  store %struct.cxd2820r_priv* %10, %struct.cxd2820r_priv** %4, align 8
  %11 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %4, align 8
  %12 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %11, i32 0, i32 1
  %13 = load %struct.i2c_client**, %struct.i2c_client*** %12, align 8
  %14 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %13, i64 0
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %5, align 8
  %16 = bitcast [6 x %struct.reg_val_mask]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([6 x %struct.reg_val_mask]* @__const.cxd2820r_sleep_t2.tab to i8*), i64 72, i1 false)
  %17 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %4, align 8
  %21 = getelementptr inbounds [6 x %struct.reg_val_mask], [6 x %struct.reg_val_mask]* %7, i64 0, i64 0
  %22 = getelementptr inbounds [6 x %struct.reg_val_mask], [6 x %struct.reg_val_mask]* %7, i64 0, i64 0
  %23 = call i32 @ARRAY_SIZE(%struct.reg_val_mask* %22)
  %24 = call i32 @cxd2820r_wr_reg_val_mask_tab(%struct.cxd2820r_priv* %20, %struct.reg_val_mask* %21, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %33

28:                                               ; preds = %1
  %29 = load i32, i32* @SYS_UNDEFINED, align 4
  %30 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %4, align 8
  %31 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %39

33:                                               ; preds = %27
  %34 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %33, %28
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #2

declare dso_local i32 @cxd2820r_wr_reg_val_mask_tab(%struct.cxd2820r_priv*, %struct.reg_val_mask*, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.reg_val_mask*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
