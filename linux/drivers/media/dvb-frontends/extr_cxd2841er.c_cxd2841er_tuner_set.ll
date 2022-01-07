; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2841er.c_cxd2841er_tuner_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2841er.c_cxd2841er_tuner_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.cxd2841er_priv* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_3__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i32 (%struct.dvb_frontend.1*)* }
%struct.dvb_frontend.1 = type opaque
%struct.cxd2841er_priv = type { i32 }

@CXD2841ER_USE_GATECTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @cxd2841er_tuner_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2841er_tuner_set(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.cxd2841er_priv*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 1
  %6 = load %struct.cxd2841er_priv*, %struct.cxd2841er_priv** %5, align 8
  store %struct.cxd2841er_priv* %6, %struct.cxd2841er_priv** %3, align 8
  %7 = load %struct.cxd2841er_priv*, %struct.cxd2841er_priv** %3, align 8
  %8 = getelementptr inbounds %struct.cxd2841er_priv, %struct.cxd2841er_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CXD2841ER_USE_GATECTRL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %22, align 8
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %25 = bitcast %struct.dvb_frontend* %24 to %struct.dvb_frontend.0*
  %26 = call i32 %23(%struct.dvb_frontend.0* %25, i32 1)
  br label %27

27:                                               ; preds = %19, %13, %1
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %31, align 8
  %33 = icmp ne i32 (%struct.dvb_frontend.1*)* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %36 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %38, align 8
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %41 = bitcast %struct.dvb_frontend* %40 to %struct.dvb_frontend.1*
  %42 = call i32 %39(%struct.dvb_frontend.1* %41)
  br label %43

43:                                               ; preds = %34, %27
  %44 = load %struct.cxd2841er_priv*, %struct.cxd2841er_priv** %3, align 8
  %45 = getelementptr inbounds %struct.cxd2841er_priv, %struct.cxd2841er_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CXD2841ER_USE_GATECTRL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %43
  %51 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %52 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %53, align 8
  %55 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %58 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %59, align 8
  %61 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %62 = bitcast %struct.dvb_frontend* %61 to %struct.dvb_frontend.0*
  %63 = call i32 %60(%struct.dvb_frontend.0* %62, i32 0)
  br label %64

64:                                               ; preds = %56, %50, %43
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
