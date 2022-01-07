; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v4.c_its_init_v4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v4.c_its_init_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_domain_ops = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"ITS: Enabling GICv4 support\0A\00", align 1
@gic_domain = common dso_local global %struct.irq_domain* null, align 8
@vpe_domain_ops = common dso_local global %struct.irq_domain_ops* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"ITS: No GICv4 VPE domain allocated\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @its_init_v4(%struct.irq_domain* %0, %struct.irq_domain_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca %struct.irq_domain_ops*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store %struct.irq_domain_ops* %1, %struct.irq_domain_ops** %5, align 8
  %6 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %7 = icmp ne %struct.irq_domain* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  store %struct.irq_domain* %10, %struct.irq_domain** @gic_domain, align 8
  %11 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** %5, align 8
  store %struct.irq_domain_ops* %11, %struct.irq_domain_ops** @vpe_domain_ops, align 8
  store i32 0, i32* %3, align 4
  br label %16

12:                                               ; preds = %2
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
