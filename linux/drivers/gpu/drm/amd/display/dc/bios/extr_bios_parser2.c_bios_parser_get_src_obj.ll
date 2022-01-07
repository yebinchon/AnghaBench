; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser2.c_bios_parser_get_src_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser2.c_bios_parser_get_src_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_bios = type { i32 }
%struct.graphics_object_id = type { i32, i32, i32, i32 }
%struct.bios_parser = type { %struct.object_info_table }
%struct.object_info_table = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@BP_RESULT_BADINPUT = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_bios*, i64, i64, i32, %struct.graphics_object_id*)* @bios_parser_get_src_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bios_parser_get_src_obj(%struct.dc_bios* %0, i64 %1, i64 %2, i32 %3, %struct.graphics_object_id* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.graphics_object_id, align 4
  %8 = alloca %struct.dc_bios*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.graphics_object_id*, align 8
  %11 = alloca %struct.bios_parser*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.graphics_object_id, align 4
  %15 = alloca %struct.object_info_table*, align 8
  %16 = alloca %struct.graphics_object_id, align 4
  %17 = alloca %struct.graphics_object_id, align 4
  %18 = alloca %struct.graphics_object_id, align 4
  %19 = alloca %struct.graphics_object_id, align 4
  %20 = bitcast %struct.graphics_object_id* %7 to { i64, i64 }*
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0
  store i64 %1, i64* %21, align 4
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1
  store i64 %2, i64* %22, align 4
  store %struct.dc_bios* %0, %struct.dc_bios** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.graphics_object_id* %4, %struct.graphics_object_id** %10, align 8
  %23 = load %struct.dc_bios*, %struct.dc_bios** %8, align 8
  %24 = call %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios* %23)
  store %struct.bios_parser* %24, %struct.bios_parser** %11, align 8
  %25 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %25, i32* %13, align 4
  %26 = bitcast %struct.graphics_object_id* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 16, i1 false)
  %27 = load %struct.bios_parser*, %struct.bios_parser** %11, align 8
  %28 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %27, i32 0, i32 0
  store %struct.object_info_table* %28, %struct.object_info_table** %15, align 8
  %29 = load %struct.graphics_object_id*, %struct.graphics_object_id** %10, align 8
  %30 = icmp ne %struct.graphics_object_id* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %6, align 4
  br label %171

33:                                               ; preds = %5
  %34 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %168 [
    i32 128, label %36
    i32 129, label %97
  ]

36:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %92, %36
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.object_info_table*, %struct.object_info_table** %15, align 8
  %40 = getelementptr inbounds %struct.object_info_table, %struct.object_info_table* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ult i32 %38, %43
  br i1 %44, label %45, label %95

45:                                               ; preds = %37
  %46 = load %struct.object_info_table*, %struct.object_info_table** %15, align 8
  %47 = getelementptr inbounds %struct.object_info_table, %struct.object_info_table* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call { i64, i64 } @object_id_from_bios_object_id(i32 %55)
  %57 = bitcast %struct.graphics_object_id* %16 to { i64, i64 }*
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 0
  %59 = extractvalue { i64, i64 } %56, 0
  store i64 %59, i64* %58, align 4
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 1
  %61 = extractvalue { i64, i64 } %56, 1
  store i64 %61, i64* %60, align 4
  %62 = bitcast %struct.graphics_object_id* %14 to i8*
  %63 = bitcast %struct.graphics_object_id* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 16, i1 false)
  %64 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %7, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %14, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %45
  %70 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %7, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %14, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %7, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %14, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load %struct.graphics_object_id*, %struct.graphics_object_id** %10, align 8
  %83 = call { i64, i64 } @object_id_from_bios_object_id(i32 4352)
  %84 = bitcast %struct.graphics_object_id* %17 to { i64, i64 }*
  %85 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %84, i32 0, i32 0
  %86 = extractvalue { i64, i64 } %83, 0
  store i64 %86, i64* %85, align 4
  %87 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %84, i32 0, i32 1
  %88 = extractvalue { i64, i64 } %83, 1
  store i64 %88, i64* %87, align 4
  %89 = bitcast %struct.graphics_object_id* %82 to i8*
  %90 = bitcast %struct.graphics_object_id* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 16, i1 false)
  br label %91

91:                                               ; preds = %81, %75, %69, %45
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %12, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %37

95:                                               ; preds = %37
  %96 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %96, i32* %13, align 4
  br label %169

97:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  br label %98

98:                                               ; preds = %163, %97
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.object_info_table*, %struct.object_info_table** %15, align 8
  %101 = getelementptr inbounds %struct.object_info_table, %struct.object_info_table* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ult i32 %99, %104
  br i1 %105, label %106, label %166

106:                                              ; preds = %98
  %107 = load %struct.object_info_table*, %struct.object_info_table** %15, align 8
  %108 = getelementptr inbounds %struct.object_info_table, %struct.object_info_table* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call { i64, i64 } @object_id_from_bios_object_id(i32 %116)
  %118 = bitcast %struct.graphics_object_id* %18 to { i64, i64 }*
  %119 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %118, i32 0, i32 0
  %120 = extractvalue { i64, i64 } %117, 0
  store i64 %120, i64* %119, align 4
  %121 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %118, i32 0, i32 1
  %122 = extractvalue { i64, i64 } %117, 1
  store i64 %122, i64* %121, align 4
  %123 = bitcast %struct.graphics_object_id* %14 to i8*
  %124 = bitcast %struct.graphics_object_id* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 4 %124, i64 16, i1 false)
  %125 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %7, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %14, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %162

130:                                              ; preds = %106
  %131 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %7, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %14, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %132, %134
  br i1 %135, label %136, label %162

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %7, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %14, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %138, %140
  br i1 %141, label %142, label %162

142:                                              ; preds = %136
  %143 = load %struct.graphics_object_id*, %struct.graphics_object_id** %10, align 8
  %144 = load %struct.object_info_table*, %struct.object_info_table** %15, align 8
  %145 = getelementptr inbounds %struct.object_info_table, %struct.object_info_table* %144, i32 0, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = load i32, i32* %12, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call { i64, i64 } @object_id_from_bios_object_id(i32 %153)
  %155 = bitcast %struct.graphics_object_id* %19 to { i64, i64 }*
  %156 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %155, i32 0, i32 0
  %157 = extractvalue { i64, i64 } %154, 0
  store i64 %157, i64* %156, align 4
  %158 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %155, i32 0, i32 1
  %159 = extractvalue { i64, i64 } %154, 1
  store i64 %159, i64* %158, align 4
  %160 = bitcast %struct.graphics_object_id* %143 to i8*
  %161 = bitcast %struct.graphics_object_id* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %160, i8* align 4 %161, i64 16, i1 false)
  br label %162

162:                                              ; preds = %142, %136, %130, %106
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %12, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %12, align 4
  br label %98

166:                                              ; preds = %98
  %167 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %167, i32* %13, align 4
  br label %169

168:                                              ; preds = %33
  br label %169

169:                                              ; preds = %168, %166, %95
  %170 = load i32, i32* %13, align 4
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %169, %31
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local { i64, i64 } @object_id_from_bios_object_id(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
