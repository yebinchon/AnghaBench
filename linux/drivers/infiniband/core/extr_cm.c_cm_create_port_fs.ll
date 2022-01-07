; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_create_port_fs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_create_port_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_port = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@CM_COUNTER_GROUPS = common dso_local global i32 0, align 4
@cm_counter_obj_type = common dso_local global i32 0, align 4
@counter_group_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_port*)* @cm_create_port_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_create_port_fs(%struct.cm_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cm_port* %0, %struct.cm_port** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %36, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @CM_COUNTER_GROUPS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %39

10:                                               ; preds = %6
  %11 = load %struct.cm_port*, %struct.cm_port** %3, align 8
  %12 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.cm_port*, %struct.cm_port** %3, align 8
  %17 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.cm_port*, %struct.cm_port** %3, align 8
  %20 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** @counter_group_names, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ib_port_register_module_stat(i32 %15, i32 %18, i32* %25, i32* @cm_counter_obj_type, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %10
  br label %40

35:                                               ; preds = %10
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %6

39:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %56

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %45, %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %4, align 4
  %44 = icmp ne i32 %42, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load %struct.cm_port*, %struct.cm_port** %3, align 8
  %47 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @ib_port_unregister_module_stat(i32* %52)
  br label %41

54:                                               ; preds = %41
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %39
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @ib_port_register_module_stat(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @ib_port_unregister_module_stat(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
