; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_object_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_object_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.mxt_data = type { i32, %struct.mxt_object*, %struct.TYPE_2__* }
%struct.mxt_object = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"T%u:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @mxt_object_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_object_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mxt_data*, align 8
  %9 = alloca %struct.mxt_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.mxt_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.mxt_data* %18, %struct.mxt_data** %8, align 8
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32* @kmalloc(i32 256, i32 %19)
  store i32* %20, i32** %14, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %115

26:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %101, %26
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.mxt_data*, %struct.mxt_data** %8, align 8
  %30 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %28, %33
  br i1 %34, label %35, label %104

35:                                               ; preds = %27
  %36 = load %struct.mxt_data*, %struct.mxt_data** %8, align 8
  %37 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %36, i32 0, i32 1
  %38 = load %struct.mxt_object*, %struct.mxt_object** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %38, i64 %40
  store %struct.mxt_object* %41, %struct.mxt_object** %9, align 8
  %42 = load %struct.mxt_object*, %struct.mxt_object** %9, align 8
  %43 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mxt_object_readable(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %35
  br label %101

48:                                               ; preds = %35
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i64, i64* @PAGE_SIZE, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %53, %55
  %57 = load %struct.mxt_object*, %struct.mxt_object** %9, align 8
  %58 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @scnprintf(i8* %52, i64 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %97, %48
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.mxt_object*, %struct.mxt_object** %9, align 8
  %68 = call i32 @mxt_obj_instances(%struct.mxt_object* %67)
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %100

70:                                               ; preds = %65
  %71 = load %struct.mxt_object*, %struct.mxt_object** %9, align 8
  %72 = call i32 @mxt_obj_size(%struct.mxt_object* %71)
  store i32 %72, i32* %15, align 4
  %73 = load %struct.mxt_object*, %struct.mxt_object** %9, align 8
  %74 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %15, align 4
  %78 = mul nsw i32 %76, %77
  %79 = add nsw i32 %75, %78
  store i32 %79, i32* %16, align 4
  %80 = load %struct.mxt_data*, %struct.mxt_data** %8, align 8
  %81 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load i32*, i32** %14, align 8
  %86 = call i32 @__mxt_read_reg(i32 %82, i32 %83, i32 %84, i32* %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %70
  br label %105

90:                                               ; preds = %70
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.mxt_object*, %struct.mxt_object** %9, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i32*, i32** %14, align 8
  %96 = call i32 @mxt_show_instance(i8* %91, i32 %92, %struct.mxt_object* %93, i32 %94, i32* %95)
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %65

100:                                              ; preds = %65
  br label %101

101:                                              ; preds = %100, %47
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %27

104:                                              ; preds = %27
  br label %105

105:                                              ; preds = %104, %89
  %106 = load i32*, i32** %14, align 8
  %107 = call i32 @kfree(i32* %106)
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %113

111:                                              ; preds = %105
  %112 = load i32, i32* %10, align 4
  br label %113

113:                                              ; preds = %111, %110
  %114 = phi i32 [ %108, %110 ], [ %112, %111 ]
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %23
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.mxt_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @mxt_object_readable(i32) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i32) #1

declare dso_local i32 @mxt_obj_instances(%struct.mxt_object*) #1

declare dso_local i32 @mxt_obj_size(%struct.mxt_object*) #1

declare dso_local i32 @__mxt_read_reg(i32, i32, i32, i32*) #1

declare dso_local i32 @mxt_show_instance(i8*, i32, %struct.mxt_object*, i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
