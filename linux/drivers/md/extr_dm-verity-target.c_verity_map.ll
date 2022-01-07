; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32, %struct.dm_verity* }
%struct.dm_verity = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bio = type { %struct.TYPE_4__, %struct.dm_verity_io*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dm_verity_io = type { i32, i32, %struct.TYPE_4__, i32, %struct.dm_verity* }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"unaligned io\00", align 1
@DM_MAPIO_KILL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"io out of range\00", align 1
@WRITE = common dso_local global i64 0, align 8
@verity_end_io = common dso_local global i32 0, align 4
@DM_MAPIO_SUBMITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*)* @verity_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verity_map(%struct.dm_target* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.dm_verity*, align 8
  %7 = alloca %struct.dm_verity_io*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %8 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %9 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %8, i32 0, i32 1
  %10 = load %struct.dm_verity*, %struct.dm_verity** %9, align 8
  store %struct.dm_verity* %10, %struct.dm_verity** %6, align 8
  %11 = load %struct.bio*, %struct.bio** %5, align 8
  %12 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %13 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bio_set_dev(%struct.bio* %11, i32 %16)
  %18 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %19 = load %struct.bio*, %struct.bio** %5, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @verity_map_sector(%struct.dm_verity* %18, i32 %22)
  %24 = load %struct.bio*, %struct.bio** %5, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.bio*, %struct.bio** %5, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.bio*, %struct.bio** %5, align 8
  %32 = call i32 @bio_sectors(%struct.bio* %31)
  %33 = or i32 %30, %32
  %34 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %35 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SECTOR_SHIFT, align 4
  %38 = sub nsw i32 %36, %37
  %39 = shl i32 1, %38
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %33, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %2
  %44 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @DM_MAPIO_KILL, align 4
  store i32 %45, i32* %3, align 4
  br label %125

46:                                               ; preds = %2
  %47 = load %struct.bio*, %struct.bio** %5, align 8
  %48 = call i32 @bio_end_sector(%struct.bio* %47)
  %49 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %50 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SECTOR_SHIFT, align 4
  %53 = sub nsw i32 %51, %52
  %54 = ashr i32 %48, %53
  %55 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %56 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @DM_MAPIO_KILL, align 4
  store i32 %61, i32* %3, align 4
  br label %125

62:                                               ; preds = %46
  %63 = load %struct.bio*, %struct.bio** %5, align 8
  %64 = call i64 @bio_data_dir(%struct.bio* %63)
  %65 = load i64, i64* @WRITE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @DM_MAPIO_KILL, align 4
  store i32 %68, i32* %3, align 4
  br label %125

69:                                               ; preds = %62
  %70 = load %struct.bio*, %struct.bio** %5, align 8
  %71 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %72 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call %struct.dm_verity_io* @dm_per_bio_data(%struct.bio* %70, i32 %73)
  store %struct.dm_verity_io* %74, %struct.dm_verity_io** %7, align 8
  %75 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %76 = load %struct.dm_verity_io*, %struct.dm_verity_io** %7, align 8
  %77 = getelementptr inbounds %struct.dm_verity_io, %struct.dm_verity_io* %76, i32 0, i32 4
  store %struct.dm_verity* %75, %struct.dm_verity** %77, align 8
  %78 = load %struct.bio*, %struct.bio** %5, align 8
  %79 = getelementptr inbounds %struct.bio, %struct.bio* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.dm_verity_io*, %struct.dm_verity_io** %7, align 8
  %82 = getelementptr inbounds %struct.dm_verity_io, %struct.dm_verity_io* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.bio*, %struct.bio** %5, align 8
  %84 = getelementptr inbounds %struct.bio, %struct.bio* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %88 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @SECTOR_SHIFT, align 4
  %91 = sub nsw i32 %89, %90
  %92 = ashr i32 %86, %91
  %93 = load %struct.dm_verity_io*, %struct.dm_verity_io** %7, align 8
  %94 = getelementptr inbounds %struct.dm_verity_io, %struct.dm_verity_io* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.bio*, %struct.bio** %5, align 8
  %96 = getelementptr inbounds %struct.bio, %struct.bio* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %100 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = ashr i32 %98, %101
  %103 = load %struct.dm_verity_io*, %struct.dm_verity_io** %7, align 8
  %104 = getelementptr inbounds %struct.dm_verity_io, %struct.dm_verity_io* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @verity_end_io, align 4
  %106 = load %struct.bio*, %struct.bio** %5, align 8
  %107 = getelementptr inbounds %struct.bio, %struct.bio* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load %struct.dm_verity_io*, %struct.dm_verity_io** %7, align 8
  %109 = load %struct.bio*, %struct.bio** %5, align 8
  %110 = getelementptr inbounds %struct.bio, %struct.bio* %109, i32 0, i32 1
  store %struct.dm_verity_io* %108, %struct.dm_verity_io** %110, align 8
  %111 = load %struct.dm_verity_io*, %struct.dm_verity_io** %7, align 8
  %112 = getelementptr inbounds %struct.dm_verity_io, %struct.dm_verity_io* %111, i32 0, i32 2
  %113 = load %struct.bio*, %struct.bio** %5, align 8
  %114 = getelementptr inbounds %struct.bio, %struct.bio* %113, i32 0, i32 0
  %115 = bitcast %struct.TYPE_4__* %112 to i8*
  %116 = bitcast %struct.TYPE_4__* %114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %115, i8* align 8 %116, i64 8, i1 false)
  %117 = load %struct.dm_verity_io*, %struct.dm_verity_io** %7, align 8
  %118 = call i32 @verity_fec_init_io(%struct.dm_verity_io* %117)
  %119 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %120 = load %struct.dm_verity_io*, %struct.dm_verity_io** %7, align 8
  %121 = call i32 @verity_submit_prefetch(%struct.dm_verity* %119, %struct.dm_verity_io* %120)
  %122 = load %struct.bio*, %struct.bio** %5, align 8
  %123 = call i32 @generic_make_request(%struct.bio* %122)
  %124 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %69, %67, %59, %43
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @verity_map_sector(%struct.dm_verity*, i32) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @DMERR_LIMIT(i8*) #1

declare dso_local i32 @bio_end_sector(%struct.bio*) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local %struct.dm_verity_io* @dm_per_bio_data(%struct.bio*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @verity_fec_init_io(%struct.dm_verity_io*) #1

declare dso_local i32 @verity_submit_prefetch(%struct.dm_verity*, %struct.dm_verity_io*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
