; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_create_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_create_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.applesmc_node_group = type { i32, i64, i32, i64, %struct.applesmc_dev_attr* }
%struct.applesmc_dev_attr = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.attribute, i64, i32 }
%struct.attribute = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pdev = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.applesmc_node_group*, i32)* @applesmc_create_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applesmc_create_nodes(%struct.applesmc_node_group* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.applesmc_node_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.applesmc_node_group*, align 8
  %7 = alloca %struct.applesmc_dev_attr*, align 8
  %8 = alloca %struct.attribute*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.applesmc_node_group* %0, %struct.applesmc_node_group** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.applesmc_node_group*, %struct.applesmc_node_group** %4, align 8
  store %struct.applesmc_node_group* %11, %struct.applesmc_node_group** %6, align 8
  br label %12

12:                                               ; preds = %111, %2
  %13 = load %struct.applesmc_node_group*, %struct.applesmc_node_group** %6, align 8
  %14 = getelementptr inbounds %struct.applesmc_node_group, %struct.applesmc_node_group* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %114

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.applesmc_dev_attr* @kcalloc(i32 %19, i32 48, i32 %20)
  %22 = load %struct.applesmc_node_group*, %struct.applesmc_node_group** %6, align 8
  %23 = getelementptr inbounds %struct.applesmc_node_group, %struct.applesmc_node_group* %22, i32 0, i32 4
  store %struct.applesmc_dev_attr* %21, %struct.applesmc_dev_attr** %23, align 8
  %24 = load %struct.applesmc_node_group*, %struct.applesmc_node_group** %6, align 8
  %25 = getelementptr inbounds %struct.applesmc_node_group, %struct.applesmc_node_group* %24, i32 0, i32 4
  %26 = load %struct.applesmc_dev_attr*, %struct.applesmc_dev_attr** %25, align 8
  %27 = icmp ne %struct.applesmc_dev_attr* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %115

31:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %107, %31
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %110

36:                                               ; preds = %32
  %37 = load %struct.applesmc_node_group*, %struct.applesmc_node_group** %6, align 8
  %38 = getelementptr inbounds %struct.applesmc_node_group, %struct.applesmc_node_group* %37, i32 0, i32 4
  %39 = load %struct.applesmc_dev_attr*, %struct.applesmc_dev_attr** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.applesmc_dev_attr, %struct.applesmc_dev_attr* %39, i64 %41
  store %struct.applesmc_dev_attr* %42, %struct.applesmc_dev_attr** %7, align 8
  %43 = load %struct.applesmc_dev_attr*, %struct.applesmc_dev_attr** %7, align 8
  %44 = getelementptr inbounds %struct.applesmc_dev_attr, %struct.applesmc_dev_attr* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.applesmc_node_group*, %struct.applesmc_node_group** %6, align 8
  %47 = getelementptr inbounds %struct.applesmc_node_group, %struct.applesmc_node_group* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i32 @scnprintf(i32* %45, i32 8, i64 %48, i32 %50)
  %52 = load %struct.applesmc_node_group*, %struct.applesmc_node_group** %6, align 8
  %53 = getelementptr inbounds %struct.applesmc_node_group, %struct.applesmc_node_group* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = shl i32 %54, 16
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, 65535
  %58 = or i32 %55, %57
  %59 = load %struct.applesmc_dev_attr*, %struct.applesmc_dev_attr** %7, align 8
  %60 = getelementptr inbounds %struct.applesmc_dev_attr, %struct.applesmc_dev_attr* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.applesmc_node_group*, %struct.applesmc_node_group** %6, align 8
  %63 = getelementptr inbounds %struct.applesmc_node_group, %struct.applesmc_node_group* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.applesmc_dev_attr*, %struct.applesmc_dev_attr** %7, align 8
  %66 = getelementptr inbounds %struct.applesmc_dev_attr, %struct.applesmc_dev_attr* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store i32 %64, i32* %68, align 8
  %69 = load %struct.applesmc_node_group*, %struct.applesmc_node_group** %6, align 8
  %70 = getelementptr inbounds %struct.applesmc_node_group, %struct.applesmc_node_group* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.applesmc_dev_attr*, %struct.applesmc_dev_attr** %7, align 8
  %73 = getelementptr inbounds %struct.applesmc_dev_attr, %struct.applesmc_dev_attr* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i64 %71, i64* %75, align 8
  %76 = load %struct.applesmc_dev_attr*, %struct.applesmc_dev_attr** %7, align 8
  %77 = getelementptr inbounds %struct.applesmc_dev_attr, %struct.applesmc_dev_attr* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store %struct.attribute* %79, %struct.attribute** %8, align 8
  %80 = load %struct.attribute*, %struct.attribute** %8, align 8
  %81 = call i32 @sysfs_attr_init(%struct.attribute* %80)
  %82 = load %struct.applesmc_dev_attr*, %struct.applesmc_dev_attr** %7, align 8
  %83 = getelementptr inbounds %struct.applesmc_dev_attr, %struct.applesmc_dev_attr* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.attribute*, %struct.attribute** %8, align 8
  %86 = getelementptr inbounds %struct.attribute, %struct.attribute* %85, i32 0, i32 1
  store i32* %84, i32** %86, align 8
  %87 = load %struct.applesmc_node_group*, %struct.applesmc_node_group** %6, align 8
  %88 = getelementptr inbounds %struct.applesmc_node_group, %struct.applesmc_node_group* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 128, i32 0
  %93 = or i32 292, %92
  %94 = load %struct.attribute*, %struct.attribute** %8, align 8
  %95 = getelementptr inbounds %struct.attribute, %struct.attribute* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pdev, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load %struct.attribute*, %struct.attribute** %8, align 8
  %100 = call i32 @sysfs_create_file(i32* %98, %struct.attribute* %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %36
  %104 = load %struct.attribute*, %struct.attribute** %8, align 8
  %105 = getelementptr inbounds %struct.attribute, %struct.attribute* %104, i32 0, i32 1
  store i32* null, i32** %105, align 8
  br label %115

106:                                              ; preds = %36
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %32

110:                                              ; preds = %32
  br label %111

111:                                              ; preds = %110
  %112 = load %struct.applesmc_node_group*, %struct.applesmc_node_group** %6, align 8
  %113 = getelementptr inbounds %struct.applesmc_node_group, %struct.applesmc_node_group* %112, i32 1
  store %struct.applesmc_node_group* %113, %struct.applesmc_node_group** %6, align 8
  br label %12

114:                                              ; preds = %12
  store i32 0, i32* %3, align 4
  br label %119

115:                                              ; preds = %103, %28
  %116 = load %struct.applesmc_node_group*, %struct.applesmc_node_group** %4, align 8
  %117 = call i32 @applesmc_destroy_nodes(%struct.applesmc_node_group* %116)
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %115, %114
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.applesmc_dev_attr* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @scnprintf(i32*, i32, i64, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.attribute*) #1

declare dso_local i32 @sysfs_create_file(i32*, %struct.attribute*) #1

declare dso_local i32 @applesmc_destroy_nodes(%struct.applesmc_node_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
