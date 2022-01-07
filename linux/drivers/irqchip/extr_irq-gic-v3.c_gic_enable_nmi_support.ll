; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3.c_gic_enable_nmi_support.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3.c_gic_enable_nmi_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"SCR_EL3.FIQ is cleared, cannot enable use of pseudo-NMIs\0A\00", align 1
@gic_data = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ppi_nmi_refs = common dso_local global i32* null, align 8
@supports_pseudo_nmis = common dso_local global i32 0, align 4
@supports_deactivate_key = common dso_local global i32 0, align 4
@IRQCHIP_SUPPORTS_NMI = common dso_local global i32 0, align 4
@gic_eoimode1_chip = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@gic_chip = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gic_enable_nmi_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gic_enable_nmi_support() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @gic_prio_masking_enabled()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %46

5:                                                ; preds = %0
  %6 = call i64 (...) @gic_has_group0()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = call i32 (...) @gic_dist_security_disabled()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = call i32 @pr_warn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %46

13:                                               ; preds = %8, %5
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gic_data, i32 0, i32 0), align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kcalloc(i32 %14, i32 4, i32 %15)
  store i32* %16, i32** @ppi_nmi_refs, align 8
  %17 = load i32*, i32** @ppi_nmi_refs, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %46

20:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %31, %20
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gic_data, i32 0, i32 0), align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i32*, i32** @ppi_nmi_refs, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i32 @refcount_set(i32* %29, i32 0)
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %21

34:                                               ; preds = %21
  %35 = call i32 @static_branch_enable(i32* @supports_pseudo_nmis)
  %36 = call i64 @static_branch_likely(i32* @supports_deactivate_key)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @IRQCHIP_SUPPORTS_NMI, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gic_eoimode1_chip, i32 0, i32 0), align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gic_eoimode1_chip, i32 0, i32 0), align 4
  br label %46

42:                                               ; preds = %34
  %43 = load i32, i32* @IRQCHIP_SUPPORTS_NMI, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gic_chip, i32 0, i32 0), align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gic_chip, i32 0, i32 0), align 4
  br label %46

46:                                               ; preds = %4, %11, %19, %42, %38
  ret void
}

declare dso_local i32 @gic_prio_masking_enabled(...) #1

declare dso_local i64 @gic_has_group0(...) #1

declare dso_local i32 @gic_dist_security_disabled(...) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @static_branch_enable(i32*) #1

declare dso_local i64 @static_branch_likely(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
