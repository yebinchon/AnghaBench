; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/google/extr_vpd.c_vpd_section_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/google/extr_vpd.c_vpd_section_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpd_section = type { i8*, i32, i32, i64, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i64, %struct.vpd_section*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@MEMREMAP_WB = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s_raw\00", align 1
@vpd_section_read = common dso_local global i32 0, align 4
@vpd_kobj = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.vpd_section*, i32, i64)* @vpd_section_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpd_section_init(i8* %0, %struct.vpd_section* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vpd_section*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.vpd_section* %1, %struct.vpd_section** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load i64, i64* %9, align 8
  %13 = load i32, i32* @MEMREMAP_WB, align 4
  %14 = call i32 @memremap(i32 %11, i64 %12, i32 %13)
  %15 = load %struct.vpd_section*, %struct.vpd_section** %7, align 8
  %16 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.vpd_section*, %struct.vpd_section** %7, align 8
  %18 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %111

24:                                               ; preds = %4
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.vpd_section*, %struct.vpd_section** %7, align 8
  %27 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @kasprintf(i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load %struct.vpd_section*, %struct.vpd_section** %7, align 8
  %32 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %31, i32 0, i32 3
  store i64 %30, i64* %32, align 8
  %33 = load %struct.vpd_section*, %struct.vpd_section** %7, align 8
  %34 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %24
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %10, align 4
  br label %105

40:                                               ; preds = %24
  %41 = load %struct.vpd_section*, %struct.vpd_section** %7, align 8
  %42 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %41, i32 0, i32 4
  %43 = call i32 @sysfs_bin_attr_init(%struct.TYPE_6__* %42)
  %44 = load %struct.vpd_section*, %struct.vpd_section** %7, align 8
  %45 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.vpd_section*, %struct.vpd_section** %7, align 8
  %48 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i64 %46, i64* %50, align 8
  %51 = load %struct.vpd_section*, %struct.vpd_section** %7, align 8
  %52 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 292, i32* %54, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.vpd_section*, %struct.vpd_section** %7, align 8
  %57 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  %59 = load i32, i32* @vpd_section_read, align 4
  %60 = load %struct.vpd_section*, %struct.vpd_section** %7, align 8
  %61 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  %63 = load %struct.vpd_section*, %struct.vpd_section** %7, align 8
  %64 = load %struct.vpd_section*, %struct.vpd_section** %7, align 8
  %65 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store %struct.vpd_section* %63, %struct.vpd_section** %66, align 8
  %67 = load i32, i32* @vpd_kobj, align 4
  %68 = load %struct.vpd_section*, %struct.vpd_section** %7, align 8
  %69 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %68, i32 0, i32 4
  %70 = call i32 @sysfs_create_bin_file(i32 %67, %struct.TYPE_6__* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %40
  br label %100

74:                                               ; preds = %40
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* @vpd_kobj, align 4
  %77 = call i32 @kobject_create_and_add(i8* %75, i32 %76)
  %78 = load %struct.vpd_section*, %struct.vpd_section** %7, align 8
  %79 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 4
  %80 = load %struct.vpd_section*, %struct.vpd_section** %7, align 8
  %81 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %74
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %10, align 4
  br label %95

87:                                               ; preds = %74
  %88 = load %struct.vpd_section*, %struct.vpd_section** %7, align 8
  %89 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %88, i32 0, i32 5
  %90 = call i32 @INIT_LIST_HEAD(i32* %89)
  %91 = load %struct.vpd_section*, %struct.vpd_section** %7, align 8
  %92 = call i32 @vpd_section_create_attribs(%struct.vpd_section* %91)
  %93 = load %struct.vpd_section*, %struct.vpd_section** %7, align 8
  %94 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %93, i32 0, i32 1
  store i32 1, i32* %94, align 8
  store i32 0, i32* %5, align 4
  br label %111

95:                                               ; preds = %84
  %96 = load i32, i32* @vpd_kobj, align 4
  %97 = load %struct.vpd_section*, %struct.vpd_section** %7, align 8
  %98 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %97, i32 0, i32 4
  %99 = call i32 @sysfs_remove_bin_file(i32 %96, %struct.TYPE_6__* %98)
  br label %100

100:                                              ; preds = %95, %73
  %101 = load %struct.vpd_section*, %struct.vpd_section** %7, align 8
  %102 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @kfree(i64 %103)
  br label %105

105:                                              ; preds = %100, %37
  %106 = load %struct.vpd_section*, %struct.vpd_section** %7, align 8
  %107 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @memunmap(i32 %108)
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %105, %87, %21
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @memremap(i32, i64, i32) #1

declare dso_local i64 @kasprintf(i32, i8*, i8*) #1

declare dso_local i32 @sysfs_bin_attr_init(%struct.TYPE_6__*) #1

declare dso_local i32 @sysfs_create_bin_file(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @kobject_create_and_add(i8*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vpd_section_create_attribs(%struct.vpd_section*) #1

declare dso_local i32 @sysfs_remove_bin_file(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @memunmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
