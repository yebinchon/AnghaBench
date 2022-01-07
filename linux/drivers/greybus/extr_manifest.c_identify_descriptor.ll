; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_manifest.c_identify_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_manifest.c_identify_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_interface = type { i32, i32 }
%struct.greybus_descriptor = type { %struct.TYPE_2__, %struct.greybus_descriptor_header }
%struct.TYPE_2__ = type { i64 }
%struct.greybus_descriptor_header = type { i32, i32 }
%struct.manifest_desc = type { i64, i8*, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"manifest too small (%zu < %zu)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"descriptor too big (%zu > %zu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"invalid descriptor type (%u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"%s descriptor too small (%zu < %zu)\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"%s descriptor size mismatch (want %zu got %zu)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_interface*, %struct.greybus_descriptor*, i64)* @identify_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @identify_descriptor(%struct.gb_interface* %0, %struct.greybus_descriptor* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gb_interface*, align 8
  %6 = alloca %struct.greybus_descriptor*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.greybus_descriptor_header*, align 8
  %9 = alloca %struct.manifest_desc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.gb_interface* %0, %struct.gb_interface** %5, align 8
  store %struct.greybus_descriptor* %1, %struct.greybus_descriptor** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.greybus_descriptor*, %struct.greybus_descriptor** %6, align 8
  %13 = getelementptr inbounds %struct.greybus_descriptor, %struct.greybus_descriptor* %12, i32 0, i32 1
  store %struct.greybus_descriptor_header* %13, %struct.greybus_descriptor_header** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %14, 8
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.gb_interface*, %struct.gb_interface** %5, align 8
  %18 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %17, i32 0, i32 1
  %19 = load i64, i64* %7, align 8
  %20 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %19, i64 8)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %134

23:                                               ; preds = %3
  %24 = load %struct.greybus_descriptor_header*, %struct.greybus_descriptor_header** %8, align 8
  %25 = getelementptr inbounds %struct.greybus_descriptor_header, %struct.greybus_descriptor_header* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @le16_to_cpu(i32 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load %struct.gb_interface*, %struct.gb_interface** %5, align 8
  %33 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %32, i32 0, i32 1
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %34, i64 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %134

39:                                               ; preds = %23
  store i64 8, i64* %11, align 8
  %40 = load %struct.greybus_descriptor_header*, %struct.greybus_descriptor_header** %8, align 8
  %41 = getelementptr inbounds %struct.greybus_descriptor_header, %struct.greybus_descriptor_header* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %64 [
    i32 128, label %43
    i32 130, label %54
    i32 132, label %57
    i32 131, label %60
    i32 129, label %63
  ]

43:                                               ; preds = %39
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %44, 4
  store i64 %45, i64* %11, align 8
  %46 = load %struct.greybus_descriptor*, %struct.greybus_descriptor** %6, align 8
  %47 = getelementptr inbounds %struct.greybus_descriptor, %struct.greybus_descriptor* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i64 @ALIGN(i64 %52, i32 4)
  store i64 %53, i64* %11, align 8
  br label %74

54:                                               ; preds = %39
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %11, align 8
  br label %74

57:                                               ; preds = %39
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %58, 4
  store i64 %59, i64* %11, align 8
  br label %74

60:                                               ; preds = %39
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %61, 4
  store i64 %62, i64* %11, align 8
  br label %74

63:                                               ; preds = %39
  br label %64

64:                                               ; preds = %39, %63
  %65 = load %struct.gb_interface*, %struct.gb_interface** %5, align 8
  %66 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %65, i32 0, i32 1
  %67 = load %struct.greybus_descriptor_header*, %struct.greybus_descriptor_header** %8, align 8
  %68 = getelementptr inbounds %struct.greybus_descriptor_header, %struct.greybus_descriptor_header* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %134

74:                                               ; preds = %60, %57, %54, %43
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %11, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %74
  %79 = load %struct.gb_interface*, %struct.gb_interface** %5, align 8
  %80 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %79, i32 0, i32 1
  %81 = load %struct.greybus_descriptor_header*, %struct.greybus_descriptor_header** %8, align 8
  %82 = getelementptr inbounds %struct.greybus_descriptor_header, %struct.greybus_descriptor_header* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @get_descriptor_type_string(i32 %83)
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %11, align 8
  %88 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %85, i64 %86, i64 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %134

91:                                               ; preds = %74
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %11, align 8
  %94 = icmp ugt i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load %struct.gb_interface*, %struct.gb_interface** %5, align 8
  %97 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %96, i32 0, i32 1
  %98 = load %struct.greybus_descriptor_header*, %struct.greybus_descriptor_header** %8, align 8
  %99 = getelementptr inbounds %struct.greybus_descriptor_header, %struct.greybus_descriptor_header* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @get_descriptor_type_string(i32 %100)
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @dev_warn(i32* %97, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %101, i64 %102, i64 %103)
  br label %105

105:                                              ; preds = %95, %91
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call %struct.manifest_desc* @kzalloc(i32 24, i32 %106)
  store %struct.manifest_desc* %107, %struct.manifest_desc** %9, align 8
  %108 = load %struct.manifest_desc*, %struct.manifest_desc** %9, align 8
  %109 = icmp ne %struct.manifest_desc* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %134

113:                                              ; preds = %105
  %114 = load i64, i64* %10, align 8
  %115 = load %struct.manifest_desc*, %struct.manifest_desc** %9, align 8
  %116 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.greybus_descriptor*, %struct.greybus_descriptor** %6, align 8
  %118 = bitcast %struct.greybus_descriptor* %117 to i8*
  %119 = getelementptr inbounds i8, i8* %118, i64 8
  %120 = load %struct.manifest_desc*, %struct.manifest_desc** %9, align 8
  %121 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = load %struct.greybus_descriptor_header*, %struct.greybus_descriptor_header** %8, align 8
  %123 = getelementptr inbounds %struct.greybus_descriptor_header, %struct.greybus_descriptor_header* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.manifest_desc*, %struct.manifest_desc** %9, align 8
  %126 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load %struct.manifest_desc*, %struct.manifest_desc** %9, align 8
  %128 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %127, i32 0, i32 3
  %129 = load %struct.gb_interface*, %struct.gb_interface** %5, align 8
  %130 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %129, i32 0, i32 0
  %131 = call i32 @list_add_tail(i32* %128, i32* %130)
  %132 = load i64, i64* %10, align 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %113, %110, %78, %64, %31, %16
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @dev_err(i32*, i8*, i64, ...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @get_descriptor_type_string(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i64, i64) #1

declare dso_local %struct.manifest_desc* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
