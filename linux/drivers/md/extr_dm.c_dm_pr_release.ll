; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_pr_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_pr_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, %struct.mapped_device* }
%struct.TYPE_4__ = type { %struct.pr_ops* }
%struct.pr_ops = type { i32 (%struct.block_device.0*, i32, i32)* }
%struct.block_device.0 = type opaque
%struct.mapped_device = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32, i32)* @dm_pr_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_pr_release(%struct.block_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mapped_device*, align 8
  %8 = alloca %struct.pr_ops*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.block_device*, %struct.block_device** %4, align 8
  %12 = getelementptr inbounds %struct.block_device, %struct.block_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.mapped_device*, %struct.mapped_device** %14, align 8
  store %struct.mapped_device* %15, %struct.mapped_device** %7, align 8
  %16 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %17 = call i32 @dm_prepare_ioctl(%struct.mapped_device* %16, i32* %10, %struct.block_device** %4)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %49

21:                                               ; preds = %3
  %22 = load %struct.block_device*, %struct.block_device** %4, align 8
  %23 = getelementptr inbounds %struct.block_device, %struct.block_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.pr_ops*, %struct.pr_ops** %27, align 8
  store %struct.pr_ops* %28, %struct.pr_ops** %8, align 8
  %29 = load %struct.pr_ops*, %struct.pr_ops** %8, align 8
  %30 = icmp ne %struct.pr_ops* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %21
  %32 = load %struct.pr_ops*, %struct.pr_ops** %8, align 8
  %33 = getelementptr inbounds %struct.pr_ops, %struct.pr_ops* %32, i32 0, i32 0
  %34 = load i32 (%struct.block_device.0*, i32, i32)*, i32 (%struct.block_device.0*, i32, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.block_device.0*, i32, i32)* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.pr_ops*, %struct.pr_ops** %8, align 8
  %38 = getelementptr inbounds %struct.pr_ops, %struct.pr_ops* %37, i32 0, i32 0
  %39 = load i32 (%struct.block_device.0*, i32, i32)*, i32 (%struct.block_device.0*, i32, i32)** %38, align 8
  %40 = load %struct.block_device*, %struct.block_device** %4, align 8
  %41 = bitcast %struct.block_device* %40 to %struct.block_device.0*
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 %39(%struct.block_device.0* %41, i32 %42, i32 %43)
  store i32 %44, i32* %9, align 4
  br label %48

45:                                               ; preds = %31, %21
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %45, %36
  br label %49

49:                                               ; preds = %48, %20
  %50 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @dm_unprepare_ioctl(%struct.mapped_device* %50, i32 %51)
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

declare dso_local i32 @dm_prepare_ioctl(%struct.mapped_device*, i32*, %struct.block_device**) #1

declare dso_local i32 @dm_unprepare_ioctl(%struct.mapped_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
