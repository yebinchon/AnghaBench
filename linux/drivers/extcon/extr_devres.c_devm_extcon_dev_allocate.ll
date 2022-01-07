; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_devres.c_devm_extcon_dev_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_devres.c_devm_extcon_dev_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extcon_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@devm_extcon_dev_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.extcon_dev* @devm_extcon_dev_allocate(%struct.device* %0, i32* %1) #0 {
  %3 = alloca %struct.extcon_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.extcon_dev**, align 8
  %7 = alloca %struct.extcon_dev*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @devm_extcon_dev_release, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.extcon_dev** @devres_alloc(i32 %8, i32 8, i32 %9)
  store %struct.extcon_dev** %10, %struct.extcon_dev*** %6, align 8
  %11 = load %struct.extcon_dev**, %struct.extcon_dev*** %6, align 8
  %12 = icmp ne %struct.extcon_dev** %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.extcon_dev* @ERR_PTR(i32 %15)
  store %struct.extcon_dev* %16, %struct.extcon_dev** %3, align 8
  br label %38

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = call %struct.extcon_dev* @extcon_dev_allocate(i32* %18)
  store %struct.extcon_dev* %19, %struct.extcon_dev** %7, align 8
  %20 = load %struct.extcon_dev*, %struct.extcon_dev** %7, align 8
  %21 = call i64 @IS_ERR(%struct.extcon_dev* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.extcon_dev**, %struct.extcon_dev*** %6, align 8
  %25 = call i32 @devres_free(%struct.extcon_dev** %24)
  %26 = load %struct.extcon_dev*, %struct.extcon_dev** %7, align 8
  store %struct.extcon_dev* %26, %struct.extcon_dev** %3, align 8
  br label %38

27:                                               ; preds = %17
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.extcon_dev*, %struct.extcon_dev** %7, align 8
  %30 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.device* %28, %struct.device** %31, align 8
  %32 = load %struct.extcon_dev*, %struct.extcon_dev** %7, align 8
  %33 = load %struct.extcon_dev**, %struct.extcon_dev*** %6, align 8
  store %struct.extcon_dev* %32, %struct.extcon_dev** %33, align 8
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.extcon_dev**, %struct.extcon_dev*** %6, align 8
  %36 = call i32 @devres_add(%struct.device* %34, %struct.extcon_dev** %35)
  %37 = load %struct.extcon_dev*, %struct.extcon_dev** %7, align 8
  store %struct.extcon_dev* %37, %struct.extcon_dev** %3, align 8
  br label %38

38:                                               ; preds = %27, %23, %13
  %39 = load %struct.extcon_dev*, %struct.extcon_dev** %3, align 8
  ret %struct.extcon_dev* %39
}

declare dso_local %struct.extcon_dev** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.extcon_dev* @ERR_PTR(i32) #1

declare dso_local %struct.extcon_dev* @extcon_dev_allocate(i32*) #1

declare dso_local i64 @IS_ERR(%struct.extcon_dev*) #1

declare dso_local i32 @devres_free(%struct.extcon_dev**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.extcon_dev**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
