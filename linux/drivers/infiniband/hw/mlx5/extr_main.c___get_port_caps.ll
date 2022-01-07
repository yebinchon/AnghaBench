; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c___get_port_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c___get_port_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ib_device_attr = type { i32, i32 }
%struct.ib_port_attr = type { i32, i32 }
%struct.ib_udata = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"query_device failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"query_port %d failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"port %d: pkey_table_len %d, gid_table_len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, i32)* @__get_port_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_port_caps(%struct.mlx5_ib_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device_attr*, align 8
  %6 = alloca %struct.ib_port_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_udata, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.ib_device_attr* null, %struct.ib_device_attr** %5, align 8
  store %struct.ib_port_attr* null, %struct.ib_port_attr** %6, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = bitcast %struct.ib_udata* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ib_port_attr* @kzalloc(i32 8, i32 %12)
  store %struct.ib_port_attr* %13, %struct.ib_port_attr** %6, align 8
  %14 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %15 = icmp ne %struct.ib_port_attr* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %85

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.ib_port_attr* @kmalloc(i32 8, i32 %18)
  %20 = bitcast %struct.ib_port_attr* %19 to %struct.ib_device_attr*
  store %struct.ib_device_attr* %20, %struct.ib_device_attr** %5, align 8
  %21 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %22 = icmp ne %struct.ib_device_attr* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %85

24:                                               ; preds = %17
  %25 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %25, i32 0, i32 1
  %27 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %28 = bitcast %struct.ib_device_attr* %27 to %struct.ib_port_attr*
  %29 = call i32 @mlx5_ib_query_device(i32* %26, %struct.ib_port_attr* %28, %struct.ib_udata* %8)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_warn(%struct.mlx5_ib_dev* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %85

36:                                               ; preds = %24
  %37 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %41 = call i32 @mlx5_ib_query_port(i32* %38, i32 %39, %struct.ib_port_attr* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_warn(%struct.mlx5_ib_dev* %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  br label %85

49:                                               ; preds = %36
  %50 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %51 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %54 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 %52, i32* %62, align 4
  %63 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %64 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %67 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %65, i32* %75, align 4
  %76 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %79 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %82 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %76, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %49, %44, %32, %23, %16
  %86 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %87 = call i32 @kfree(%struct.ib_port_attr* %86)
  %88 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %89 = bitcast %struct.ib_device_attr* %88 to %struct.ib_port_attr*
  %90 = call i32 @kfree(%struct.ib_port_attr* %89)
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ib_port_attr* @kzalloc(i32, i32) #2

declare dso_local %struct.ib_port_attr* @kmalloc(i32, i32) #2

declare dso_local i32 @mlx5_ib_query_device(i32*, %struct.ib_port_attr*, %struct.ib_udata*) #2

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32, ...) #2

declare dso_local i32 @mlx5_ib_query_port(i32*, i32, %struct.ib_port_attr*) #2

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i32, i32, i32) #2

declare dso_local i32 @kfree(%struct.ib_port_attr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
