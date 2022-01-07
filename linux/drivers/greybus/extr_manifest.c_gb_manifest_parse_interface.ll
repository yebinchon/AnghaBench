; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_manifest.c_gb_manifest_parse_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_manifest.c_gb_manifest_parse_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_interface = type { i32, i32, %struct.gb_control* }
%struct.gb_control = type { i8*, i8* }
%struct.manifest_desc = type { %struct.greybus_descriptor_interface* }
%struct.greybus_descriptor_interface = type { i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"manifest bundle descriptors not valid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_interface*, %struct.manifest_desc*)* @gb_manifest_parse_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_manifest_parse_interface(%struct.gb_interface* %0, %struct.manifest_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_interface*, align 8
  %5 = alloca %struct.manifest_desc*, align 8
  %6 = alloca %struct.greybus_descriptor_interface*, align 8
  %7 = alloca %struct.gb_control*, align 8
  %8 = alloca i8*, align 8
  store %struct.gb_interface* %0, %struct.gb_interface** %4, align 8
  store %struct.manifest_desc* %1, %struct.manifest_desc** %5, align 8
  %9 = load %struct.manifest_desc*, %struct.manifest_desc** %5, align 8
  %10 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %9, i32 0, i32 0
  %11 = load %struct.greybus_descriptor_interface*, %struct.greybus_descriptor_interface** %10, align 8
  store %struct.greybus_descriptor_interface* %11, %struct.greybus_descriptor_interface** %6, align 8
  %12 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %13 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %12, i32 0, i32 2
  %14 = load %struct.gb_control*, %struct.gb_control** %13, align 8
  store %struct.gb_control* %14, %struct.gb_control** %7, align 8
  %15 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %16 = load %struct.greybus_descriptor_interface*, %struct.greybus_descriptor_interface** %6, align 8
  %17 = getelementptr inbounds %struct.greybus_descriptor_interface, %struct.greybus_descriptor_interface* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @gb_string_get(%struct.gb_interface* %15, i32 %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @IS_ERR(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

24:                                               ; preds = %2
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.gb_control*, %struct.gb_control** %7, align 8
  %27 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %29 = load %struct.greybus_descriptor_interface*, %struct.greybus_descriptor_interface** %6, align 8
  %30 = getelementptr inbounds %struct.greybus_descriptor_interface, %struct.greybus_descriptor_interface* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @gb_string_get(%struct.gb_interface* %28, i32 %31)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @IS_ERR(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %63

37:                                               ; preds = %24
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.gb_control*, %struct.gb_control** %7, align 8
  %40 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.greybus_descriptor_interface*, %struct.greybus_descriptor_interface** %6, align 8
  %42 = getelementptr inbounds %struct.greybus_descriptor_interface, %struct.greybus_descriptor_interface* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %45 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.manifest_desc*, %struct.manifest_desc** %5, align 8
  %47 = call i32 @release_manifest_descriptor(%struct.manifest_desc* %46)
  %48 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %49 = call i32 @gb_manifest_parse_bundles(%struct.gb_interface* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %37
  %52 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %53 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %56

55:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %70

56:                                               ; preds = %51
  %57 = load %struct.gb_control*, %struct.gb_control** %7, align 8
  %58 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @kfree(i8* %59)
  %61 = load %struct.gb_control*, %struct.gb_control** %7, align 8
  %62 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %61, i32 0, i32 1
  store i8* null, i8** %62, align 8
  br label %63

63:                                               ; preds = %56, %36
  %64 = load %struct.gb_control*, %struct.gb_control** %7, align 8
  %65 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @kfree(i8* %66)
  %68 = load %struct.gb_control*, %struct.gb_control** %7, align 8
  %69 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %68, i32 0, i32 0
  store i8* null, i8** %69, align 8
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %63, %55, %23
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i8* @gb_string_get(%struct.gb_interface*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @release_manifest_descriptor(%struct.manifest_desc*) #1

declare dso_local i32 @gb_manifest_parse_bundles(%struct.gb_interface*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
