; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_core.c_cxd2820r_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_core.c_cxd2820r_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.cxd2820r_priv* }
%struct.dtv_frontend_properties = type { i32 }
%struct.cxd2820r_priv = type { i32, i32*, %struct.i2c_client** }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"delivery_system=%d\0A\00", align 1
@CXD2820R_GPIO_E = common dso_local global i32 0, align 4
@CXD2820R_GPIO_I = common dso_local global i32 0, align 4
@CXD2820R_GPIO_H = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"gpio i=%d %02x %02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"wr gpio=%02x %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2820r_gpio(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cxd2820r_priv*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.dtv_frontend_properties*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1
  %15 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %14, align 8
  store %struct.cxd2820r_priv* %15, %struct.cxd2820r_priv** %6, align 8
  %16 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %17 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %16, i32 0, i32 2
  %18 = load %struct.i2c_client**, %struct.i2c_client*** %17, align 8
  %19 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %18, i64 0
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %7, align 8
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 0
  store %struct.dtv_frontend_properties* %22, %struct.dtv_frontend_properties** %8, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %31 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @memcmp(i32* %29, i32 %32, i32 4)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %154

36:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %111, %36
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %39, 4
  br i1 %40, label %41, label %114

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CXD2820R_GPIO_E, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load i32, i32* %10, align 4
  %52 = mul nsw i32 2, %51
  %53 = ashr i32 128, %52
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %62

56:                                               ; preds = %41
  %57 = load i32, i32* %10, align 4
  %58 = mul nsw i32 2, %57
  %59 = ashr i32 64, %58
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %56, %50
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CXD2820R_GPIO_I, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %62
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 3, %72
  %74 = shl i32 1, %73
  %75 = load i32, i32* %12, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %12, align 4
  br label %83

77:                                               ; preds = %62
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 3, %78
  %80 = shl i32 0, %79
  %81 = load i32, i32* %12, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %77, %71
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CXD2820R_GPIO_H, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %83
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 0, %93
  %95 = shl i32 1, %94
  %96 = load i32, i32* %12, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %12, align 4
  br label %104

98:                                               ; preds = %83
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 0, %99
  %101 = shl i32 0, %100
  %102 = load i32, i32* %12, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %98, %92
  %105 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 0
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %104
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %37

114:                                              ; preds = %37
  %115 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 0
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %116, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %118)
  %120 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %121 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @regmap_update_bits(i32 %124, i32 137, i32 252, i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %114
  br label %148

130:                                              ; preds = %114
  %131 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %132 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @regmap_update_bits(i32 %135, i32 142, i32 63, i32 %136)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  br label %148

141:                                              ; preds = %130
  %142 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %143 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32*, i32** %5, align 8
  %146 = call i32 @memcpy(i32 %144, i32* %145, i32 4)
  %147 = load i32, i32* %9, align 4
  store i32 %147, i32* %3, align 4
  br label %154

148:                                              ; preds = %140, %129
  %149 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %150 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %149, i32 0, i32 0
  %151 = load i32, i32* %9, align 4
  %152 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %150, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %9, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %148, %141, %35
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
