; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atomfirmware.c_amdgpu_atomfirmware_get_gfx_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atomfirmware.c_amdgpu_atomfirmware_get_gfx_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.amdgpu_mode_info }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i8*, i32, i8*, i8* }
%struct.TYPE_6__ = type { i32, i8*, i32, i32, i8*, i32, i32, i32, i32, i32 }
%struct.amdgpu_mode_info = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%union.gfx_info = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@atom_master_list_of_data_tables_v2_1 = common dso_local global i32 0, align 4
@gfx_info = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atomfirmware_get_gfx_info(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_mode_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %union.gfx_info*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 1
  store %struct.amdgpu_mode_info* %11, %struct.amdgpu_mode_info** %4, align 8
  %12 = load i32, i32* @atom_master_list_of_data_tables_v2_1, align 4
  %13 = load i32, i32* @gfx_info, align 4
  %14 = call i32 @get_index_into_master_table(i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %16 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @amdgpu_atom_parse_data_header(%struct.TYPE_10__* %17, i32 %18, i32* null, i32* %6, i32* %7, i64* %8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %152

21:                                               ; preds = %1
  %22 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %23 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = add nsw i64 %26, %27
  %29 = inttoptr i64 %28 to %union.gfx_info*
  store %union.gfx_info* %29, %union.gfx_info** %9, align 8
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %149 [
    i32 4, label %31
  ]

31:                                               ; preds = %21
  %32 = load %union.gfx_info*, %union.gfx_info** %9, align 8
  %33 = bitcast %union.gfx_info* %32 to %struct.TYPE_9__*
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 13
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 9
  store i32 %35, i32* %39, align 8
  %40 = load %union.gfx_info*, %union.gfx_info** %9, align 8
  %41 = bitcast %union.gfx_info* %40 to %struct.TYPE_9__*
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 12
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 8
  store i32 %43, i32* %47, align 4
  %48 = load %union.gfx_info*, %union.gfx_info** %9, align 8
  %49 = bitcast %union.gfx_info* %48 to %struct.TYPE_9__*
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 11
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 7
  store i32 %51, i32* %55, align 8
  %56 = load %union.gfx_info*, %union.gfx_info** %9, align 8
  %57 = bitcast %union.gfx_info* %56 to %struct.TYPE_9__*
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 10
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 6
  store i32 %59, i32* %63, align 4
  %64 = load %union.gfx_info*, %union.gfx_info** %9, align 8
  %65 = bitcast %union.gfx_info* %64 to %struct.TYPE_9__*
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %69 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 5
  store i32 %67, i32* %71, align 8
  %72 = load %union.gfx_info*, %union.gfx_info** %9, align 8
  %73 = bitcast %union.gfx_info* %72 to %struct.TYPE_9__*
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @le16_to_cpu(i32 %75)
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 4
  store i8* %76, i8** %80, align 8
  %81 = load %union.gfx_info*, %union.gfx_info** %9, align 8
  %82 = bitcast %union.gfx_info* %81 to %struct.TYPE_9__*
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %86 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  store i32 %84, i32* %88, align 4
  %89 = load %union.gfx_info*, %union.gfx_info** %9, align 8
  %90 = bitcast %union.gfx_info* %89 to %struct.TYPE_9__*
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  store i32 %92, i32* %96, align 8
  %97 = load %union.gfx_info*, %union.gfx_info** %9, align 8
  %98 = bitcast %union.gfx_info* %97 to %struct.TYPE_9__*
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @le16_to_cpu(i32 %100)
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %103 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  store i8* %101, i8** %105, align 8
  %106 = load %union.gfx_info*, %union.gfx_info** %9, align 8
  %107 = bitcast %union.gfx_info* %106 to %struct.TYPE_9__*
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %111 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store i32 %109, i32* %113, align 8
  %114 = load %union.gfx_info*, %union.gfx_info** %9, align 8
  %115 = bitcast %union.gfx_info* %114 to %struct.TYPE_9__*
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @le16_to_cpu(i32 %117)
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %120 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  store i8* %118, i8** %122, align 8
  %123 = load %union.gfx_info*, %union.gfx_info** %9, align 8
  %124 = bitcast %union.gfx_info* %123 to %struct.TYPE_9__*
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @le16_to_cpu(i32 %126)
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %129 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  store i8* %127, i8** %131, align 8
  %132 = load %union.gfx_info*, %union.gfx_info** %9, align 8
  %133 = bitcast %union.gfx_info* %132 to %struct.TYPE_9__*
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %137 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  store i32 %135, i32* %139, align 8
  %140 = load %union.gfx_info*, %union.gfx_info** %9, align 8
  %141 = bitcast %union.gfx_info* %140 to %struct.TYPE_9__*
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @le16_to_cpu(i32 %143)
  %145 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %146 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  store i8* %144, i8** %148, align 8
  store i32 0, i32* %2, align 4
  br label %155

149:                                              ; preds = %21
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %2, align 4
  br label %155

152:                                              ; preds = %1
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %152, %149, %31
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @get_index_into_master_table(i32, i32) #1

declare dso_local i64 @amdgpu_atom_parse_data_header(%struct.TYPE_10__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
