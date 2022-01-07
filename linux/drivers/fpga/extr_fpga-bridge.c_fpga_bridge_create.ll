; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-bridge.c_fpga_bridge_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-bridge.c_fpga_bridge_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_bridge = type { i8*, %struct.TYPE_3__, i8*, %struct.fpga_bridge_ops*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.device*, i32, i32 }
%struct.device = type { i32 }
%struct.fpga_bridge_ops = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Attempt to register with no name!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@fpga_bridge_ida = common dso_local global i32 0, align 4
@fpga_bridge_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"br%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fpga_bridge* @fpga_bridge_create(%struct.device* %0, i8* %1, %struct.fpga_bridge_ops* %2, i8* %3) #0 {
  %5 = alloca %struct.fpga_bridge*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fpga_bridge_ops*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fpga_bridge*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.fpga_bridge_ops* %2, %struct.fpga_bridge_ops** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15, %4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store %struct.fpga_bridge* null, %struct.fpga_bridge** %5, align 8
  br label %93

22:                                               ; preds = %15
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.fpga_bridge* @kzalloc(i32 56, i32 %23)
  store %struct.fpga_bridge* %24, %struct.fpga_bridge** %10, align 8
  %25 = load %struct.fpga_bridge*, %struct.fpga_bridge** %10, align 8
  %26 = icmp ne %struct.fpga_bridge* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store %struct.fpga_bridge* null, %struct.fpga_bridge** %5, align 8
  br label %93

28:                                               ; preds = %22
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @ida_simple_get(i32* @fpga_bridge_ida, i32 0, i32 0, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %12, align 4
  br label %90

35:                                               ; preds = %28
  %36 = load %struct.fpga_bridge*, %struct.fpga_bridge** %10, align 8
  %37 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %36, i32 0, i32 5
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.fpga_bridge*, %struct.fpga_bridge** %10, align 8
  %40 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %39, i32 0, i32 4
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.fpga_bridge*, %struct.fpga_bridge** %10, align 8
  %44 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.fpga_bridge_ops*, %struct.fpga_bridge_ops** %8, align 8
  %46 = load %struct.fpga_bridge*, %struct.fpga_bridge** %10, align 8
  %47 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %46, i32 0, i32 3
  store %struct.fpga_bridge_ops* %45, %struct.fpga_bridge_ops** %47, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.fpga_bridge*, %struct.fpga_bridge** %10, align 8
  %50 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.fpga_bridge*, %struct.fpga_bridge** %10, align 8
  %52 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %51, i32 0, i32 1
  %53 = call i32 @device_initialize(%struct.TYPE_3__* %52)
  %54 = load %struct.fpga_bridge_ops*, %struct.fpga_bridge_ops** %8, align 8
  %55 = getelementptr inbounds %struct.fpga_bridge_ops, %struct.fpga_bridge_ops* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fpga_bridge*, %struct.fpga_bridge** %10, align 8
  %58 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @fpga_bridge_class, align 4
  %61 = load %struct.fpga_bridge*, %struct.fpga_bridge** %10, align 8
  %62 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  store i32 %60, i32* %63, align 8
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = load %struct.fpga_bridge*, %struct.fpga_bridge** %10, align 8
  %66 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  store %struct.device* %64, %struct.device** %67, align 8
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = getelementptr inbounds %struct.device, %struct.device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.fpga_bridge*, %struct.fpga_bridge** %10, align 8
  %72 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.fpga_bridge*, %struct.fpga_bridge** %10, align 8
  %76 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load %struct.fpga_bridge*, %struct.fpga_bridge** %10, align 8
  %79 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %78, i32 0, i32 1
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @dev_set_name(%struct.TYPE_3__* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %35
  br label %87

85:                                               ; preds = %35
  %86 = load %struct.fpga_bridge*, %struct.fpga_bridge** %10, align 8
  store %struct.fpga_bridge* %86, %struct.fpga_bridge** %5, align 8
  br label %93

87:                                               ; preds = %84
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @ida_simple_remove(i32* @fpga_bridge_ida, i32 %88)
  br label %90

90:                                               ; preds = %87, %33
  %91 = load %struct.fpga_bridge*, %struct.fpga_bridge** %10, align 8
  %92 = call i32 @kfree(%struct.fpga_bridge* %91)
  store %struct.fpga_bridge* null, %struct.fpga_bridge** %5, align 8
  br label %93

93:                                               ; preds = %90, %85, %27, %19
  %94 = load %struct.fpga_bridge*, %struct.fpga_bridge** %5, align 8
  ret %struct.fpga_bridge* %94
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.fpga_bridge* @kzalloc(i32, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.fpga_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
