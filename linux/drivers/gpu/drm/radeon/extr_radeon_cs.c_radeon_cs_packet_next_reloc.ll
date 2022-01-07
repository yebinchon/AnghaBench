; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_packet_next_reloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_packet_next_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { %struct.radeon_bo_list*, i32, %struct.radeon_cs_chunk* }
%struct.radeon_bo_list = type { i32 }
%struct.radeon_cs_chunk = type { i32, i32* }
%struct.radeon_cs_packet = type { i64, i64, i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"No relocation chunk !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_PACKET_TYPE3 = common dso_local global i64 0, align 8
@RADEON_PACKET3_NOP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"No packet3 for relocation for packet at %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Relocs at %d after relocations chunk end %d !\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %0, %struct.radeon_bo_list** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_cs_parser*, align 8
  %6 = alloca %struct.radeon_bo_list**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_cs_chunk*, align 8
  %9 = alloca %struct.radeon_cs_packet, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %5, align 8
  store %struct.radeon_bo_list** %1, %struct.radeon_bo_list*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %13 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %12, i32 0, i32 2
  %14 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %13, align 8
  %15 = icmp eq %struct.radeon_cs_chunk* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %125

20:                                               ; preds = %3
  %21 = load %struct.radeon_bo_list**, %struct.radeon_bo_list*** %6, align 8
  store %struct.radeon_bo_list* null, %struct.radeon_bo_list** %21, align 8
  %22 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %23 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %22, i32 0, i32 2
  %24 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %23, align 8
  store %struct.radeon_cs_chunk* %24, %struct.radeon_cs_chunk** %8, align 8
  %25 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %26 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser* %25, %struct.radeon_cs_packet* %9, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %4, align 4
  br label %125

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %9, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 2
  %38 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %39 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 8
  %44 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %9, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @RADEON_PACKET_TYPE3, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %9, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RADEON_PACKET3_NOP, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %48, %34
  %54 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %9, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %58 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %57, %struct.radeon_cs_packet* %9)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %125

61:                                               ; preds = %48
  %62 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %63 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %9, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  %66 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %62, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %8, align 8
  %69 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp uge i32 %67, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %61
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %8, align 8
  %75 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %76)
  %78 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %79 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %78, %struct.radeon_cs_packet* %9)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %125

82:                                               ; preds = %61
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %115

85:                                               ; preds = %82
  %86 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %87 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %86, i32 0, i32 0
  %88 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %87, align 8
  %89 = load %struct.radeon_bo_list**, %struct.radeon_bo_list*** %6, align 8
  store %struct.radeon_bo_list* %88, %struct.radeon_bo_list** %89, align 8
  %90 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %8, align 8
  %91 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = add i32 %93, 3
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 32
  %99 = load %struct.radeon_bo_list**, %struct.radeon_bo_list*** %6, align 8
  %100 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %99, align 8
  %101 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 4
  %102 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %8, align 8
  %103 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = add i32 %105, 0
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.radeon_bo_list**, %struct.radeon_bo_list*** %6, align 8
  %111 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %110, align 8
  %112 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %109
  store i32 %114, i32* %112, align 4
  br label %124

115:                                              ; preds = %82
  %116 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %117 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %116, i32 0, i32 0
  %118 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = udiv i32 %119, 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %118, i64 %121
  %123 = load %struct.radeon_bo_list**, %struct.radeon_bo_list*** %6, align 8
  store %struct.radeon_bo_list* %122, %struct.radeon_bo_list** %123, align 8
  br label %124

124:                                              ; preds = %115, %85
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %72, %53, %32, %16
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32) #1

declare dso_local i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*) #1

declare dso_local i32 @radeon_get_ib_value(%struct.radeon_cs_parser*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
