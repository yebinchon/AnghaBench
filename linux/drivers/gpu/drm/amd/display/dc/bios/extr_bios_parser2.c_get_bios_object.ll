; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser2.c_get_bios_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser2.c_get_bios_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atom_display_object_path_v2 = type { i32, i32 }
%struct.bios_parser = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.atom_display_object_path_v2* }
%struct.graphics_object_id = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atom_display_object_path_v2* (%struct.bios_parser*, i64, i64)* @get_bios_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atom_display_object_path_v2* @get_bios_object(%struct.bios_parser* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.atom_display_object_path_v2*, align 8
  %5 = alloca %struct.graphics_object_id, align 4
  %6 = alloca %struct.bios_parser*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.graphics_object_id, align 4
  %9 = alloca %struct.graphics_object_id, align 4
  %10 = alloca %struct.graphics_object_id, align 4
  %11 = bitcast %struct.graphics_object_id* %5 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %1, i64* %12, align 4
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %2, i64* %13, align 4
  store %struct.bios_parser* %0, %struct.bios_parser** %6, align 8
  %14 = bitcast %struct.graphics_object_id* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %141 [
    i32 129, label %17
    i32 130, label %79
    i32 128, label %79
  ]

17:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %75, %17
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.bios_parser*, %struct.bios_parser** %6, align 8
  %21 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %19, %25
  br i1 %26, label %27, label %78

27:                                               ; preds = %18
  %28 = load %struct.bios_parser*, %struct.bios_parser** %6, align 8
  %29 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load %struct.atom_display_object_path_v2*, %struct.atom_display_object_path_v2** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.atom_display_object_path_v2, %struct.atom_display_object_path_v2* %33, i64 %35
  %37 = getelementptr inbounds %struct.atom_display_object_path_v2, %struct.atom_display_object_path_v2* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call { i64, i64 } @object_id_from_bios_object_id(i32 %38)
  %40 = bitcast %struct.graphics_object_id* %9 to { i64, i64 }*
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 0
  %42 = extractvalue { i64, i64 } %39, 0
  store i64 %42, i64* %41, align 4
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 1
  %44 = extractvalue { i64, i64 } %39, 1
  store i64 %44, i64* %43, align 4
  %45 = bitcast %struct.graphics_object_id* %8 to i8*
  %46 = bitcast %struct.graphics_object_id* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 16, i1 false)
  %47 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %27
  %53 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %5, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %8, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %5, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %8, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load %struct.bios_parser*, %struct.bios_parser** %6, align 8
  %66 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load %struct.atom_display_object_path_v2*, %struct.atom_display_object_path_v2** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.atom_display_object_path_v2, %struct.atom_display_object_path_v2* %70, i64 %72
  store %struct.atom_display_object_path_v2* %73, %struct.atom_display_object_path_v2** %4, align 8
  br label %142

74:                                               ; preds = %58, %52, %27
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %18

78:                                               ; preds = %18
  br label %79

79:                                               ; preds = %3, %3, %78
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %137, %79
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.bios_parser*, %struct.bios_parser** %6, align 8
  %83 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ult i32 %81, %87
  br i1 %88, label %89, label %140

89:                                               ; preds = %80
  %90 = load %struct.bios_parser*, %struct.bios_parser** %6, align 8
  %91 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load %struct.atom_display_object_path_v2*, %struct.atom_display_object_path_v2** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.atom_display_object_path_v2, %struct.atom_display_object_path_v2* %95, i64 %97
  %99 = getelementptr inbounds %struct.atom_display_object_path_v2, %struct.atom_display_object_path_v2* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call { i64, i64 } @object_id_from_bios_object_id(i32 %100)
  %102 = bitcast %struct.graphics_object_id* %10 to { i64, i64 }*
  %103 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %102, i32 0, i32 0
  %104 = extractvalue { i64, i64 } %101, 0
  store i64 %104, i64* %103, align 4
  %105 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %102, i32 0, i32 1
  %106 = extractvalue { i64, i64 } %101, 1
  store i64 %106, i64* %105, align 4
  %107 = bitcast %struct.graphics_object_id* %8 to i8*
  %108 = bitcast %struct.graphics_object_id* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %107, i8* align 4 %108, i64 16, i1 false)
  %109 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %5, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %8, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %136

114:                                              ; preds = %89
  %115 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %5, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %8, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %5, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %8, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %120
  %127 = load %struct.bios_parser*, %struct.bios_parser** %6, align 8
  %128 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load %struct.atom_display_object_path_v2*, %struct.atom_display_object_path_v2** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.atom_display_object_path_v2, %struct.atom_display_object_path_v2* %132, i64 %134
  store %struct.atom_display_object_path_v2* %135, %struct.atom_display_object_path_v2** %4, align 8
  br label %142

136:                                              ; preds = %120, %114, %89
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %7, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %80

140:                                              ; preds = %80
  br label %141

141:                                              ; preds = %3, %140
  store %struct.atom_display_object_path_v2* null, %struct.atom_display_object_path_v2** %4, align 8
  br label %142

142:                                              ; preds = %141, %126, %64
  %143 = load %struct.atom_display_object_path_v2*, %struct.atom_display_object_path_v2** %4, align 8
  ret %struct.atom_display_object_path_v2* %143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local { i64, i64 } @object_id_from_bios_object_id(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
