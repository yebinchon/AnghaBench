; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-mux.c_i2c_mux_del_adapters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-mux.c_i2c_mux_del_adapters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_mux_core = type { i32, %struct.TYPE_6__*, %struct.i2c_adapter** }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_adapter = type { %struct.TYPE_5__, %struct.i2c_mux_priv* }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_mux_priv = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"channel-%u\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"mux_device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2c_mux_del_adapters(%struct.i2c_mux_core* %0) #0 {
  %2 = alloca %struct.i2c_mux_core*, align 8
  %3 = alloca [20 x i8], align 16
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_mux_priv*, align 8
  %6 = alloca %struct.device_node*, align 8
  store %struct.i2c_mux_core* %0, %struct.i2c_mux_core** %2, align 8
  br label %7

7:                                                ; preds = %12, %1
  %8 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %2, align 8
  %9 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %60

12:                                               ; preds = %7
  %13 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %2, align 8
  %14 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %13, i32 0, i32 2
  %15 = load %struct.i2c_adapter**, %struct.i2c_adapter*** %14, align 8
  %16 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %2, align 8
  %17 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.i2c_adapter*, %struct.i2c_adapter** %15, i64 %20
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %21, align 8
  store %struct.i2c_adapter* %22, %struct.i2c_adapter** %4, align 8
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %23, i32 0, i32 1
  %25 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %24, align 8
  store %struct.i2c_mux_priv* %25, %struct.i2c_mux_priv** %5, align 8
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.device_node*, %struct.device_node** %28, align 8
  store %struct.device_node* %29, %struct.device_node** %6, align 8
  %30 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %2, align 8
  %31 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %30, i32 0, i32 2
  %32 = load %struct.i2c_adapter**, %struct.i2c_adapter*** %31, align 8
  %33 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %2, align 8
  %34 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.i2c_adapter*, %struct.i2c_adapter** %32, i64 %36
  store %struct.i2c_adapter* null, %struct.i2c_adapter** %37, align 8
  %38 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %39 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %5, align 8
  %40 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @snprintf(i8* %38, i32 20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %2, align 8
  %44 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %48 = call i32 @sysfs_remove_link(i32* %46, i8* %47)
  %49 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %5, align 8
  %50 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = call i32 @sysfs_remove_link(i32* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %55 = call i32 @i2c_del_adapter(%struct.i2c_adapter* %54)
  %56 = load %struct.device_node*, %struct.device_node** %6, align 8
  %57 = call i32 @of_node_put(%struct.device_node* %56)
  %58 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %5, align 8
  %59 = call i32 @kfree(%struct.i2c_mux_priv* %58)
  br label %7

60:                                               ; preds = %7
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @i2c_del_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @kfree(%struct.i2c_mux_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
