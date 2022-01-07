; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_new_mmio_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_new_mmio_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gvt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32* }
%struct.intel_gvt_mmio_info = type { i32, i32, i8*, i8*, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"dup mmio definition offset %x\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@intel_vgpu_default_mmio_read = common dso_local global i8* null, align 8
@intel_vgpu_default_mmio_write = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_gvt*, i64, i32, i64, i64, i64, i64, i8*, i8*)* @new_mmio_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_mmio_info(%struct.intel_gvt* %0, i64 %1, i32 %2, i64 %3, i64 %4, i64 %5, i64 %6, i8* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.intel_gvt*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.intel_gvt_mmio_info*, align 8
  %21 = alloca %struct.intel_gvt_mmio_info*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.intel_gvt* %0, %struct.intel_gvt** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32 %2, i32* %13, align 4
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  %25 = load %struct.intel_gvt*, %struct.intel_gvt** %11, align 8
  %26 = load i64, i64* %17, align 8
  %27 = call i32 @intel_gvt_match_device(%struct.intel_gvt* %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %9
  store i32 0, i32* %10, align 4
  br label %140

30:                                               ; preds = %9
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @IS_ALIGNED(i64 %31, i32 4)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %10, align 4
  br label %140

41:                                               ; preds = %30
  %42 = load i64, i64* %12, align 8
  store i64 %42, i64* %22, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %14, align 8
  %45 = add nsw i64 %43, %44
  store i64 %45, i64* %23, align 8
  %46 = load i64, i64* %22, align 8
  store i64 %46, i64* %24, align 8
  br label %47

47:                                               ; preds = %136, %41
  %48 = load i64, i64* %24, align 8
  %49 = load i64, i64* %23, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %139

51:                                               ; preds = %47
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.intel_gvt_mmio_info* @kzalloc(i32 40, i32 %52)
  store %struct.intel_gvt_mmio_info* %53, %struct.intel_gvt_mmio_info** %20, align 8
  %54 = load %struct.intel_gvt_mmio_info*, %struct.intel_gvt_mmio_info** %20, align 8
  %55 = icmp ne %struct.intel_gvt_mmio_info* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %10, align 4
  br label %140

59:                                               ; preds = %51
  %60 = load i64, i64* %24, align 8
  %61 = trunc i64 %60 to i32
  %62 = load %struct.intel_gvt_mmio_info*, %struct.intel_gvt_mmio_info** %20, align 8
  %63 = getelementptr inbounds %struct.intel_gvt_mmio_info, %struct.intel_gvt_mmio_info* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.intel_gvt*, %struct.intel_gvt** %11, align 8
  %65 = load %struct.intel_gvt_mmio_info*, %struct.intel_gvt_mmio_info** %20, align 8
  %66 = getelementptr inbounds %struct.intel_gvt_mmio_info, %struct.intel_gvt_mmio_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.intel_gvt_mmio_info* @find_mmio_info(%struct.intel_gvt* %64, i32 %67)
  store %struct.intel_gvt_mmio_info* %68, %struct.intel_gvt_mmio_info** %21, align 8
  %69 = load %struct.intel_gvt_mmio_info*, %struct.intel_gvt_mmio_info** %21, align 8
  %70 = icmp ne %struct.intel_gvt_mmio_info* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %59
  %72 = load %struct.intel_gvt_mmio_info*, %struct.intel_gvt_mmio_info** %20, align 8
  %73 = getelementptr inbounds %struct.intel_gvt_mmio_info, %struct.intel_gvt_mmio_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load %struct.intel_gvt_mmio_info*, %struct.intel_gvt_mmio_info** %20, align 8
  %77 = call i32 @kfree(%struct.intel_gvt_mmio_info* %76)
  %78 = load i32, i32* @EEXIST, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %10, align 4
  br label %140

80:                                               ; preds = %59
  %81 = load i64, i64* %16, align 8
  %82 = load %struct.intel_gvt_mmio_info*, %struct.intel_gvt_mmio_info** %20, align 8
  %83 = getelementptr inbounds %struct.intel_gvt_mmio_info, %struct.intel_gvt_mmio_info* %82, i32 0, i32 5
  store i64 %81, i64* %83, align 8
  %84 = load i64, i64* %17, align 8
  %85 = load %struct.intel_gvt_mmio_info*, %struct.intel_gvt_mmio_info** %20, align 8
  %86 = getelementptr inbounds %struct.intel_gvt_mmio_info, %struct.intel_gvt_mmio_info* %85, i32 0, i32 4
  store i64 %84, i64* %86, align 8
  %87 = load i8*, i8** %18, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = load i8*, i8** %18, align 8
  br label %93

91:                                               ; preds = %80
  %92 = load i8*, i8** @intel_vgpu_default_mmio_read, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i8* [ %90, %89 ], [ %92, %91 ]
  %95 = load %struct.intel_gvt_mmio_info*, %struct.intel_gvt_mmio_info** %20, align 8
  %96 = getelementptr inbounds %struct.intel_gvt_mmio_info, %struct.intel_gvt_mmio_info* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** %19, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i8*, i8** %19, align 8
  br label %103

101:                                              ; preds = %93
  %102 = load i8*, i8** @intel_vgpu_default_mmio_write, align 8
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i8* [ %100, %99 ], [ %102, %101 ]
  %105 = load %struct.intel_gvt_mmio_info*, %struct.intel_gvt_mmio_info** %20, align 8
  %106 = getelementptr inbounds %struct.intel_gvt_mmio_info, %struct.intel_gvt_mmio_info* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.intel_gvt*, %struct.intel_gvt** %11, align 8
  %109 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.intel_gvt_mmio_info*, %struct.intel_gvt_mmio_info** %20, align 8
  %113 = getelementptr inbounds %struct.intel_gvt_mmio_info, %struct.intel_gvt_mmio_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sdiv i32 %114, 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %111, i64 %116
  store i32 %107, i32* %117, align 4
  %118 = load %struct.intel_gvt_mmio_info*, %struct.intel_gvt_mmio_info** %20, align 8
  %119 = getelementptr inbounds %struct.intel_gvt_mmio_info, %struct.intel_gvt_mmio_info* %118, i32 0, i32 1
  %120 = call i32 @INIT_HLIST_NODE(i32* %119)
  %121 = load %struct.intel_gvt*, %struct.intel_gvt** %11, align 8
  %122 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.intel_gvt_mmio_info*, %struct.intel_gvt_mmio_info** %20, align 8
  %126 = getelementptr inbounds %struct.intel_gvt_mmio_info, %struct.intel_gvt_mmio_info* %125, i32 0, i32 1
  %127 = load %struct.intel_gvt_mmio_info*, %struct.intel_gvt_mmio_info** %20, align 8
  %128 = getelementptr inbounds %struct.intel_gvt_mmio_info, %struct.intel_gvt_mmio_info* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @hash_add(i32 %124, i32* %126, i32 %129)
  %131 = load %struct.intel_gvt*, %struct.intel_gvt** %11, align 8
  %132 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %103
  %137 = load i64, i64* %24, align 8
  %138 = add nsw i64 %137, 4
  store i64 %138, i64* %24, align 8
  br label %47

139:                                              ; preds = %47
  store i32 0, i32* %10, align 4
  br label %140

140:                                              ; preds = %139, %71, %56, %38, %29
  %141 = load i32, i32* %10, align 4
  ret i32 %141
}

declare dso_local i32 @intel_gvt_match_device(%struct.intel_gvt*, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local %struct.intel_gvt_mmio_info* @kzalloc(i32, i32) #1

declare dso_local %struct.intel_gvt_mmio_info* @find_mmio_info(%struct.intel_gvt*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.intel_gvt_mmio_info*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @hash_add(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
