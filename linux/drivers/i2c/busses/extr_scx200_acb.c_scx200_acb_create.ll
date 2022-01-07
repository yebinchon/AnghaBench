; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_scx200_acb.c_scx200_acb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_scx200_acb.c_scx200_acb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scx200_acb_iface = type { %struct.scx200_acb_iface*, %struct.i2c_adapter }
%struct.i2c_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"probe failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"failed to register\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@scx200_acb_list_mutex = common dso_local global i32 0, align 4
@scx200_acb_list = common dso_local global %struct.scx200_acb_iface* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scx200_acb_iface*)* @scx200_acb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scx200_acb_create(%struct.scx200_acb_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scx200_acb_iface*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.scx200_acb_iface* %0, %struct.scx200_acb_iface** %3, align 8
  %6 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %3, align 8
  %7 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %6, i32 0, i32 1
  store %struct.i2c_adapter* %7, %struct.i2c_adapter** %4, align 8
  %8 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %3, align 8
  %9 = call i32 @scx200_acb_probe(%struct.scx200_acb_iface* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = call i32 @pr_warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %39

15:                                               ; preds = %1
  %16 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %3, align 8
  %17 = call i32 @scx200_acb_reset(%struct.scx200_acb_iface* %16)
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %19 = call i64 @i2c_add_adapter(%struct.i2c_adapter* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %39

25:                                               ; preds = %15
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = call i32 @mutex_lock(i32* @scx200_acb_list_mutex)
  %33 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** @scx200_acb_list, align 8
  %34 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %3, align 8
  %35 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %34, i32 0, i32 0
  store %struct.scx200_acb_iface* %33, %struct.scx200_acb_iface** %35, align 8
  %36 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %3, align 8
  store %struct.scx200_acb_iface* %36, %struct.scx200_acb_iface** @scx200_acb_list, align 8
  %37 = call i32 @mutex_unlock(i32* @scx200_acb_list_mutex)
  br label %38

38:                                               ; preds = %31, %25
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %21, %12
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @scx200_acb_probe(%struct.scx200_acb_iface*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @scx200_acb_reset(%struct.scx200_acb_iface*) #1

declare dso_local i64 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
