; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Event not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedr_dev*, i32)* @qedr_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_notify(%struct.qedr_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.qedr_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %18 [
    i32 128, label %6
    i32 129, label %9
    i32 130, label %12
    i32 131, label %15
  ]

6:                                                ; preds = %2
  %7 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %8 = call i32 @qedr_open(%struct.qedr_dev* %7)
  br label %20

9:                                                ; preds = %2
  %10 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %11 = call i32 @qedr_close(%struct.qedr_dev* %10)
  br label %20

12:                                               ; preds = %2
  %13 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %14 = call i32 @qedr_shutdown(%struct.qedr_dev* %13)
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %17 = call i32 @qedr_mac_address_change(%struct.qedr_dev* %16)
  br label %20

18:                                               ; preds = %2
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %15, %12, %9, %6
  ret void
}

declare dso_local i32 @qedr_open(%struct.qedr_dev*) #1

declare dso_local i32 @qedr_close(%struct.qedr_dev*) #1

declare dso_local i32 @qedr_shutdown(%struct.qedr_dev*) #1

declare dso_local i32 @qedr_mac_address_change(%struct.qedr_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
