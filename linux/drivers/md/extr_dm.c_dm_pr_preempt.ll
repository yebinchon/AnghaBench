; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_pr_preempt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_pr_preempt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.mapped_device* }
%struct.TYPE_3__ = type { %struct.pr_ops* }
%struct.pr_ops = type { i32 (%struct.block_device.0*, i32, i32, i32, i32)* }
%struct.block_device.0 = type opaque
%struct.mapped_device = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32, i32, i32, i32)* @dm_pr_preempt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_pr_preempt(%struct.block_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mapped_device*, align 8
  %12 = alloca %struct.pr_ops*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.block_device*, %struct.block_device** %6, align 8
  %16 = getelementptr inbounds %struct.block_device, %struct.block_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.mapped_device*, %struct.mapped_device** %18, align 8
  store %struct.mapped_device* %19, %struct.mapped_device** %11, align 8
  %20 = load %struct.mapped_device*, %struct.mapped_device** %11, align 8
  %21 = call i32 @dm_prepare_ioctl(%struct.mapped_device* %20, i32* %14, %struct.block_device** %6)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  br label %55

25:                                               ; preds = %5
  %26 = load %struct.block_device*, %struct.block_device** %6, align 8
  %27 = getelementptr inbounds %struct.block_device, %struct.block_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.pr_ops*, %struct.pr_ops** %31, align 8
  store %struct.pr_ops* %32, %struct.pr_ops** %12, align 8
  %33 = load %struct.pr_ops*, %struct.pr_ops** %12, align 8
  %34 = icmp ne %struct.pr_ops* %33, null
  br i1 %34, label %35, label %51

35:                                               ; preds = %25
  %36 = load %struct.pr_ops*, %struct.pr_ops** %12, align 8
  %37 = getelementptr inbounds %struct.pr_ops, %struct.pr_ops* %36, i32 0, i32 0
  %38 = load i32 (%struct.block_device.0*, i32, i32, i32, i32)*, i32 (%struct.block_device.0*, i32, i32, i32, i32)** %37, align 8
  %39 = icmp ne i32 (%struct.block_device.0*, i32, i32, i32, i32)* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.pr_ops*, %struct.pr_ops** %12, align 8
  %42 = getelementptr inbounds %struct.pr_ops, %struct.pr_ops* %41, i32 0, i32 0
  %43 = load i32 (%struct.block_device.0*, i32, i32, i32, i32)*, i32 (%struct.block_device.0*, i32, i32, i32, i32)** %42, align 8
  %44 = load %struct.block_device*, %struct.block_device** %6, align 8
  %45 = bitcast %struct.block_device* %44 to %struct.block_device.0*
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 %43(%struct.block_device.0* %45, i32 %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %13, align 4
  br label %54

51:                                               ; preds = %35, %25
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %51, %40
  br label %55

55:                                               ; preds = %54, %24
  %56 = load %struct.mapped_device*, %struct.mapped_device** %11, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @dm_unprepare_ioctl(%struct.mapped_device* %56, i32 %57)
  %59 = load i32, i32* %13, align 4
  ret i32 %59
}

declare dso_local i32 @dm_prepare_ioctl(%struct.mapped_device*, i32*, %struct.block_device**) #1

declare dso_local i32 @dm_unprepare_ioctl(%struct.mapped_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
