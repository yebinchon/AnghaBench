; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_pr_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_pr_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.mapped_device* }
%struct.TYPE_3__ = type { %struct.pr_ops* }
%struct.pr_ops = type { i32 (%struct.block_device.0*, i32, i32, i32)* }
%struct.block_device.0 = type opaque
%struct.mapped_device = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32, i32, i32)* @dm_pr_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_pr_reserve(%struct.block_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mapped_device*, align 8
  %10 = alloca %struct.pr_ops*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.block_device*, %struct.block_device** %5, align 8
  %14 = getelementptr inbounds %struct.block_device, %struct.block_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.mapped_device*, %struct.mapped_device** %16, align 8
  store %struct.mapped_device* %17, %struct.mapped_device** %9, align 8
  %18 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %19 = call i32 @dm_prepare_ioctl(%struct.mapped_device* %18, i32* %12, %struct.block_device** %5)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %52

23:                                               ; preds = %4
  %24 = load %struct.block_device*, %struct.block_device** %5, align 8
  %25 = getelementptr inbounds %struct.block_device, %struct.block_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.pr_ops*, %struct.pr_ops** %29, align 8
  store %struct.pr_ops* %30, %struct.pr_ops** %10, align 8
  %31 = load %struct.pr_ops*, %struct.pr_ops** %10, align 8
  %32 = icmp ne %struct.pr_ops* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %23
  %34 = load %struct.pr_ops*, %struct.pr_ops** %10, align 8
  %35 = getelementptr inbounds %struct.pr_ops, %struct.pr_ops* %34, i32 0, i32 0
  %36 = load i32 (%struct.block_device.0*, i32, i32, i32)*, i32 (%struct.block_device.0*, i32, i32, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.block_device.0*, i32, i32, i32)* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.pr_ops*, %struct.pr_ops** %10, align 8
  %40 = getelementptr inbounds %struct.pr_ops, %struct.pr_ops* %39, i32 0, i32 0
  %41 = load i32 (%struct.block_device.0*, i32, i32, i32)*, i32 (%struct.block_device.0*, i32, i32, i32)** %40, align 8
  %42 = load %struct.block_device*, %struct.block_device** %5, align 8
  %43 = bitcast %struct.block_device* %42 to %struct.block_device.0*
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 %41(%struct.block_device.0* %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  br label %51

48:                                               ; preds = %33, %23
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %48, %38
  br label %52

52:                                               ; preds = %51, %22
  %53 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @dm_unprepare_ioctl(%struct.mapped_device* %53, i32 %54)
  %56 = load i32, i32* %11, align 4
  ret i32 %56
}

declare dso_local i32 @dm_prepare_ioctl(%struct.mapped_device*, i32*, %struct.block_device**) #1

declare dso_local i32 @dm_unprepare_ioctl(%struct.mapped_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
