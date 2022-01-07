; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma_configfs.c_make_cma_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma_configfs.c_make_cma_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma_dev_group = type { %struct.cma_dev_port_group*, i32 }
%struct.cma_dev_port_group = type { i32, i32, %struct.cma_dev_group* }
%struct.cma_device = type { i32 }
%struct.ib_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@cma_port_group_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cma_dev_group*, %struct.cma_device*)* @make_cma_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_cma_ports(%struct.cma_dev_group* %0, %struct.cma_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cma_dev_group*, align 8
  %5 = alloca %struct.cma_device*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cma_dev_port_group*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [10 x i8], align 1
  store %struct.cma_dev_group* %0, %struct.cma_dev_group** %4, align 8
  store %struct.cma_device* %1, %struct.cma_device** %5, align 8
  %12 = load %struct.cma_device*, %struct.cma_device** %5, align 8
  %13 = call %struct.ib_device* @cma_get_ib_dev(%struct.cma_device* %12)
  store %struct.ib_device* %13, %struct.ib_device** %6, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %15 = icmp ne %struct.ib_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %82

19:                                               ; preds = %2
  %20 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %21 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.cma_dev_port_group* @kcalloc(i32 %23, i32 16, i32 %24)
  store %struct.cma_dev_port_group* %25, %struct.cma_dev_port_group** %9, align 8
  %26 = load %struct.cma_dev_port_group*, %struct.cma_dev_port_group** %9, align 8
  %27 = icmp ne %struct.cma_dev_port_group* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %10, align 4
  br label %76

31:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %69, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %72

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = add i32 %37, 1
  %39 = load %struct.cma_dev_port_group*, %struct.cma_dev_port_group** %9, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.cma_dev_port_group, %struct.cma_dev_port_group* %39, i64 %41
  %43 = getelementptr inbounds %struct.cma_dev_port_group, %struct.cma_dev_port_group* %42, i32 0, i32 0
  store i32 %38, i32* %43, align 8
  %44 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, 1
  %47 = call i32 @snprintf(i8* %44, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.cma_dev_group*, %struct.cma_dev_group** %4, align 8
  %49 = load %struct.cma_dev_port_group*, %struct.cma_dev_port_group** %9, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.cma_dev_port_group, %struct.cma_dev_port_group* %49, i64 %51
  %53 = getelementptr inbounds %struct.cma_dev_port_group, %struct.cma_dev_port_group* %52, i32 0, i32 2
  store %struct.cma_dev_group* %48, %struct.cma_dev_group** %53, align 8
  %54 = load %struct.cma_dev_port_group*, %struct.cma_dev_port_group** %9, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.cma_dev_port_group, %struct.cma_dev_port_group* %54, i64 %56
  %58 = getelementptr inbounds %struct.cma_dev_port_group, %struct.cma_dev_port_group* %57, i32 0, i32 1
  %59 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %60 = call i32 @config_group_init_type_name(i32* %58, i8* %59, i32* @cma_port_group_type)
  %61 = load %struct.cma_dev_port_group*, %struct.cma_dev_port_group** %9, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.cma_dev_port_group, %struct.cma_dev_port_group* %61, i64 %63
  %65 = getelementptr inbounds %struct.cma_dev_port_group, %struct.cma_dev_port_group* %64, i32 0, i32 1
  %66 = load %struct.cma_dev_group*, %struct.cma_dev_group** %4, align 8
  %67 = getelementptr inbounds %struct.cma_dev_group, %struct.cma_dev_group* %66, i32 0, i32 1
  %68 = call i32 @configfs_add_default_group(i32* %65, i32* %67)
  br label %69

69:                                               ; preds = %36
  %70 = load i32, i32* %7, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %32

72:                                               ; preds = %32
  %73 = load %struct.cma_dev_port_group*, %struct.cma_dev_port_group** %9, align 8
  %74 = load %struct.cma_dev_group*, %struct.cma_dev_group** %4, align 8
  %75 = getelementptr inbounds %struct.cma_dev_group, %struct.cma_dev_group* %74, i32 0, i32 0
  store %struct.cma_dev_port_group* %73, %struct.cma_dev_port_group** %75, align 8
  store i32 0, i32* %3, align 4
  br label %82

76:                                               ; preds = %28
  %77 = load %struct.cma_dev_port_group*, %struct.cma_dev_port_group** %9, align 8
  %78 = call i32 @kfree(%struct.cma_dev_port_group* %77)
  %79 = load %struct.cma_dev_group*, %struct.cma_dev_group** %4, align 8
  %80 = getelementptr inbounds %struct.cma_dev_group, %struct.cma_dev_group* %79, i32 0, i32 0
  store %struct.cma_dev_port_group* null, %struct.cma_dev_port_group** %80, align 8
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %76, %72, %16
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.ib_device* @cma_get_ib_dev(%struct.cma_device*) #1

declare dso_local %struct.cma_dev_port_group* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @config_group_init_type_name(i32*, i8*, i32*) #1

declare dso_local i32 @configfs_add_default_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.cma_dev_port_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
