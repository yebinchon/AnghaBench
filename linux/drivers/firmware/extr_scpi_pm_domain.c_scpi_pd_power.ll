; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_scpi_pm_domain.c_scpi_pd_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_scpi_pm_domain.c_scpi_pd_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scpi_pm_domain = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)*, i32 (i32)* }

@SCPI_PD_STATE_ON = common dso_local global i32 0, align 4
@SCPI_PD_STATE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scpi_pm_domain*, i32)* @scpi_pd_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scpi_pd_power(%struct.scpi_pm_domain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scpi_pm_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scpi_pm_domain* %0, %struct.scpi_pm_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @SCPI_PD_STATE_ON, align 4
  store i32 %11, i32* %7, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @SCPI_PD_STATE_OFF, align 4
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = load %struct.scpi_pm_domain*, %struct.scpi_pm_domain** %4, align 8
  %16 = getelementptr inbounds %struct.scpi_pm_domain, %struct.scpi_pm_domain* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (i32, i32)*, i32 (i32, i32)** %18, align 8
  %20 = load %struct.scpi_pm_domain*, %struct.scpi_pm_domain** %4, align 8
  %21 = getelementptr inbounds %struct.scpi_pm_domain, %struct.scpi_pm_domain* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 %19(i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %14
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.scpi_pm_domain*, %struct.scpi_pm_domain** %4, align 8
  %32 = getelementptr inbounds %struct.scpi_pm_domain, %struct.scpi_pm_domain* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32 (i32)*, i32 (i32)** %34, align 8
  %36 = load %struct.scpi_pm_domain*, %struct.scpi_pm_domain** %4, align 8
  %37 = getelementptr inbounds %struct.scpi_pm_domain, %struct.scpi_pm_domain* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 %35(i32 %38)
  %40 = icmp eq i32 %30, %39
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %29, %27
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
