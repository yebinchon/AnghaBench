; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_setup_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_setup_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.mddev*, i32)* }
%struct.mddev = type { i32 }

@md_cluster_ops = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"md-cluster\00", align 1
@pers_lock = common dso_local global i32 0, align 4
@md_cluster_mod = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"can't find md-cluster module or get it's reference.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md_setup_cluster(%struct.mddev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @md_cluster_ops, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = call i32 @request_module(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %2
  %11 = call i32 @spin_lock(i32* @pers_lock)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @md_cluster_ops, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* @md_cluster_mod, align 4
  %16 = call i32 @try_module_get(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14, %10
  %19 = call i32 @pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @spin_unlock(i32* @pers_lock)
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %31

23:                                               ; preds = %14
  %24 = call i32 @spin_unlock(i32* @pers_lock)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @md_cluster_ops, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %26, align 8
  %28 = load %struct.mddev*, %struct.mddev** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 %27(%struct.mddev* %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %23, %18
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @request_module(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
