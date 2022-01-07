; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_register_md_cluster_operations.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_register_md_cluster_operations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_cluster_operations = type { i32 }
%struct.module = type { i32 }

@pers_lock = common dso_local global i32 0, align 4
@md_cluster_ops = common dso_local global %struct.md_cluster_operations* null, align 8
@EALREADY = common dso_local global i32 0, align 4
@md_cluster_mod = common dso_local global %struct.module* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_md_cluster_operations(%struct.md_cluster_operations* %0, %struct.module* %1) #0 {
  %3 = alloca %struct.md_cluster_operations*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca i32, align 4
  store %struct.md_cluster_operations* %0, %struct.md_cluster_operations** %3, align 8
  store %struct.module* %1, %struct.module** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 @spin_lock(i32* @pers_lock)
  %7 = load %struct.md_cluster_operations*, %struct.md_cluster_operations** @md_cluster_ops, align 8
  %8 = icmp ne %struct.md_cluster_operations* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EALREADY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %5, align 4
  br label %15

12:                                               ; preds = %2
  %13 = load %struct.md_cluster_operations*, %struct.md_cluster_operations** %3, align 8
  store %struct.md_cluster_operations* %13, %struct.md_cluster_operations** @md_cluster_ops, align 8
  %14 = load %struct.module*, %struct.module** %4, align 8
  store %struct.module* %14, %struct.module** @md_cluster_mod, align 8
  br label %15

15:                                               ; preds = %12, %9
  %16 = call i32 @spin_unlock(i32* @pers_lock)
  %17 = load i32, i32* %5, align 4
  ret i32 %17
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
