; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_cleanup_multiport_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_cleanup_multiport_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@IB_LINK_LAYER_ETHERNET = common dso_local global i32 0, align 4
@mlx5_ib_multiport_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unbinding port_num: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"removing from devlist\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*)* @mlx5_ib_cleanup_multiport_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_ib_cleanup_multiport_master(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca %struct.mlx5_ib_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %2, align 8
  %6 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @mlx5_core_native_port_num(i32 %8)
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %3, align 4
  %11 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %12 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %11, i32 0, i32 4
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  %15 = call i32 @mlx5_ib_port_link_layer(i32* %12, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mlx5_core_is_mp_master(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @IB_LINK_LAYER_ETHERNET, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %1
  br label %100

26:                                               ; preds = %21
  %27 = call i32 @mutex_lock(i32* @mlx5_ib_multiport_mutex)
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %86, %26
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %31 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %89

34:                                               ; preds = %28
  %35 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %85

45:                                               ; preds = %34
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %51 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %50, i32 0, i32 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @kfree(i32* %58)
  %60 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %61 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  br label %84

68:                                               ; preds = %45
  %69 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  %72 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %74 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %75 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %74, i32 0, i32 3
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @mlx5_ib_unbind_slave_port(%struct.mlx5_ib_dev* %73, i32* %82)
  br label %84

84:                                               ; preds = %68, %49
  br label %85

85:                                               ; preds = %84, %34
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %28

89:                                               ; preds = %28
  %90 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %91 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %93 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %92, i32 0, i32 2
  %94 = call i32 @list_del(i32* %93)
  %95 = call i32 @mutex_unlock(i32* @mlx5_ib_multiport_mutex)
  %96 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %97 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @mlx5_nic_vport_disable_roce(i32 %98)
  br label %100

100:                                              ; preds = %89, %25
  ret void
}

declare dso_local i32 @mlx5_core_native_port_num(i32) #1

declare dso_local i32 @mlx5_ib_port_link_layer(i32*, i32) #1

declare dso_local i32 @mlx5_core_is_mp_master(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, ...) #1

declare dso_local i32 @mlx5_ib_unbind_slave_port(%struct.mlx5_ib_dev*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx5_nic_vport_disable_roce(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
