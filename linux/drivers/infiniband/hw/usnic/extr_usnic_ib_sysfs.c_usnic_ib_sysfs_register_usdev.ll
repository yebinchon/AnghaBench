; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_sysfs.c_usnic_ib_sysfs_register_usdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_sysfs.c_usnic_ib_sysfs_register_usdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_ib_dev = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"qpn\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usnic_ib_sysfs_register_usdev(%struct.usnic_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usnic_ib_dev*, align 8
  store %struct.usnic_ib_dev* %0, %struct.usnic_ib_dev** %3, align 8
  %4 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %3, align 8
  %5 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = call i32 @kobject_get(i32* %7)
  %9 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %3, align 8
  %10 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32* @kobject_create_and_add(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %12)
  %14 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %3, align 8
  %15 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %14, i32 0, i32 1
  store i32* %13, i32** %15, align 8
  %16 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %3, align 8
  %17 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %3, align 8
  %22 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @kobject_put(i32* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %20
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @kobject_get(i32*) #1

declare dso_local i32* @kobject_create_and_add(i8*, i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
