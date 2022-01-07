; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_usb_log_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_usb_log_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es2_ap_dev = type { i32, i32 }

@apb_log_poll = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"apb_log\00", align 1
@apb_log_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es2_ap_dev*)* @usb_log_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_log_enable(%struct.es2_ap_dev* %0) #0 {
  %2 = alloca %struct.es2_ap_dev*, align 8
  store %struct.es2_ap_dev* %0, %struct.es2_ap_dev** %2, align 8
  %3 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %2, align 8
  %4 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @IS_ERR_OR_NULL(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %27

9:                                                ; preds = %1
  %10 = load i32, i32* @apb_log_poll, align 4
  %11 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %2, align 8
  %12 = call i32 @kthread_run(i32 %10, %struct.es2_ap_dev* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %2, align 8
  %14 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %2, align 8
  %16 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @IS_ERR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  br label %27

21:                                               ; preds = %9
  %22 = call i32 (...) @gb_debugfs_get()
  %23 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %2, align 8
  %24 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 292, i32 %22, %struct.es2_ap_dev* %23, i32* @apb_log_fops)
  %25 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %2, align 8
  %26 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %21, %20, %8
  ret void
}

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @kthread_run(i32, %struct.es2_ap_dev*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.es2_ap_dev*, i32*) #1

declare dso_local i32 @gb_debugfs_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
