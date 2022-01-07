; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dvb-pll.c_dvb_pll_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dvb-pll.c_dvb_pll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.dvb_pll_priv* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.dvb_pll_priv = type { i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32*, i32* }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dvb_pll_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_pll_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_pll_priv*, align 8
  %5 = alloca %struct.i2c_msg, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 1
  %9 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %8, align 8
  store %struct.dvb_pll_priv* %9, %struct.dvb_pll_priv** %4, align 8
  %10 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %117

17:                                               ; preds = %1
  %18 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %4, align 8
  %19 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %114

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 0
  %26 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %4, align 8
  %27 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %25, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 1
  %34 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %4, align 8
  %35 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32* %39, i32** %33, align 8
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 2
  %41 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %4, align 8
  %42 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %40, align 8
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 3
  store i32 0, i32* %44, align 4
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %46 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %47, align 8
  %49 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %24
  %51 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %52 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %53, align 8
  %55 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %56 = bitcast %struct.dvb_frontend* %55 to %struct.dvb_frontend.0*
  %57 = call i32 %54(%struct.dvb_frontend.0* %56, i32 1)
  br label %58

58:                                               ; preds = %50, %24
  %59 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %4, align 8
  %60 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @i2c_transfer(i32* %61, %struct.i2c_msg* %5, i32 1)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %117

67:                                               ; preds = %58
  %68 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %4, align 8
  %69 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %113

74:                                               ; preds = %67
  %75 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %4, align 8
  %76 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 1
  store i32* %80, i32** %81, align 8
  %82 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %4, align 8
  %83 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 0
  store i32 %88, i32* %89, align 8
  %90 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %91 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %92, align 8
  %94 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %74
  %96 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %97 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %98, align 8
  %100 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %101 = bitcast %struct.dvb_frontend* %100 to %struct.dvb_frontend.0*
  %102 = call i32 %99(%struct.dvb_frontend.0* %101, i32 1)
  br label %103

103:                                              ; preds = %95, %74
  %104 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %4, align 8
  %105 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @i2c_transfer(i32* %106, %struct.i2c_msg* %5, i32 1)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 1
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %2, align 4
  br label %117

112:                                              ; preds = %103
  br label %113

113:                                              ; preds = %112, %67
  store i32 0, i32* %2, align 4
  br label %117

114:                                              ; preds = %17
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %114, %113, %110, %65, %14
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
