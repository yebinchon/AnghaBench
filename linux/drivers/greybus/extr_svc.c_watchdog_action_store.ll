; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_watchdog_action_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_watchdog_action_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gb_svc = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"panic\00", align 1
@GB_SVC_WATCHDOG_BITE_PANIC_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GB_SVC_WATCHDOG_BITE_RESET_UNIPRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @watchdog_action_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @watchdog_action_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gb_svc*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call %struct.gb_svc* @to_gb_svc(%struct.device* %11)
  store %struct.gb_svc* %12, %struct.gb_svc** %10, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i64 @sysfs_streq(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* @GB_SVC_WATCHDOG_BITE_PANIC_KERNEL, align 4
  %18 = load %struct.gb_svc*, %struct.gb_svc** %10, align 8
  %19 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %32

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @sysfs_streq(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @GB_SVC_WATCHDOG_BITE_RESET_UNIPRO, align 4
  %26 = load %struct.gb_svc*, %struct.gb_svc** %10, align 8
  %27 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %31

28:                                               ; preds = %20
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %34

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %16
  %33 = load i64, i64* %9, align 8
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i64, i64* %5, align 8
  ret i64 %35
}

declare dso_local %struct.gb_svc* @to_gb_svc(%struct.device*) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
