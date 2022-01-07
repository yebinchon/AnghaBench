; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane.c_create_in_format_blob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane.c_create_in_format_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_mode_config }
%struct.drm_mode_config = type { i32 }
%struct.drm_plane = type { i32, i32, i32, i32*, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.drm_plane*, i32, i32)* }
%struct.drm_property_blob = type { %struct.TYPE_4__, %struct.drm_format_modifier_blob* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_format_modifier_blob = type { i32, i32, i32, i64, i32 }
%struct.drm_format_modifier = type { i64, i64, i64, i32 }

@FORMAT_BLOB_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_plane*)* @create_in_format_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_in_format_blob(%struct.drm_device* %0, %struct.drm_plane* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_plane*, align 8
  %6 = alloca %struct.drm_mode_config*, align 8
  %7 = alloca %struct.drm_property_blob*, align 8
  %8 = alloca %struct.drm_format_modifier*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.drm_format_modifier_blob*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_plane* %1, %struct.drm_plane** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  store %struct.drm_mode_config* %16, %struct.drm_mode_config** %6, align 8
  %17 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %18 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %174

29:                                               ; preds = %2
  %30 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %31 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 32, %33
  store i64 %34, i64* %11, align 8
  store i64 32, i64* %9, align 8
  %35 = call i32 @BUILD_BUG_ON(i32 0)
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @ALIGN(i64 %36, i32 8)
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %9, align 8
  %43 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call %struct.drm_property_blob* @drm_property_create_blob(%struct.drm_device* %43, i64 %44, i32* null)
  store %struct.drm_property_blob* %45, %struct.drm_property_blob** %7, align 8
  %46 = load %struct.drm_property_blob*, %struct.drm_property_blob** %7, align 8
  %47 = call i64 @IS_ERR(%struct.drm_property_blob* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %174

50:                                               ; preds = %29
  %51 = load %struct.drm_property_blob*, %struct.drm_property_blob** %7, align 8
  %52 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %51, i32 0, i32 1
  %53 = load %struct.drm_format_modifier_blob*, %struct.drm_format_modifier_blob** %52, align 8
  store %struct.drm_format_modifier_blob* %53, %struct.drm_format_modifier_blob** %12, align 8
  %54 = load i32, i32* @FORMAT_BLOB_CURRENT, align 4
  %55 = load %struct.drm_format_modifier_blob*, %struct.drm_format_modifier_blob** %12, align 8
  %56 = getelementptr inbounds %struct.drm_format_modifier_blob, %struct.drm_format_modifier_blob* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %58 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.drm_format_modifier_blob*, %struct.drm_format_modifier_blob** %12, align 8
  %61 = getelementptr inbounds %struct.drm_format_modifier_blob, %struct.drm_format_modifier_blob* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.drm_format_modifier_blob*, %struct.drm_format_modifier_blob** %12, align 8
  %63 = getelementptr inbounds %struct.drm_format_modifier_blob, %struct.drm_format_modifier_blob* %62, i32 0, i32 1
  store i32 32, i32* %63, align 4
  %64 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %65 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.drm_format_modifier_blob*, %struct.drm_format_modifier_blob** %12, align 8
  %68 = getelementptr inbounds %struct.drm_format_modifier_blob, %struct.drm_format_modifier_blob* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.drm_format_modifier_blob*, %struct.drm_format_modifier_blob** %12, align 8
  %70 = getelementptr inbounds %struct.drm_format_modifier_blob, %struct.drm_format_modifier_blob* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %72, %73
  %75 = call i64 @ALIGN(i64 %74, i32 8)
  %76 = load %struct.drm_format_modifier_blob*, %struct.drm_format_modifier_blob** %12, align 8
  %77 = getelementptr inbounds %struct.drm_format_modifier_blob, %struct.drm_format_modifier_blob* %76, i32 0, i32 3
  store i64 %75, i64* %77, align 8
  %78 = load %struct.drm_format_modifier_blob*, %struct.drm_format_modifier_blob** %12, align 8
  %79 = call i32 @formats_ptr(%struct.drm_format_modifier_blob* %78)
  %80 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %81 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @memcpy(i32 %79, i32* %82, i64 %83)
  %85 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %86 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %85, i32 0, i32 5
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64 (%struct.drm_plane*, i32, i32)*, i64 (%struct.drm_plane*, i32, i32)** %88, align 8
  %90 = icmp ne i64 (%struct.drm_plane*, i32, i32)* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %50
  br label %163

92:                                               ; preds = %50
  %93 = load %struct.drm_format_modifier_blob*, %struct.drm_format_modifier_blob** %12, align 8
  %94 = call %struct.drm_format_modifier* @modifiers_ptr(%struct.drm_format_modifier_blob* %93)
  store %struct.drm_format_modifier* %94, %struct.drm_format_modifier** %8, align 8
  store i32 0, i32* %13, align 4
  br label %95

95:                                               ; preds = %159, %92
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %98 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ult i32 %96, %99
  br i1 %100, label %101, label %162

101:                                              ; preds = %95
  store i32 0, i32* %14, align 4
  br label %102

102:                                              ; preds = %140, %101
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %105 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ult i32 %103, %106
  br i1 %107, label %108, label %143

108:                                              ; preds = %102
  %109 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %110 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %109, i32 0, i32 5
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i64 (%struct.drm_plane*, i32, i32)*, i64 (%struct.drm_plane*, i32, i32)** %112, align 8
  %114 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %115 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %116 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %115, i32 0, i32 4
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %123 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i64 %113(%struct.drm_plane* %114, i32 %121, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %108
  %132 = load i32, i32* %14, align 4
  %133 = zext i32 %132 to i64
  %134 = shl i64 1, %133
  %135 = load %struct.drm_format_modifier*, %struct.drm_format_modifier** %8, align 8
  %136 = getelementptr inbounds %struct.drm_format_modifier, %struct.drm_format_modifier* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = or i64 %137, %134
  store i64 %138, i64* %136, align 8
  br label %139

139:                                              ; preds = %131, %108
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %14, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %14, align 4
  br label %102

143:                                              ; preds = %102
  %144 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %145 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %13, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.drm_format_modifier*, %struct.drm_format_modifier** %8, align 8
  %152 = getelementptr inbounds %struct.drm_format_modifier, %struct.drm_format_modifier* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 8
  %153 = load %struct.drm_format_modifier*, %struct.drm_format_modifier** %8, align 8
  %154 = getelementptr inbounds %struct.drm_format_modifier, %struct.drm_format_modifier* %153, i32 0, i32 2
  store i64 0, i64* %154, align 8
  %155 = load %struct.drm_format_modifier*, %struct.drm_format_modifier** %8, align 8
  %156 = getelementptr inbounds %struct.drm_format_modifier, %struct.drm_format_modifier* %155, i32 0, i32 1
  store i64 0, i64* %156, align 8
  %157 = load %struct.drm_format_modifier*, %struct.drm_format_modifier** %8, align 8
  %158 = getelementptr inbounds %struct.drm_format_modifier, %struct.drm_format_modifier* %157, i32 1
  store %struct.drm_format_modifier* %158, %struct.drm_format_modifier** %8, align 8
  br label %159

159:                                              ; preds = %143
  %160 = load i32, i32* %13, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %13, align 4
  br label %95

162:                                              ; preds = %95
  br label %163

163:                                              ; preds = %162, %91
  %164 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %165 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %164, i32 0, i32 2
  %166 = load %struct.drm_mode_config*, %struct.drm_mode_config** %6, align 8
  %167 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.drm_property_blob*, %struct.drm_property_blob** %7, align 8
  %170 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @drm_object_attach_property(i32* %165, i32 %168, i32 %172)
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %163, %49, %28
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local %struct.drm_property_blob* @drm_property_create_blob(%struct.drm_device*, i64, i32*) #1

declare dso_local i64 @IS_ERR(%struct.drm_property_blob*) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @formats_ptr(%struct.drm_format_modifier_blob*) #1

declare dso_local %struct.drm_format_modifier* @modifiers_ptr(%struct.drm_format_modifier_blob*) #1

declare dso_local i32 @drm_object_attach_property(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
