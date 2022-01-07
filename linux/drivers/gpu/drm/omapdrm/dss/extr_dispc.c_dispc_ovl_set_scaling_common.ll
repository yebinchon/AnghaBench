; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_set_scaling_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_set_scaling_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }

@DISPC_COLOR_COMPONENT_RGB_Y = common dso_local global i32 0, align 4
@FEAT_RESIZECONF = common dso_local global i32 0, align 4
@FEAT_LINEBUFFERSPLIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32)* @dispc_ovl_set_scaling_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_ovl_set_scaling_common(%struct.dispc_device* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.dispc_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %12, align 8
  store i32 %1, i32* %13, align 4
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %26 = load %struct.dispc_device*, %struct.dispc_device** %12, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load i64, i64* %14, align 8
  %29 = load i64, i64* %15, align 8
  %30 = load i64, i64* %16, align 8
  %31 = load i64, i64* %17, align 8
  %32 = load i32, i32* %19, align 4
  %33 = load i32, i32* %22, align 4
  %34 = load i32, i32* @DISPC_COLOR_COMPONENT_RGB_Y, align 4
  %35 = call i32 @dispc_ovl_set_scale_param(%struct.dispc_device* %26, i32 %27, i64 %28, i64 %29, i64 %30, i64 %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.dispc_device*, %struct.dispc_device** %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %37)
  %39 = call i32 @dispc_read_reg(%struct.dispc_device* %36, i32 %38)
  store i32 %39, i32* %25, align 4
  %40 = load i32, i32* %25, align 4
  %41 = and i32 %40, -2097249
  store i32 %41, i32* %25, align 4
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* %16, align 8
  %44 = icmp ne i64 %42, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 32, i32 0
  %47 = load i32, i32* %25, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %25, align 4
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* %17, align 8
  %51 = icmp ne i64 %49, %50
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 64, i32 0
  %54 = load i32, i32* %25, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %25, align 4
  %56 = load i32, i32* %19, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 2097152, i32 0
  %60 = load i32, i32* %25, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %25, align 4
  %62 = load %struct.dispc_device*, %struct.dispc_device** %12, align 8
  %63 = load i32, i32* @FEAT_RESIZECONF, align 4
  %64 = call i64 @dispc_has_feature(%struct.dispc_device* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %11
  %67 = load i32, i32* %25, align 4
  %68 = and i32 %67, -385
  store i32 %68, i32* %25, align 4
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %16, align 8
  %71 = icmp sle i64 %69, %70
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 0, i32 128
  %74 = load i32, i32* %25, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %25, align 4
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* %17, align 8
  %78 = icmp sle i64 %76, %77
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 0, i32 256
  %81 = load i32, i32* %25, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %25, align 4
  br label %83

83:                                               ; preds = %66, %11
  %84 = load %struct.dispc_device*, %struct.dispc_device** %12, align 8
  %85 = load i32, i32* @FEAT_LINEBUFFERSPLIT, align 4
  %86 = call i64 @dispc_has_feature(%struct.dispc_device* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = load i32, i32* %25, align 4
  %90 = and i32 %89, -4194305
  store i32 %90, i32* %25, align 4
  %91 = load i32, i32* %19, align 4
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 4194304, i32 0
  %95 = load i32, i32* %25, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %25, align 4
  br label %97

97:                                               ; preds = %88, %83
  %98 = load %struct.dispc_device*, %struct.dispc_device** %12, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %99)
  %101 = load i32, i32* %25, align 4
  %102 = call i32 @dispc_write_reg(%struct.dispc_device* %98, i32 %100, i32 %101)
  %103 = load i32, i32* %18, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %97
  %106 = load i32, i32* %20, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %123, label %108

108:                                              ; preds = %105
  store i32 0, i32* %24, align 4
  %109 = load i64, i64* %15, align 8
  %110 = mul nsw i64 1024, %109
  %111 = load i64, i64* %17, align 8
  %112 = sdiv i64 %110, %111
  %113 = sdiv i64 %112, 2
  %114 = and i64 %113, 1023
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %23, align 4
  %116 = load i32, i32* %23, align 4
  %117 = icmp sge i32 %116, 512
  br i1 %117, label %118, label %122

118:                                              ; preds = %108
  store i32 512, i32* %24, align 4
  %119 = load i32, i32* %24, align 4
  %120 = load i32, i32* %23, align 4
  %121 = sub nsw i32 %120, %119
  store i32 %121, i32* %23, align 4
  br label %122

122:                                              ; preds = %118, %108
  br label %123

123:                                              ; preds = %122, %105, %97
  %124 = load %struct.dispc_device*, %struct.dispc_device** %12, align 8
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %23, align 4
  %127 = call i32 @dispc_ovl_set_vid_accu0(%struct.dispc_device* %124, i32 %125, i32 0, i32 %126)
  %128 = load %struct.dispc_device*, %struct.dispc_device** %12, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %24, align 4
  %131 = call i32 @dispc_ovl_set_vid_accu1(%struct.dispc_device* %128, i32 %129, i32 0, i32 %130)
  ret void
}

declare dso_local i32 @dispc_ovl_set_scale_param(%struct.dispc_device*, i32, i64, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @dispc_read_reg(%struct.dispc_device*, i32) #1

declare dso_local i32 @DISPC_OVL_ATTRIBUTES(i32) #1

declare dso_local i64 @dispc_has_feature(%struct.dispc_device*, i32) #1

declare dso_local i32 @dispc_write_reg(%struct.dispc_device*, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_vid_accu0(%struct.dispc_device*, i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_vid_accu1(%struct.dispc_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
