; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_subscribe_event_xa_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_subscribe_event_xa_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_devx_event_table = type { i32 }
%struct.devx_obj_event = type { i32, i32, i32 }
%struct.devx_event = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_devx_event_table*, i32, i32, i32)* @subscribe_event_xa_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subscribe_event_xa_alloc(%struct.mlx5_devx_event_table* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_devx_event_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.devx_obj_event*, align 8
  %11 = alloca %struct.devx_event*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5_devx_event_table* %0, %struct.mlx5_devx_event_table** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mlx5_devx_event_table*, %struct.mlx5_devx_event_table** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5_devx_event_table, %struct.mlx5_devx_event_table* %13, i32 0, i32 0
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.devx_obj_event* @xa_load(i32* %14, i32 %15)
  %17 = bitcast %struct.devx_obj_event* %16 to %struct.devx_event*
  store %struct.devx_event* %17, %struct.devx_event** %11, align 8
  %18 = load %struct.devx_event*, %struct.devx_event** %11, align 8
  %19 = icmp ne %struct.devx_event* %18, null
  br i1 %19, label %51, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.devx_obj_event* @kzalloc(i32 12, i32 %21)
  %23 = bitcast %struct.devx_obj_event* %22 to %struct.devx_event*
  store %struct.devx_event* %23, %struct.devx_event** %11, align 8
  %24 = load %struct.devx_event*, %struct.devx_event** %11, align 8
  %25 = icmp ne %struct.devx_event* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %86

29:                                               ; preds = %20
  %30 = load %struct.devx_event*, %struct.devx_event** %11, align 8
  %31 = getelementptr inbounds %struct.devx_event, %struct.devx_event* %30, i32 0, i32 2
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.devx_event*, %struct.devx_event** %11, align 8
  %34 = getelementptr inbounds %struct.devx_event, %struct.devx_event* %33, i32 0, i32 1
  %35 = call i32 @xa_init(i32* %34)
  %36 = load %struct.mlx5_devx_event_table*, %struct.mlx5_devx_event_table** %6, align 8
  %37 = getelementptr inbounds %struct.mlx5_devx_event_table, %struct.mlx5_devx_event_table* %36, i32 0, i32 0
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.devx_event*, %struct.devx_event** %11, align 8
  %40 = bitcast %struct.devx_event* %39 to %struct.devx_obj_event*
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32 @xa_insert(i32* %37, i32 %38, %struct.devx_obj_event* %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %29
  %46 = load %struct.devx_event*, %struct.devx_event** %11, align 8
  %47 = bitcast %struct.devx_event* %46 to %struct.devx_obj_event*
  %48 = call i32 @kfree(%struct.devx_obj_event* %47)
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  br label %86

50:                                               ; preds = %29
  br label %51

51:                                               ; preds = %50, %4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %86

55:                                               ; preds = %51
  %56 = load %struct.devx_event*, %struct.devx_event** %11, align 8
  %57 = getelementptr inbounds %struct.devx_event, %struct.devx_event* %56, i32 0, i32 1
  %58 = load i32, i32* %9, align 4
  %59 = call %struct.devx_obj_event* @xa_load(i32* %57, i32 %58)
  store %struct.devx_obj_event* %59, %struct.devx_obj_event** %10, align 8
  %60 = load %struct.devx_obj_event*, %struct.devx_obj_event** %10, align 8
  %61 = icmp ne %struct.devx_obj_event* %60, null
  br i1 %61, label %85, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.devx_obj_event* @kzalloc(i32 12, i32 %63)
  store %struct.devx_obj_event* %64, %struct.devx_obj_event** %10, align 8
  %65 = load %struct.devx_obj_event*, %struct.devx_obj_event** %10, align 8
  %66 = icmp ne %struct.devx_obj_event* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %86

70:                                               ; preds = %62
  %71 = load %struct.devx_event*, %struct.devx_event** %11, align 8
  %72 = getelementptr inbounds %struct.devx_event, %struct.devx_event* %71, i32 0, i32 1
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.devx_obj_event*, %struct.devx_obj_event** %10, align 8
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i32 @xa_insert(i32* %72, i32 %73, %struct.devx_obj_event* %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %5, align 4
  br label %86

81:                                               ; preds = %70
  %82 = load %struct.devx_obj_event*, %struct.devx_obj_event** %10, align 8
  %83 = getelementptr inbounds %struct.devx_obj_event, %struct.devx_obj_event* %82, i32 0, i32 0
  %84 = call i32 @INIT_LIST_HEAD(i32* %83)
  br label %85

85:                                               ; preds = %81, %55
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %79, %67, %54, %45, %26
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.devx_obj_event* @xa_load(i32*, i32) #1

declare dso_local %struct.devx_obj_event* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @xa_init(i32*) #1

declare dso_local i32 @xa_insert(i32*, i32, %struct.devx_obj_event*, i32) #1

declare dso_local i32 @kfree(%struct.devx_obj_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
