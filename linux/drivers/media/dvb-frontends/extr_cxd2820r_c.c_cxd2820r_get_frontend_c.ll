; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_c.c_cxd2820r_get_frontend_c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_c.c_cxd2820r_get_frontend_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cxd2820r_priv* }
%struct.cxd2820r_priv = type { i32*, %struct.i2c_client** }
%struct.i2c_client = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@QAM_16 = common dso_local global i32 0, align 4
@QAM_32 = common dso_local global i32 0, align 4
@QAM_64 = common dso_local global i32 0, align 4
@QAM_128 = common dso_local global i32 0, align 4
@QAM_256 = common dso_local global i32 0, align 4
@INVERSION_OFF = common dso_local global i32 0, align 4
@INVERSION_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2820r_get_frontend_c(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca %struct.cxd2820r_priv*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %12, align 8
  store %struct.cxd2820r_priv* %13, %struct.cxd2820r_priv** %6, align 8
  %14 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %15 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %14, i32 0, i32 1
  %16 = load %struct.i2c_client**, %struct.i2c_client*** %15, align 8
  %17 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %16, i64 0
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %7, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %23 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %28 = call i32 @regmap_bulk_read(i32 %26, i32 26, i32* %27, i32 2)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %90

32:                                               ; preds = %2
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 15
  %36 = shl i32 %35, 8
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %36, %38
  %40 = mul nsw i32 2500, %39
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %42 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %44 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @regmap_read(i32 %47, i32 25, i32* %9)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %32
  br label %90

52:                                               ; preds = %32
  %53 = load i32, i32* %9, align 4
  %54 = lshr i32 %53, 0
  %55 = and i32 %54, 7
  switch i32 %55, label %76 [
    i32 0, label %56
    i32 1, label %60
    i32 2, label %64
    i32 3, label %68
    i32 4, label %72
  ]

56:                                               ; preds = %52
  %57 = load i32, i32* @QAM_16, align 4
  %58 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %59 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  br label %76

60:                                               ; preds = %52
  %61 = load i32, i32* @QAM_32, align 4
  %62 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %63 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  br label %76

64:                                               ; preds = %52
  %65 = load i32, i32* @QAM_64, align 4
  %66 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %67 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  br label %76

68:                                               ; preds = %52
  %69 = load i32, i32* @QAM_128, align 4
  %70 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %71 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  br label %76

72:                                               ; preds = %52
  %73 = load i32, i32* @QAM_256, align 4
  %74 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %75 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %52, %72, %68, %64, %60, %56
  %77 = load i32, i32* %9, align 4
  %78 = lshr i32 %77, 7
  %79 = and i32 %78, 1
  switch i32 %79, label %88 [
    i32 0, label %80
    i32 1, label %84
  ]

80:                                               ; preds = %76
  %81 = load i32, i32* @INVERSION_OFF, align 4
  %82 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %83 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %88

84:                                               ; preds = %76
  %85 = load i32, i32* @INVERSION_ON, align 4
  %86 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %87 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %76, %84, %80
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %96

90:                                               ; preds = %51, %31
  %91 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 0
  %93 = load i32, i32* %8, align 4
  %94 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %90, %88
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
