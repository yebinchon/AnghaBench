; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/google/extr_vpd.c_vpd_section_attrib_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/google/extr_vpd.c_vpd_section_attrib_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpd_section = type { i32, i32 }
%struct.vpd_attrib_info = type { %struct.vpd_attrib_info*, i32, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { %struct.vpd_attrib_info*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.vpd_attrib_info* }

@VPD_OK = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vpd_attrib_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i8*)* @vpd_section_attrib_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpd_section_attrib_add(i32* %0, i32 %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vpd_section*, align 8
  %14 = alloca %struct.vpd_attrib_info*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = bitcast i8* %15 to %struct.vpd_section*
  store %struct.vpd_section* %16, %struct.vpd_section** %13, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @vpd_section_check_key_name(i32* %17, i32 %18)
  %20 = load i64, i64* @VPD_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i64, i64* @VPD_OK, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %6, align 4
  br label %104

25:                                               ; preds = %5
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.vpd_attrib_info* @kzalloc(i32 56, i32 %26)
  store %struct.vpd_attrib_info* %27, %struct.vpd_attrib_info** %14, align 8
  %28 = load %struct.vpd_attrib_info*, %struct.vpd_attrib_info** %14, align 8
  %29 = icmp ne %struct.vpd_attrib_info* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %104

33:                                               ; preds = %25
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.vpd_attrib_info* @kstrndup(i32* %34, i32 %35, i32 %36)
  %38 = load %struct.vpd_attrib_info*, %struct.vpd_attrib_info** %14, align 8
  %39 = getelementptr inbounds %struct.vpd_attrib_info, %struct.vpd_attrib_info* %38, i32 0, i32 0
  store %struct.vpd_attrib_info* %37, %struct.vpd_attrib_info** %39, align 8
  %40 = load %struct.vpd_attrib_info*, %struct.vpd_attrib_info** %14, align 8
  %41 = getelementptr inbounds %struct.vpd_attrib_info, %struct.vpd_attrib_info* %40, i32 0, i32 0
  %42 = load %struct.vpd_attrib_info*, %struct.vpd_attrib_info** %41, align 8
  %43 = icmp ne %struct.vpd_attrib_info* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  br label %100

47:                                               ; preds = %33
  %48 = load %struct.vpd_attrib_info*, %struct.vpd_attrib_info** %14, align 8
  %49 = getelementptr inbounds %struct.vpd_attrib_info, %struct.vpd_attrib_info* %48, i32 0, i32 2
  %50 = call i32 @sysfs_bin_attr_init(%struct.TYPE_5__* %49)
  %51 = load %struct.vpd_attrib_info*, %struct.vpd_attrib_info** %14, align 8
  %52 = getelementptr inbounds %struct.vpd_attrib_info, %struct.vpd_attrib_info* %51, i32 0, i32 0
  %53 = load %struct.vpd_attrib_info*, %struct.vpd_attrib_info** %52, align 8
  %54 = load %struct.vpd_attrib_info*, %struct.vpd_attrib_info** %14, align 8
  %55 = getelementptr inbounds %struct.vpd_attrib_info, %struct.vpd_attrib_info* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store %struct.vpd_attrib_info* %53, %struct.vpd_attrib_info** %57, align 8
  %58 = load %struct.vpd_attrib_info*, %struct.vpd_attrib_info** %14, align 8
  %59 = getelementptr inbounds %struct.vpd_attrib_info, %struct.vpd_attrib_info* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 292, i32* %61, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.vpd_attrib_info*, %struct.vpd_attrib_info** %14, align 8
  %64 = getelementptr inbounds %struct.vpd_attrib_info, %struct.vpd_attrib_info* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @vpd_attrib_read, align 4
  %67 = load %struct.vpd_attrib_info*, %struct.vpd_attrib_info** %14, align 8
  %68 = getelementptr inbounds %struct.vpd_attrib_info, %struct.vpd_attrib_info* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 8
  %70 = load %struct.vpd_attrib_info*, %struct.vpd_attrib_info** %14, align 8
  %71 = load %struct.vpd_attrib_info*, %struct.vpd_attrib_info** %14, align 8
  %72 = getelementptr inbounds %struct.vpd_attrib_info, %struct.vpd_attrib_info* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store %struct.vpd_attrib_info* %70, %struct.vpd_attrib_info** %73, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = load %struct.vpd_attrib_info*, %struct.vpd_attrib_info** %14, align 8
  %76 = getelementptr inbounds %struct.vpd_attrib_info, %struct.vpd_attrib_info* %75, i32 0, i32 3
  store i32* %74, i32** %76, align 8
  %77 = load %struct.vpd_attrib_info*, %struct.vpd_attrib_info** %14, align 8
  %78 = getelementptr inbounds %struct.vpd_attrib_info, %struct.vpd_attrib_info* %77, i32 0, i32 1
  %79 = call i32 @INIT_LIST_HEAD(i32* %78)
  %80 = load %struct.vpd_section*, %struct.vpd_section** %13, align 8
  %81 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.vpd_attrib_info*, %struct.vpd_attrib_info** %14, align 8
  %84 = getelementptr inbounds %struct.vpd_attrib_info, %struct.vpd_attrib_info* %83, i32 0, i32 2
  %85 = call i32 @sysfs_create_bin_file(i32 %82, %struct.TYPE_5__* %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %47
  br label %95

89:                                               ; preds = %47
  %90 = load %struct.vpd_attrib_info*, %struct.vpd_attrib_info** %14, align 8
  %91 = getelementptr inbounds %struct.vpd_attrib_info, %struct.vpd_attrib_info* %90, i32 0, i32 1
  %92 = load %struct.vpd_section*, %struct.vpd_section** %13, align 8
  %93 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %92, i32 0, i32 0
  %94 = call i32 @list_add_tail(i32* %91, i32* %93)
  store i32 0, i32* %6, align 4
  br label %104

95:                                               ; preds = %88
  %96 = load %struct.vpd_attrib_info*, %struct.vpd_attrib_info** %14, align 8
  %97 = getelementptr inbounds %struct.vpd_attrib_info, %struct.vpd_attrib_info* %96, i32 0, i32 0
  %98 = load %struct.vpd_attrib_info*, %struct.vpd_attrib_info** %97, align 8
  %99 = call i32 @kfree(%struct.vpd_attrib_info* %98)
  br label %100

100:                                              ; preds = %95, %44
  %101 = load %struct.vpd_attrib_info*, %struct.vpd_attrib_info** %14, align 8
  %102 = call i32 @kfree(%struct.vpd_attrib_info* %101)
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %100, %89, %30, %22
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i64 @vpd_section_check_key_name(i32*, i32) #1

declare dso_local %struct.vpd_attrib_info* @kzalloc(i32, i32) #1

declare dso_local %struct.vpd_attrib_info* @kstrndup(i32*, i32, i32) #1

declare dso_local i32 @sysfs_bin_attr_init(%struct.TYPE_5__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sysfs_create_bin_file(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.vpd_attrib_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
