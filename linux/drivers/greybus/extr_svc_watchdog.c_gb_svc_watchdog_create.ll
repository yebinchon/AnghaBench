; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc_watchdog.c_gb_svc_watchdog_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc_watchdog.c_gb_svc_watchdog_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_svc = type { %struct.gb_svc_watchdog*, i32 }
%struct.gb_svc_watchdog = type { i32, %struct.TYPE_3__, i32, %struct.gb_svc* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@do_work = common dso_local global i32 0, align 4
@svc_watchdog_pm_notifier = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"error registering pm notifier(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error enabling watchdog (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_svc_watchdog_create(%struct.gb_svc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_svc*, align 8
  %4 = alloca %struct.gb_svc_watchdog*, align 8
  %5 = alloca i32, align 4
  store %struct.gb_svc* %0, %struct.gb_svc** %3, align 8
  %6 = load %struct.gb_svc*, %struct.gb_svc** %3, align 8
  %7 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %6, i32 0, i32 0
  %8 = load %struct.gb_svc_watchdog*, %struct.gb_svc_watchdog** %7, align 8
  %9 = icmp ne %struct.gb_svc_watchdog* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.gb_svc_watchdog* @kmalloc(i32 24, i32 %12)
  store %struct.gb_svc_watchdog* %13, %struct.gb_svc_watchdog** %4, align 8
  %14 = load %struct.gb_svc_watchdog*, %struct.gb_svc_watchdog** %4, align 8
  %15 = icmp ne %struct.gb_svc_watchdog* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %67

19:                                               ; preds = %11
  %20 = load %struct.gb_svc_watchdog*, %struct.gb_svc_watchdog** %4, align 8
  %21 = getelementptr inbounds %struct.gb_svc_watchdog, %struct.gb_svc_watchdog* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.gb_svc*, %struct.gb_svc** %3, align 8
  %23 = load %struct.gb_svc_watchdog*, %struct.gb_svc_watchdog** %4, align 8
  %24 = getelementptr inbounds %struct.gb_svc_watchdog, %struct.gb_svc_watchdog* %23, i32 0, i32 3
  store %struct.gb_svc* %22, %struct.gb_svc** %24, align 8
  %25 = load %struct.gb_svc_watchdog*, %struct.gb_svc_watchdog** %4, align 8
  %26 = getelementptr inbounds %struct.gb_svc_watchdog, %struct.gb_svc_watchdog* %25, i32 0, i32 2
  %27 = load i32, i32* @do_work, align 4
  %28 = call i32 @INIT_DELAYED_WORK(i32* %26, i32 %27)
  %29 = load %struct.gb_svc_watchdog*, %struct.gb_svc_watchdog** %4, align 8
  %30 = load %struct.gb_svc*, %struct.gb_svc** %3, align 8
  %31 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %30, i32 0, i32 0
  store %struct.gb_svc_watchdog* %29, %struct.gb_svc_watchdog** %31, align 8
  %32 = load i32, i32* @svc_watchdog_pm_notifier, align 4
  %33 = load %struct.gb_svc_watchdog*, %struct.gb_svc_watchdog** %4, align 8
  %34 = getelementptr inbounds %struct.gb_svc_watchdog, %struct.gb_svc_watchdog* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.gb_svc_watchdog*, %struct.gb_svc_watchdog** %4, align 8
  %37 = getelementptr inbounds %struct.gb_svc_watchdog, %struct.gb_svc_watchdog* %36, i32 0, i32 1
  %38 = call i32 @register_pm_notifier(%struct.TYPE_3__* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %19
  %42 = load %struct.gb_svc*, %struct.gb_svc** %3, align 8
  %43 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %42, i32 0, i32 1
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %61

46:                                               ; preds = %19
  %47 = load %struct.gb_svc*, %struct.gb_svc** %3, align 8
  %48 = call i32 @gb_svc_watchdog_enable(%struct.gb_svc* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.gb_svc*, %struct.gb_svc** %3, align 8
  %53 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %52, i32 0, i32 1
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.gb_svc_watchdog*, %struct.gb_svc_watchdog** %4, align 8
  %57 = getelementptr inbounds %struct.gb_svc_watchdog, %struct.gb_svc_watchdog* %56, i32 0, i32 1
  %58 = call i32 @unregister_pm_notifier(%struct.TYPE_3__* %57)
  br label %61

59:                                               ; preds = %46
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %67

61:                                               ; preds = %51, %41
  %62 = load %struct.gb_svc*, %struct.gb_svc** %3, align 8
  %63 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %62, i32 0, i32 0
  store %struct.gb_svc_watchdog* null, %struct.gb_svc_watchdog** %63, align 8
  %64 = load %struct.gb_svc_watchdog*, %struct.gb_svc_watchdog** %4, align 8
  %65 = call i32 @kfree(%struct.gb_svc_watchdog* %64)
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %61, %59, %16, %10
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.gb_svc_watchdog* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @register_pm_notifier(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @gb_svc_watchdog_enable(%struct.gb_svc*) #1

declare dso_local i32 @unregister_pm_notifier(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.gb_svc_watchdog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
