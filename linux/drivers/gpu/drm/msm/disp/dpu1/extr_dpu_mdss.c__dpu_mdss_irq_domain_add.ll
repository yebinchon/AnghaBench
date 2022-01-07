; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_mdss.c__dpu_mdss_irq_domain_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_mdss.c__dpu_mdss_irq_domain_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_mdss = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.irq_domain*, i64 }
%struct.irq_domain = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }

@dpu_mdss_irqdomain_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to add irq_domain\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_mdss*)* @_dpu_mdss_irq_domain_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dpu_mdss_irq_domain_add(%struct.dpu_mdss* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpu_mdss*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.irq_domain*, align 8
  store %struct.dpu_mdss* %0, %struct.dpu_mdss** %3, align 8
  %6 = load %struct.dpu_mdss*, %struct.dpu_mdss** %3, align 8
  %7 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dpu_mdss*, %struct.dpu_mdss** %3, align 8
  %16 = call %struct.irq_domain* @irq_domain_add_linear(i32 %14, i32 32, i32* @dpu_mdss_irqdomain_ops, %struct.dpu_mdss* %15)
  store %struct.irq_domain* %16, %struct.irq_domain** %5, align 8
  %17 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %18 = icmp ne %struct.irq_domain* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load %struct.dpu_mdss*, %struct.dpu_mdss** %3, align 8
  %25 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %28 = load %struct.dpu_mdss*, %struct.dpu_mdss** %3, align 8
  %29 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store %struct.irq_domain* %27, %struct.irq_domain** %30, align 8
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %19
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.irq_domain* @irq_domain_add_linear(i32, i32, i32*, %struct.dpu_mdss*) #1

declare dso_local i32 @DPU_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
