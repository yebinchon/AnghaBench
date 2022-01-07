; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_gth.c_intel_th_master_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_gth.c_intel_th_master_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gth_device = type { %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i8*, %struct.attribute** }
%struct.attribute = type { i8*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.master_attribute = type { i32, %struct.gth_device*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.attribute, i32, i32 }

@TH_CONFIGURABLE_MASTERS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%d%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@master_attr_show = common dso_local global i32 0, align 4
@master_attr_store = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"masters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gth_device*)* @intel_th_master_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_th_master_attributes(%struct.gth_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gth_device*, align 8
  %4 = alloca %struct.master_attribute*, align 8
  %5 = alloca %struct.attribute**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.gth_device* %0, %struct.gth_device** %3, align 8
  %9 = load i32, i32* @TH_CONFIGURABLE_MASTERS, align 4
  %10 = add nsw i32 %9, 2
  store i32 %10, i32* %7, align 4
  %11 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %12 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @devm_kcalloc(%struct.TYPE_7__* %13, i32 %14, i32 8, i32 %15)
  %17 = bitcast i8* %16 to %struct.attribute**
  store %struct.attribute** %17, %struct.attribute*** %5, align 8
  %18 = load %struct.attribute**, %struct.attribute*** %5, align 8
  %19 = icmp ne %struct.attribute** %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %139

23:                                               ; preds = %1
  %24 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %25 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @devm_kcalloc(%struct.TYPE_7__* %26, i32 %27, i32 40, i32 %28)
  %30 = bitcast i8* %29 to %struct.master_attribute*
  store %struct.master_attribute* %30, %struct.master_attribute** %4, align 8
  %31 = load %struct.master_attribute*, %struct.master_attribute** %4, align 8
  %32 = icmp ne %struct.master_attribute* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %139

36:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %121, %36
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @TH_CONFIGURABLE_MASTERS, align 4
  %40 = add nsw i32 %39, 1
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %124

42:                                               ; preds = %37
  %43 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %44 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @TH_CONFIGURABLE_MASTERS, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %53 = call i8* @devm_kasprintf(%struct.TYPE_7__* %45, i32 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %47, i8* %52)
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %42
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %139

59:                                               ; preds = %42
  %60 = load i8*, i8** %8, align 8
  %61 = load %struct.master_attribute*, %struct.master_attribute** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.master_attribute, %struct.master_attribute* %61, i64 %63
  %65 = getelementptr inbounds %struct.master_attribute, %struct.master_attribute* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.attribute, %struct.attribute* %66, i32 0, i32 0
  store i8* %60, i8** %67, align 8
  %68 = load i32, i32* @S_IRUGO, align 4
  %69 = load i32, i32* @S_IWUSR, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.master_attribute*, %struct.master_attribute** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.master_attribute, %struct.master_attribute* %71, i64 %73
  %75 = getelementptr inbounds %struct.master_attribute, %struct.master_attribute* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.attribute, %struct.attribute* %76, i32 0, i32 1
  store i32 %70, i32* %77, align 8
  %78 = load i32, i32* @master_attr_show, align 4
  %79 = load %struct.master_attribute*, %struct.master_attribute** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.master_attribute, %struct.master_attribute* %79, i64 %81
  %83 = getelementptr inbounds %struct.master_attribute, %struct.master_attribute* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  store i32 %78, i32* %84, align 4
  %85 = load i32, i32* @master_attr_store, align 4
  %86 = load %struct.master_attribute*, %struct.master_attribute** %4, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.master_attribute, %struct.master_attribute* %86, i64 %88
  %90 = getelementptr inbounds %struct.master_attribute, %struct.master_attribute* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store i32 %85, i32* %91, align 8
  %92 = load %struct.master_attribute*, %struct.master_attribute** %4, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.master_attribute, %struct.master_attribute* %92, i64 %94
  %96 = getelementptr inbounds %struct.master_attribute, %struct.master_attribute* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = call i32 @sysfs_attr_init(%struct.attribute* %97)
  %99 = load %struct.master_attribute*, %struct.master_attribute** %4, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.master_attribute, %struct.master_attribute* %99, i64 %101
  %103 = getelementptr inbounds %struct.master_attribute, %struct.master_attribute* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load %struct.attribute**, %struct.attribute*** %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.attribute*, %struct.attribute** %105, i64 %107
  store %struct.attribute* %104, %struct.attribute** %108, align 8
  %109 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %110 = load %struct.master_attribute*, %struct.master_attribute** %4, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.master_attribute, %struct.master_attribute* %110, i64 %112
  %114 = getelementptr inbounds %struct.master_attribute, %struct.master_attribute* %113, i32 0, i32 1
  store %struct.gth_device* %109, %struct.gth_device** %114, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.master_attribute*, %struct.master_attribute** %4, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.master_attribute, %struct.master_attribute* %116, i64 %118
  %120 = getelementptr inbounds %struct.master_attribute, %struct.master_attribute* %119, i32 0, i32 0
  store i32 %115, i32* %120, align 8
  br label %121

121:                                              ; preds = %59
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %37

124:                                              ; preds = %37
  %125 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %126 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %127, align 8
  %128 = load %struct.attribute**, %struct.attribute*** %5, align 8
  %129 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %130 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  store %struct.attribute** %128, %struct.attribute*** %131, align 8
  %132 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %133 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %132, i32 0, i32 1
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %137 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %136, i32 0, i32 0
  %138 = call i32 @sysfs_create_group(i32* %135, %struct.TYPE_6__* %137)
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %124, %56, %33, %20
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i8* @devm_kcalloc(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i8* @devm_kasprintf(%struct.TYPE_7__*, i32, i8*, i32, i8*) #1

declare dso_local i32 @sysfs_attr_init(%struct.attribute*) #1

declare dso_local i32 @sysfs_create_group(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
