; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___dm_pr_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___dm_pr_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32 }
%struct.dm_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pr_ops* }
%struct.pr_ops = type { i32 (%struct.TYPE_6__*, i32, i32, i32)* }
%struct.dm_pr = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.dm_dev*, i32, i32, i8*)* @__dm_pr_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dm_pr_register(%struct.dm_target* %0, %struct.dm_dev* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_target*, align 8
  %8 = alloca %struct.dm_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.dm_pr*, align 8
  %13 = alloca %struct.pr_ops*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %7, align 8
  store %struct.dm_dev* %1, %struct.dm_dev** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = bitcast i8* %14 to %struct.dm_pr*
  store %struct.dm_pr* %15, %struct.dm_pr** %12, align 8
  %16 = load %struct.dm_dev*, %struct.dm_dev** %8, align 8
  %17 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.pr_ops*, %struct.pr_ops** %23, align 8
  store %struct.pr_ops* %24, %struct.pr_ops** %13, align 8
  %25 = load %struct.pr_ops*, %struct.pr_ops** %13, align 8
  %26 = icmp ne %struct.pr_ops* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %5
  %28 = load %struct.pr_ops*, %struct.pr_ops** %13, align 8
  %29 = getelementptr inbounds %struct.pr_ops, %struct.pr_ops* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_6__*, i32, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.TYPE_6__*, i32, i32, i32)* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27, %5
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %52

35:                                               ; preds = %27
  %36 = load %struct.pr_ops*, %struct.pr_ops** %13, align 8
  %37 = getelementptr inbounds %struct.pr_ops, %struct.pr_ops* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_6__*, i32, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32)** %37, align 8
  %39 = load %struct.dm_dev*, %struct.dm_dev** %8, align 8
  %40 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load %struct.dm_pr*, %struct.dm_pr** %12, align 8
  %43 = getelementptr inbounds %struct.dm_pr, %struct.dm_pr* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dm_pr*, %struct.dm_pr** %12, align 8
  %46 = getelementptr inbounds %struct.dm_pr, %struct.dm_pr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dm_pr*, %struct.dm_pr** %12, align 8
  %49 = getelementptr inbounds %struct.dm_pr, %struct.dm_pr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 %38(%struct.TYPE_6__* %41, i32 %44, i32 %47, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %35, %32
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
