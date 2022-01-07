; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_pr_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_pr_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.mapped_device* }
%struct.TYPE_3__ = type { %struct.pr_ops* }
%struct.pr_ops = type { i32 (%struct.block_device.0*, i32)* }
%struct.block_device.0 = type opaque
%struct.mapped_device = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32)* @dm_pr_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_pr_clear(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mapped_device*, align 8
  %6 = alloca %struct.pr_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.block_device*, %struct.block_device** %3, align 8
  %10 = getelementptr inbounds %struct.block_device, %struct.block_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  store %struct.mapped_device* %13, %struct.mapped_device** %5, align 8
  %14 = load %struct.mapped_device*, %struct.mapped_device** %5, align 8
  %15 = call i32 @dm_prepare_ioctl(%struct.mapped_device* %14, i32* %8, %struct.block_device** %3)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %46

19:                                               ; preds = %2
  %20 = load %struct.block_device*, %struct.block_device** %3, align 8
  %21 = getelementptr inbounds %struct.block_device, %struct.block_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.pr_ops*, %struct.pr_ops** %25, align 8
  store %struct.pr_ops* %26, %struct.pr_ops** %6, align 8
  %27 = load %struct.pr_ops*, %struct.pr_ops** %6, align 8
  %28 = icmp ne %struct.pr_ops* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %19
  %30 = load %struct.pr_ops*, %struct.pr_ops** %6, align 8
  %31 = getelementptr inbounds %struct.pr_ops, %struct.pr_ops* %30, i32 0, i32 0
  %32 = load i32 (%struct.block_device.0*, i32)*, i32 (%struct.block_device.0*, i32)** %31, align 8
  %33 = icmp ne i32 (%struct.block_device.0*, i32)* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.pr_ops*, %struct.pr_ops** %6, align 8
  %36 = getelementptr inbounds %struct.pr_ops, %struct.pr_ops* %35, i32 0, i32 0
  %37 = load i32 (%struct.block_device.0*, i32)*, i32 (%struct.block_device.0*, i32)** %36, align 8
  %38 = load %struct.block_device*, %struct.block_device** %3, align 8
  %39 = bitcast %struct.block_device* %38 to %struct.block_device.0*
  %40 = load i32, i32* %4, align 4
  %41 = call i32 %37(%struct.block_device.0* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  br label %45

42:                                               ; preds = %29, %19
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %34
  br label %46

46:                                               ; preds = %45, %18
  %47 = load %struct.mapped_device*, %struct.mapped_device** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @dm_unprepare_ioctl(%struct.mapped_device* %47, i32 %48)
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @dm_prepare_ioctl(%struct.mapped_device*, i32*, %struct.block_device**) #1

declare dso_local i32 @dm_unprepare_ioctl(%struct.mapped_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
