; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat.c_roccat_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat.c_roccat_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roccat_device = type { i32, i32, i32, i64, %struct.hid_device*, i32, i32, i32, i32, i32 }
%struct.hid_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.class = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@devices_lock = common dso_local global i32 0, align 4
@ROCCAT_MAX_DEVICES = common dso_local global i32 0, align 4
@devices = common dso_local global %struct.roccat_device** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@roccat_major = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s%s%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"roccat\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @roccat_connect(%struct.class* %0, %struct.hid_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.class*, align 8
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.roccat_device*, align 8
  %10 = alloca i32, align 4
  store %struct.class* %0, %struct.class** %5, align 8
  store %struct.hid_device* %1, %struct.hid_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.roccat_device* @kzalloc(i32 56, i32 %11)
  store %struct.roccat_device* %12, %struct.roccat_device** %9, align 8
  %13 = load %struct.roccat_device*, %struct.roccat_device** %9, align 8
  %14 = icmp ne %struct.roccat_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %114

18:                                               ; preds = %3
  %19 = call i32 @mutex_lock(i32* @devices_lock)
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %33, %18
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ROCCAT_MAX_DEVICES, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load %struct.roccat_device**, %struct.roccat_device*** @devices, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.roccat_device*, %struct.roccat_device** %25, i64 %27
  %29 = load %struct.roccat_device*, %struct.roccat_device** %28, align 8
  %30 = icmp ne %struct.roccat_device* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %33

32:                                               ; preds = %24
  br label %36

33:                                               ; preds = %31
  %34 = load i32, i32* %8, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %20

36:                                               ; preds = %32, %20
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @ROCCAT_MAX_DEVICES, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load %struct.roccat_device*, %struct.roccat_device** %9, align 8
  %42 = load %struct.roccat_device**, %struct.roccat_device*** @devices, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.roccat_device*, %struct.roccat_device** %42, i64 %44
  store %struct.roccat_device* %41, %struct.roccat_device** %45, align 8
  br label %52

46:                                               ; preds = %36
  %47 = call i32 @mutex_unlock(i32* @devices_lock)
  %48 = load %struct.roccat_device*, %struct.roccat_device** %9, align 8
  %49 = call i32 @kfree(%struct.roccat_device* %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %114

52:                                               ; preds = %40
  %53 = load %struct.class*, %struct.class** %5, align 8
  %54 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %55 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %54, i32 0, i32 1
  %56 = load i32, i32* @roccat_major, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @MKDEV(i32 %56, i32 %57)
  %59 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %60 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @device_create(%struct.class* %53, i32* %55, i32 %58, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load %struct.roccat_device*, %struct.roccat_device** %9, align 8
  %67 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 8
  %68 = load %struct.roccat_device*, %struct.roccat_device** %9, align 8
  %69 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %68, i32 0, i32 9
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @IS_ERR(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %52
  %74 = load %struct.roccat_device**, %struct.roccat_device*** @devices, align 8
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.roccat_device*, %struct.roccat_device** %74, i64 %76
  store %struct.roccat_device* null, %struct.roccat_device** %77, align 8
  %78 = call i32 @mutex_unlock(i32* @devices_lock)
  %79 = load %struct.roccat_device*, %struct.roccat_device** %9, align 8
  %80 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @PTR_ERR(i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load %struct.roccat_device*, %struct.roccat_device** %9, align 8
  %84 = call i32 @kfree(%struct.roccat_device* %83)
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %4, align 4
  br label %114

86:                                               ; preds = %52
  %87 = call i32 @mutex_unlock(i32* @devices_lock)
  %88 = load %struct.roccat_device*, %struct.roccat_device** %9, align 8
  %89 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %88, i32 0, i32 8
  %90 = call i32 @init_waitqueue_head(i32* %89)
  %91 = load %struct.roccat_device*, %struct.roccat_device** %9, align 8
  %92 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %91, i32 0, i32 7
  %93 = call i32 @INIT_LIST_HEAD(i32* %92)
  %94 = load %struct.roccat_device*, %struct.roccat_device** %9, align 8
  %95 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %94, i32 0, i32 6
  %96 = call i32 @mutex_init(i32* %95)
  %97 = load %struct.roccat_device*, %struct.roccat_device** %9, align 8
  %98 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %97, i32 0, i32 5
  %99 = call i32 @mutex_init(i32* %98)
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.roccat_device*, %struct.roccat_device** %9, align 8
  %102 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %104 = load %struct.roccat_device*, %struct.roccat_device** %9, align 8
  %105 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %104, i32 0, i32 4
  store %struct.hid_device* %103, %struct.hid_device** %105, align 8
  %106 = load %struct.roccat_device*, %struct.roccat_device** %9, align 8
  %107 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  %108 = load %struct.roccat_device*, %struct.roccat_device** %9, align 8
  %109 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %108, i32 0, i32 3
  store i64 0, i64* %109, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.roccat_device*, %struct.roccat_device** %9, align 8
  %112 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %86, %73, %46, %15
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.roccat_device* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.roccat_device*) #1

declare dso_local i32 @device_create(%struct.class*, i32*, i32, i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
