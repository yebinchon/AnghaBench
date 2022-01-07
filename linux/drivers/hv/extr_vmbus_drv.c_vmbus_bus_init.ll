; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_bus_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_bus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Unable to initialize the hypervisor - 0x%x\0A\00", align 1
@hv_bus = common dso_local global i32 0, align 4
@vmbus_isr = common dso_local global i32 0, align 4
@VMBUS_MESSAGE_SINT = common dso_local global i32 0, align 4
@CPUHP_AP_ONLINE_DYN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"hyperv/vmbus:online\00", align 1
@hv_synic_init = common dso_local global i32 0, align 4
@hv_synic_cleanup = common dso_local global i32 0, align 4
@hyperv_cpuhp_online = common dso_local global i32 0, align 4
@ms_hyperv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@HV_FEATURE_GUEST_CRASH_MSR_AVAILABLE = common dso_local global i32 0, align 4
@hv_root_table = common dso_local global i32 0, align 4
@hv_ctl_table_hdr = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Hyper-V: sysctl table register error\00", align 1
@HV_CRASH_CTL_CRASH_NOTIFY_MSG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@hv_panic_page = common dso_local global i8* null, align 8
@hv_kmsg_dumper = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Hyper-V: kmsg dump register error 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Hyper-V: panic message page memory allocation failed\00", align 1
@hyperv_die_block = common dso_local global i32 0, align 4
@panic_notifier_list = common dso_local global i32 0, align 4
@hyperv_panic_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vmbus_bus_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmbus_bus_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @hv_init()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %1, align 4
  br label %100

11:                                               ; preds = %0
  %12 = call i32 @bus_register(i32* @hv_bus)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  store i32 %16, i32* %1, align 4
  br label %100

17:                                               ; preds = %11
  %18 = load i32, i32* @vmbus_isr, align 4
  %19 = call i32 @hv_setup_vmbus_irq(i32 %18)
  %20 = call i32 (...) @hv_synic_alloc()
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %90

24:                                               ; preds = %17
  %25 = load i32, i32* @VMBUS_MESSAGE_SINT, align 4
  %26 = call i32 @hv_stimer_alloc(i32 %25)
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %90

30:                                               ; preds = %24
  %31 = load i32, i32* @CPUHP_AP_ONLINE_DYN, align 4
  %32 = load i32, i32* @hv_synic_init, align 4
  %33 = load i32, i32* @hv_synic_cleanup, align 4
  %34 = call i32 @cpuhp_setup_state(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %88

38:                                               ; preds = %30
  %39 = load i32, i32* %2, align 4
  store i32 %39, i32* @hyperv_cpuhp_online, align 4
  %40 = call i32 (...) @vmbus_connect()
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %85

44:                                               ; preds = %38
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ms_hyperv, i32 0, i32 0), align 4
  %46 = load i32, i32* @HV_FEATURE_GUEST_CRASH_MSR_AVAILABLE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %83

49:                                               ; preds = %44
  %50 = load i32, i32* @hv_root_table, align 4
  %51 = call i32* @register_sysctl_table(i32 %50)
  store i32* %51, i32** @hv_ctl_table_hdr, align 8
  %52 = load i32*, i32** @hv_ctl_table_hdr, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @hv_get_crash_ctl(i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @HV_CRASH_CTL_CRASH_NOTIFY_MSG, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %56
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i64 @get_zeroed_page(i32 %64)
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** @hv_panic_page, align 8
  %67 = load i8*, i8** @hv_panic_page, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = call i32 @kmsg_dump_register(i32* @hv_kmsg_dumper)
  store i32 %70, i32* %2, align 4
  %71 = load i32, i32* %2, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* %2, align 4
  %75 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %73, %69
  br label %79

77:                                               ; preds = %63
  %78 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %76
  br label %80

80:                                               ; preds = %79, %56
  %81 = call i32 @register_die_notifier(i32* @hyperv_die_block)
  %82 = call i32 @atomic_notifier_chain_register(i32* @panic_notifier_list, i32* @hyperv_panic_block)
  br label %83

83:                                               ; preds = %80, %44
  %84 = call i32 (...) @vmbus_request_offers()
  store i32 0, i32* %1, align 4
  br label %100

85:                                               ; preds = %43
  %86 = load i32, i32* @hyperv_cpuhp_online, align 4
  %87 = call i32 @cpuhp_remove_state(i32 %86)
  br label %88

88:                                               ; preds = %85, %37
  %89 = call i32 (...) @hv_stimer_free()
  br label %90

90:                                               ; preds = %88, %29, %23
  %91 = call i32 (...) @hv_synic_free()
  %92 = call i32 (...) @hv_remove_vmbus_irq()
  %93 = call i32 @bus_unregister(i32* @hv_bus)
  %94 = load i8*, i8** @hv_panic_page, align 8
  %95 = ptrtoint i8* %94 to i64
  %96 = call i32 @free_page(i64 %95)
  %97 = load i32*, i32** @hv_ctl_table_hdr, align 8
  %98 = call i32 @unregister_sysctl_table(i32* %97)
  store i32* null, i32** @hv_ctl_table_hdr, align 8
  %99 = load i32, i32* %2, align 4
  store i32 %99, i32* %1, align 4
  br label %100

100:                                              ; preds = %90, %83, %15, %7
  %101 = load i32, i32* %1, align 4
  ret i32 %101
}

declare dso_local i32 @hv_init(...) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @bus_register(i32*) #1

declare dso_local i32 @hv_setup_vmbus_irq(i32) #1

declare dso_local i32 @hv_synic_alloc(...) #1

declare dso_local i32 @hv_stimer_alloc(i32) #1

declare dso_local i32 @cpuhp_setup_state(i32, i8*, i32, i32) #1

declare dso_local i32 @vmbus_connect(...) #1

declare dso_local i32* @register_sysctl_table(i32) #1

declare dso_local i32 @hv_get_crash_ctl(i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @kmsg_dump_register(i32*) #1

declare dso_local i32 @register_die_notifier(i32*) #1

declare dso_local i32 @atomic_notifier_chain_register(i32*, i32*) #1

declare dso_local i32 @vmbus_request_offers(...) #1

declare dso_local i32 @cpuhp_remove_state(i32) #1

declare dso_local i32 @hv_stimer_free(...) #1

declare dso_local i32 @hv_synic_free(...) #1

declare dso_local i32 @hv_remove_vmbus_irq(...) #1

declare dso_local i32 @bus_unregister(i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @unregister_sysctl_table(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
