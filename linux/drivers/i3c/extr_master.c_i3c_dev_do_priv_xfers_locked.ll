; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_dev_do_priv_xfers_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_dev_do_priv_xfers_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_dev_desc = type { i32 }
%struct.i3c_priv_xfer = type { i32 }
%struct.i3c_master_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.i3c_dev_desc*, %struct.i3c_priv_xfer*, i32)* }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i3c_dev_do_priv_xfers_locked(%struct.i3c_dev_desc* %0, %struct.i3c_priv_xfer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i3c_dev_desc*, align 8
  %6 = alloca %struct.i3c_priv_xfer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i3c_master_controller*, align 8
  store %struct.i3c_dev_desc* %0, %struct.i3c_dev_desc** %5, align 8
  store %struct.i3c_priv_xfer* %1, %struct.i3c_priv_xfer** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %5, align 8
  %10 = icmp ne %struct.i3c_dev_desc* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %45

14:                                               ; preds = %3
  %15 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %5, align 8
  %16 = call %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc* %15)
  store %struct.i3c_master_controller* %16, %struct.i3c_master_controller** %8, align 8
  %17 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %8, align 8
  %18 = icmp ne %struct.i3c_master_controller* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.i3c_priv_xfer*, %struct.i3c_priv_xfer** %6, align 8
  %21 = icmp ne %struct.i3c_priv_xfer* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %14
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %45

25:                                               ; preds = %19
  %26 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %8, align 8
  %27 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.i3c_dev_desc*, %struct.i3c_priv_xfer*, i32)*, i32 (%struct.i3c_dev_desc*, %struct.i3c_priv_xfer*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.i3c_dev_desc*, %struct.i3c_priv_xfer*, i32)* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %45

35:                                               ; preds = %25
  %36 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %8, align 8
  %37 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.i3c_dev_desc*, %struct.i3c_priv_xfer*, i32)*, i32 (%struct.i3c_dev_desc*, %struct.i3c_priv_xfer*, i32)** %39, align 8
  %41 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %5, align 8
  %42 = load %struct.i3c_priv_xfer*, %struct.i3c_priv_xfer** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 %40(%struct.i3c_dev_desc* %41, %struct.i3c_priv_xfer* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %35, %32, %22, %11
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
