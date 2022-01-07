; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-mgr.c_fpga_mgr_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-mgr.c_fpga_mgr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { i8*, %struct.TYPE_3__, i8*, %struct.fpga_manager_ops*, i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.device*, i32, i32 }
%struct.device = type { i32 }
%struct.fpga_manager_ops = type { i32, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Attempt to register without fpga_manager_ops\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Attempt to register with no name!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@fpga_mgr_ida = common dso_local global i32 0, align 4
@fpga_mgr_class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"fpga%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fpga_manager* @fpga_mgr_create(%struct.device* %0, i8* %1, %struct.fpga_manager_ops* %2, i8* %3) #0 {
  %5 = alloca %struct.fpga_manager*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fpga_manager_ops*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fpga_manager*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.fpga_manager_ops* %2, %struct.fpga_manager_ops** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.fpga_manager_ops*, %struct.fpga_manager_ops** %8, align 8
  %14 = icmp ne %struct.fpga_manager_ops* %13, null
  br i1 %14, label %15, label %50

15:                                               ; preds = %4
  %16 = load %struct.fpga_manager_ops*, %struct.fpga_manager_ops** %8, align 8
  %17 = getelementptr inbounds %struct.fpga_manager_ops, %struct.fpga_manager_ops* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %15
  %21 = load %struct.fpga_manager_ops*, %struct.fpga_manager_ops** %8, align 8
  %22 = getelementptr inbounds %struct.fpga_manager_ops, %struct.fpga_manager_ops* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %20
  %26 = load %struct.fpga_manager_ops*, %struct.fpga_manager_ops** %8, align 8
  %27 = getelementptr inbounds %struct.fpga_manager_ops, %struct.fpga_manager_ops* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %25
  %31 = load %struct.fpga_manager_ops*, %struct.fpga_manager_ops** %8, align 8
  %32 = getelementptr inbounds %struct.fpga_manager_ops, %struct.fpga_manager_ops* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.fpga_manager_ops*, %struct.fpga_manager_ops** %8, align 8
  %37 = getelementptr inbounds %struct.fpga_manager_ops, %struct.fpga_manager_ops* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35, %30
  %41 = load %struct.fpga_manager_ops*, %struct.fpga_manager_ops** %8, align 8
  %42 = getelementptr inbounds %struct.fpga_manager_ops, %struct.fpga_manager_ops* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.fpga_manager_ops*, %struct.fpga_manager_ops** %8, align 8
  %47 = getelementptr inbounds %struct.fpga_manager_ops, %struct.fpga_manager_ops* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45, %35, %25, %20, %15, %4
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store %struct.fpga_manager* null, %struct.fpga_manager** %5, align 8
  br label %131

53:                                               ; preds = %45, %40
  %54 = load i8*, i8** %7, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56, %53
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store %struct.fpga_manager* null, %struct.fpga_manager** %5, align 8
  br label %131

63:                                               ; preds = %56
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.fpga_manager* @kzalloc(i32 56, i32 %64)
  store %struct.fpga_manager* %65, %struct.fpga_manager** %10, align 8
  %66 = load %struct.fpga_manager*, %struct.fpga_manager** %10, align 8
  %67 = icmp ne %struct.fpga_manager* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  store %struct.fpga_manager* null, %struct.fpga_manager** %5, align 8
  br label %131

69:                                               ; preds = %63
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i32 @ida_simple_get(i32* @fpga_mgr_ida, i32 0, i32 0, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %12, align 4
  br label %128

76:                                               ; preds = %69
  %77 = load %struct.fpga_manager*, %struct.fpga_manager** %10, align 8
  %78 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %77, i32 0, i32 4
  %79 = call i32 @mutex_init(i32* %78)
  %80 = load i8*, i8** %7, align 8
  %81 = load %struct.fpga_manager*, %struct.fpga_manager** %10, align 8
  %82 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load %struct.fpga_manager_ops*, %struct.fpga_manager_ops** %8, align 8
  %84 = load %struct.fpga_manager*, %struct.fpga_manager** %10, align 8
  %85 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %84, i32 0, i32 3
  store %struct.fpga_manager_ops* %83, %struct.fpga_manager_ops** %85, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load %struct.fpga_manager*, %struct.fpga_manager** %10, align 8
  %88 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load %struct.fpga_manager*, %struct.fpga_manager** %10, align 8
  %90 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %89, i32 0, i32 1
  %91 = call i32 @device_initialize(%struct.TYPE_3__* %90)
  %92 = load i32, i32* @fpga_mgr_class, align 4
  %93 = load %struct.fpga_manager*, %struct.fpga_manager** %10, align 8
  %94 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 4
  store i32 %92, i32* %95, align 4
  %96 = load %struct.fpga_manager_ops*, %struct.fpga_manager_ops** %8, align 8
  %97 = getelementptr inbounds %struct.fpga_manager_ops, %struct.fpga_manager_ops* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.fpga_manager*, %struct.fpga_manager** %10, align 8
  %100 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  store i32 %98, i32* %101, align 8
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = load %struct.fpga_manager*, %struct.fpga_manager** %10, align 8
  %104 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  store %struct.device* %102, %struct.device** %105, align 8
  %106 = load %struct.device*, %struct.device** %6, align 8
  %107 = getelementptr inbounds %struct.device, %struct.device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.fpga_manager*, %struct.fpga_manager** %10, align 8
  %110 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.fpga_manager*, %struct.fpga_manager** %10, align 8
  %114 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  %116 = load %struct.fpga_manager*, %struct.fpga_manager** %10, align 8
  %117 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %116, i32 0, i32 1
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @dev_set_name(%struct.TYPE_3__* %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %76
  br label %125

123:                                              ; preds = %76
  %124 = load %struct.fpga_manager*, %struct.fpga_manager** %10, align 8
  store %struct.fpga_manager* %124, %struct.fpga_manager** %5, align 8
  br label %131

125:                                              ; preds = %122
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @ida_simple_remove(i32* @fpga_mgr_ida, i32 %126)
  br label %128

128:                                              ; preds = %125, %74
  %129 = load %struct.fpga_manager*, %struct.fpga_manager** %10, align 8
  %130 = call i32 @kfree(%struct.fpga_manager* %129)
  store %struct.fpga_manager* null, %struct.fpga_manager** %5, align 8
  br label %131

131:                                              ; preds = %128, %123, %68, %60, %50
  %132 = load %struct.fpga_manager*, %struct.fpga_manager** %5, align 8
  ret %struct.fpga_manager* %132
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.fpga_manager* @kzalloc(i32, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.fpga_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
