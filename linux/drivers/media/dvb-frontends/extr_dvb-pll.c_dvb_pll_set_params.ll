; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dvb-pll.c_dvb_pll_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dvb-pll.c_dvb_pll_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.dvb_pll_priv*, %struct.dtv_frontend_properties }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.dvb_pll_priv = type { i32, i32, i32*, i32 }
%struct.dtv_frontend_properties = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dvb_pll_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_pll_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.dvb_pll_priv*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca %struct.i2c_msg, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 2
  store %struct.dtv_frontend_properties* %11, %struct.dtv_frontend_properties** %4, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1
  %14 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %13, align 8
  store %struct.dvb_pll_priv* %14, %struct.dvb_pll_priv** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 0
  store i32 16, i32* %15, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 1
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32* %17, i32** %16, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 2
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 3
  %20 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %5, align 8
  %21 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %19, align 4
  store i32 0, i32* %9, align 4
  %23 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %5, align 8
  %24 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %74

30:                                               ; preds = %1
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %34 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dvb_pll_configure(%struct.dvb_frontend* %31, i32* %32, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %2, align 4
  br label %74

41:                                               ; preds = %30
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %41
  %44 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %45 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %46, align 8
  %48 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %51 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %52, align 8
  %54 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %55 = bitcast %struct.dvb_frontend* %54 to %struct.dvb_frontend.0*
  %56 = call i32 %53(%struct.dvb_frontend.0* %55, i32 1)
  br label %57

57:                                               ; preds = %49, %43
  %58 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %5, align 8
  %59 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @i2c_transfer(i32* %60, %struct.i2c_msg* %7, i32 1)
  store i32 %61, i32* %8, align 4
  %62 = icmp ne i32 %61, 1
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %2, align 4
  br label %74

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %5, align 8
  %68 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %70 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %5, align 8
  %73 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %65, %63, %39, %27
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @dvb_pll_configure(%struct.dvb_frontend*, i32*, i32) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
