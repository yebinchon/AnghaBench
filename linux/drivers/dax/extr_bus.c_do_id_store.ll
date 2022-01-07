; ModuleID = '/home/carl/AnghaBench/linux/drivers/dax/extr_bus.c_do_id_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dax/extr_bus.c_do_id_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32 }
%struct.dax_device_driver = type { i32 }
%struct.dax_id = type { i32, i32 }

@DAX_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"dax%d.%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@dax_bus_lock = common dso_local global i32 0, align 4
@ID_ADD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ID_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_driver*, i8*, i64, i32)* @do_id_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_id_store(%struct.device_driver* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_driver*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dax_device_driver*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.dax_id*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.device_driver* %0, %struct.device_driver** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.device_driver*, %struct.device_driver** %6, align 8
  %20 = call %struct.dax_device_driver* @to_dax_drv(%struct.device_driver* %19)
  store %struct.dax_device_driver* %20, %struct.dax_device_driver** %10, align 8
  %21 = load i32, i32* @DAX_NAME_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %25 = load i64, i64* %8, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %16, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @sscanf(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %12)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %17, align 4
  %30 = icmp ne i32 %29, 2
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %111

34:                                               ; preds = %4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @sysfs_streq(i8* %38, i8* %24)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %111

44:                                               ; preds = %34
  %45 = call i32 @mutex_lock(i32* @dax_bus_lock)
  %46 = load %struct.dax_device_driver*, %struct.dax_device_driver** %10, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call %struct.dax_id* @__dax_match_id(%struct.dax_device_driver* %46, i8* %47)
  store %struct.dax_id* %48, %struct.dax_id** %15, align 8
  %49 = load %struct.dax_id*, %struct.dax_id** %15, align 8
  %50 = icmp ne %struct.dax_id* %49, null
  br i1 %50, label %78, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @ID_ADD, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %51
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.dax_id* @kzalloc(i32 8, i32 %56)
  store %struct.dax_id* %57, %struct.dax_id** %15, align 8
  %58 = load %struct.dax_id*, %struct.dax_id** %15, align 8
  %59 = icmp ne %struct.dax_id* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load %struct.dax_id*, %struct.dax_id** %15, align 8
  %62 = getelementptr inbounds %struct.dax_id, %struct.dax_id* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* @DAX_NAME_LEN, align 4
  %66 = call i32 @strncpy(i32 %63, i8* %64, i32 %65)
  %67 = load %struct.dax_id*, %struct.dax_id** %15, align 8
  %68 = getelementptr inbounds %struct.dax_id, %struct.dax_id* %67, i32 0, i32 0
  %69 = load %struct.dax_device_driver*, %struct.dax_device_driver** %10, align 8
  %70 = getelementptr inbounds %struct.dax_device_driver, %struct.dax_device_driver* %69, i32 0, i32 0
  %71 = call i32 @list_add(i32* %68, i32* %70)
  br label %75

72:                                               ; preds = %55
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %16, align 4
  br label %75

75:                                               ; preds = %72, %60
  br label %77

76:                                               ; preds = %51
  br label %77

77:                                               ; preds = %76, %75
  br label %90

78:                                               ; preds = %44
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @ID_REMOVE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load %struct.dax_id*, %struct.dax_id** %15, align 8
  %84 = getelementptr inbounds %struct.dax_id, %struct.dax_id* %83, i32 0, i32 0
  %85 = call i32 @list_del(i32* %84)
  %86 = load %struct.dax_id*, %struct.dax_id** %15, align 8
  %87 = call i32 @kfree(%struct.dax_id* %86)
  br label %89

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %82
  br label %90

90:                                               ; preds = %89, %77
  %91 = call i32 @mutex_unlock(i32* @dax_bus_lock)
  %92 = load i32, i32* %16, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* %16, align 4
  store i32 %95, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %111

96:                                               ; preds = %90
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @ID_ADD, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load %struct.device_driver*, %struct.device_driver** %6, align 8
  %102 = call i32 @driver_attach(%struct.device_driver* %101)
  store i32 %102, i32* %16, align 4
  br label %103

103:                                              ; preds = %100, %96
  %104 = load i32, i32* %16, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* %16, align 4
  store i32 %107, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %111

108:                                              ; preds = %103
  %109 = load i64, i64* %8, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %111

111:                                              ; preds = %108, %106, %94, %41, %31
  %112 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.dax_device_driver* @to_dax_drv(%struct.device_driver*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dax_id* @__dax_match_id(%struct.dax_device_driver*, i8*) #1

declare dso_local %struct.dax_id* @kzalloc(i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.dax_id*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @driver_attach(%struct.device_driver*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
