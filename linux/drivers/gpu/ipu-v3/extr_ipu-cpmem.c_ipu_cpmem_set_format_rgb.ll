; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-cpmem.c_ipu_cpmem_set_format_rgb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-cpmem.c_ipu_cpmem_set_format_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipuv3_channel = type { i32 }
%struct.ipu_rgb = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@IPU_FIELD_WID0 = common dso_local global i32 0, align 4
@IPU_FIELD_OFS0 = common dso_local global i32 0, align 4
@IPU_FIELD_WID1 = common dso_local global i32 0, align 4
@IPU_FIELD_OFS1 = common dso_local global i32 0, align 4
@IPU_FIELD_WID2 = common dso_local global i32 0, align 4
@IPU_FIELD_OFS2 = common dso_local global i32 0, align 4
@IPU_FIELD_WID3 = common dso_local global i32 0, align 4
@IPU_FIELD_OFS3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPU_FIELD_BPP = common dso_local global i32 0, align 4
@IPU_FIELD_NPB = common dso_local global i32 0, align 4
@IPU_FIELD_PFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_cpmem_set_format_rgb(%struct.ipuv3_channel* %0, %struct.ipu_rgb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipuv3_channel*, align 8
  %5 = alloca %struct.ipu_rgb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ipuv3_channel* %0, %struct.ipuv3_channel** %4, align 8
  store %struct.ipu_rgb* %1, %struct.ipu_rgb** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.ipu_rgb*, %struct.ipu_rgb** %5, align 8
  %13 = getelementptr inbounds %struct.ipu_rgb, %struct.ipu_rgb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ipu_rgb*, %struct.ipu_rgb** %5, align 8
  %16 = getelementptr inbounds %struct.ipu_rgb, %struct.ipu_rgb* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %14, %18
  %20 = load %struct.ipu_rgb*, %struct.ipu_rgb** %5, align 8
  %21 = getelementptr inbounds %struct.ipu_rgb, %struct.ipu_rgb* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %19, %23
  store i32 %24, i32* %8, align 4
  %25 = load %struct.ipu_rgb*, %struct.ipu_rgb** %5, align 8
  %26 = getelementptr inbounds %struct.ipu_rgb, %struct.ipu_rgb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ipu_rgb*, %struct.ipu_rgb** %5, align 8
  %29 = getelementptr inbounds %struct.ipu_rgb, %struct.ipu_rgb* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %27, %31
  %33 = load %struct.ipu_rgb*, %struct.ipu_rgb** %5, align 8
  %34 = getelementptr inbounds %struct.ipu_rgb, %struct.ipu_rgb* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %32, %36
  store i32 %37, i32* %9, align 4
  %38 = load %struct.ipu_rgb*, %struct.ipu_rgb** %5, align 8
  %39 = getelementptr inbounds %struct.ipu_rgb, %struct.ipu_rgb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ipu_rgb*, %struct.ipu_rgb** %5, align 8
  %42 = getelementptr inbounds %struct.ipu_rgb, %struct.ipu_rgb* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %40, %44
  %46 = load %struct.ipu_rgb*, %struct.ipu_rgb** %5, align 8
  %47 = getelementptr inbounds %struct.ipu_rgb, %struct.ipu_rgb* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %45, %49
  store i32 %50, i32* %10, align 4
  %51 = load %struct.ipu_rgb*, %struct.ipu_rgb** %5, align 8
  %52 = getelementptr inbounds %struct.ipu_rgb, %struct.ipu_rgb* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ipu_rgb*, %struct.ipu_rgb** %5, align 8
  %55 = getelementptr inbounds %struct.ipu_rgb, %struct.ipu_rgb* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %53, %57
  %59 = load %struct.ipu_rgb*, %struct.ipu_rgb** %5, align 8
  %60 = getelementptr inbounds %struct.ipu_rgb, %struct.ipu_rgb* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %58, %62
  store i32 %63, i32* %11, align 4
  %64 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %65 = load i32, i32* @IPU_FIELD_WID0, align 4
  %66 = load %struct.ipu_rgb*, %struct.ipu_rgb** %5, align 8
  %67 = getelementptr inbounds %struct.ipu_rgb, %struct.ipu_rgb* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  %71 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %64, i32 %65, i32 %70)
  %72 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %73 = load i32, i32* @IPU_FIELD_OFS0, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %72, i32 %73, i32 %74)
  %76 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %77 = load i32, i32* @IPU_FIELD_WID1, align 4
  %78 = load %struct.ipu_rgb*, %struct.ipu_rgb** %5, align 8
  %79 = getelementptr inbounds %struct.ipu_rgb, %struct.ipu_rgb* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %76, i32 %77, i32 %82)
  %84 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %85 = load i32, i32* @IPU_FIELD_OFS1, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %84, i32 %85, i32 %86)
  %88 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %89 = load i32, i32* @IPU_FIELD_WID2, align 4
  %90 = load %struct.ipu_rgb*, %struct.ipu_rgb** %5, align 8
  %91 = getelementptr inbounds %struct.ipu_rgb, %struct.ipu_rgb* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %93, 1
  %95 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %88, i32 %89, i32 %94)
  %96 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %97 = load i32, i32* @IPU_FIELD_OFS2, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %96, i32 %97, i32 %98)
  %100 = load %struct.ipu_rgb*, %struct.ipu_rgb** %5, align 8
  %101 = getelementptr inbounds %struct.ipu_rgb, %struct.ipu_rgb* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %2
  %106 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %107 = load i32, i32* @IPU_FIELD_WID3, align 4
  %108 = load %struct.ipu_rgb*, %struct.ipu_rgb** %5, align 8
  %109 = getelementptr inbounds %struct.ipu_rgb, %struct.ipu_rgb* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, 1
  %113 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %106, i32 %107, i32 %112)
  %114 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %115 = load i32, i32* @IPU_FIELD_OFS3, align 4
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %114, i32 %115, i32 %116)
  br label %128

118:                                              ; preds = %2
  %119 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %120 = load i32, i32* @IPU_FIELD_WID3, align 4
  %121 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %119, i32 %120, i32 7)
  %122 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %123 = load i32, i32* @IPU_FIELD_OFS3, align 4
  %124 = load %struct.ipu_rgb*, %struct.ipu_rgb** %5, align 8
  %125 = getelementptr inbounds %struct.ipu_rgb, %struct.ipu_rgb* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %122, i32 %123, i32 %126)
  br label %128

128:                                              ; preds = %118, %105
  %129 = load %struct.ipu_rgb*, %struct.ipu_rgb** %5, align 8
  %130 = getelementptr inbounds %struct.ipu_rgb, %struct.ipu_rgb* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  switch i32 %131, label %136 [
    i32 32, label %132
    i32 24, label %133
    i32 16, label %134
    i32 8, label %135
  ]

132:                                              ; preds = %128
  store i32 0, i32* %6, align 4
  store i32 15, i32* %7, align 4
  br label %139

133:                                              ; preds = %128
  store i32 1, i32* %6, align 4
  store i32 19, i32* %7, align 4
  br label %139

134:                                              ; preds = %128
  store i32 3, i32* %6, align 4
  store i32 31, i32* %7, align 4
  br label %139

135:                                              ; preds = %128
  store i32 5, i32* %6, align 4
  store i32 63, i32* %7, align 4
  br label %139

136:                                              ; preds = %128
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %3, align 4
  br label %151

139:                                              ; preds = %135, %134, %133, %132
  %140 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %141 = load i32, i32* @IPU_FIELD_BPP, align 4
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %140, i32 %141, i32 %142)
  %144 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %145 = load i32, i32* @IPU_FIELD_NPB, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %144, i32 %145, i32 %146)
  %148 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %149 = load i32, i32* @IPU_FIELD_PFS, align 4
  %150 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %148, i32 %149, i32 7)
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %139, %136
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @ipu_ch_param_write_field(%struct.ipuv3_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
