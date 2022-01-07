; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_macio_asic.c_macio_enable_devres.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_macio_asic.c_macio_enable_devres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macio_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.macio_devres = type { i32 }

@maciom_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @macio_enable_devres(%struct.macio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.macio_dev*, align 8
  %4 = alloca %struct.macio_devres*, align 8
  store %struct.macio_dev* %0, %struct.macio_dev** %3, align 8
  %5 = load %struct.macio_dev*, %struct.macio_dev** %3, align 8
  %6 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* @maciom_release, align 4
  %9 = call %struct.macio_devres* @devres_find(i32* %7, i32 %8, i32* null, i32* null)
  store %struct.macio_devres* %9, %struct.macio_devres** %4, align 8
  %10 = load %struct.macio_devres*, %struct.macio_devres** %4, align 8
  %11 = icmp ne %struct.macio_devres* %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @maciom_release, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.macio_devres* @devres_alloc(i32 %13, i32 4, i32 %14)
  store %struct.macio_devres* %15, %struct.macio_devres** %4, align 8
  %16 = load %struct.macio_devres*, %struct.macio_devres** %4, align 8
  %17 = icmp ne %struct.macio_devres* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %30

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.macio_dev*, %struct.macio_dev** %3, align 8
  %24 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.macio_devres*, %struct.macio_devres** %4, align 8
  %27 = call i32* @devres_get(i32* %25, %struct.macio_devres* %26, i32* null, i32* null)
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %22, %18
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.macio_devres* @devres_find(i32*, i32, i32*, i32*) #1

declare dso_local %struct.macio_devres* @devres_alloc(i32, i32, i32) #1

declare dso_local i32* @devres_get(i32*, %struct.macio_devres*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
