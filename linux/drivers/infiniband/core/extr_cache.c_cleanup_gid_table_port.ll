; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_cleanup_gid_table_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_cleanup_gid_table_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_gid_table = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, i32, %struct.ib_gid_table*)* @cleanup_gid_table_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_gid_table_port(%struct.ib_device* %0, i32 %1, %struct.ib_gid_table* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_gid_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_gid_table* %2, %struct.ib_gid_table** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ib_gid_table*, %struct.ib_gid_table** %6, align 8
  %10 = icmp ne %struct.ib_gid_table* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %52

12:                                               ; preds = %3
  %13 = load %struct.ib_gid_table*, %struct.ib_gid_table** %6, align 8
  %14 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %39, %12
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.ib_gid_table*, %struct.ib_gid_table** %6, align 8
  %19 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %16
  %23 = load %struct.ib_gid_table*, %struct.ib_gid_table** %6, align 8
  %24 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @is_gid_entry_valid(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.ib_gid_table*, %struct.ib_gid_table** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @del_gid(%struct.ib_device* %33, i32 %34, %struct.ib_gid_table* %35, i32 %36)
  store i32 1, i32* %8, align 4
  br label %38

38:                                               ; preds = %32, %22
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %16

42:                                               ; preds = %16
  %43 = load %struct.ib_gid_table*, %struct.ib_gid_table** %6, align 8
  %44 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @dispatch_gid_change_event(%struct.ib_device* %49, i32 %50)
  br label %52

52:                                               ; preds = %11, %48, %42
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @is_gid_entry_valid(i32) #1

declare dso_local i32 @del_gid(%struct.ib_device*, i32, %struct.ib_gid_table*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dispatch_gid_change_event(%struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
