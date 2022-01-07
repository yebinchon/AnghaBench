; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_mdss.c_mdss_irq_domain_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_mdss.c_mdss_irq_domain_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_mdss = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.irq_domain*, i64 }
%struct.irq_domain = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }

@mdss_hw_irqdomain_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"mdss irq domain add failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdp5_mdss*)* @mdss_irq_domain_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdss_irq_domain_init(%struct.mdp5_mdss* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdp5_mdss*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.irq_domain*, align 8
  store %struct.mdp5_mdss* %0, %struct.mdp5_mdss** %3, align 8
  %6 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %3, align 8
  %7 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %3, align 8
  %16 = call %struct.irq_domain* @irq_domain_add_linear(i32 %14, i32 32, i32* @mdss_hw_irqdomain_ops, %struct.mdp5_mdss* %15)
  store %struct.irq_domain* %16, %struct.irq_domain** %5, align 8
  %17 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %18 = icmp ne %struct.irq_domain* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @DRM_DEV_ERROR(%struct.device* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %3, align 8
  %26 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %29 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %3, align 8
  %30 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store %struct.irq_domain* %28, %struct.irq_domain** %31, align 8
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %24, %19
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.irq_domain* @irq_domain_add_linear(i32, i32, i32*, %struct.mdp5_mdss*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
