; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_integrity_sector_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_integrity_sector_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.dm_integrity_c = type { i32, i32, i32 }

@req = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"crypto_shash_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"crypto_shash_update\00", align 1
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"crypto_shash_final\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_integrity_c*, i32, i8*, i8*)* @integrity_sector_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @integrity_sector_checksum(%struct.dm_integrity_c* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.dm_integrity_c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @cpu_to_le64(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @req, align 8
  %15 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %16 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_6__* %14, i32 %17)
  %19 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %20 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @req, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @req, align 8
  %25 = call i32 @crypto_shash_init(%struct.TYPE_6__* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @dm_integrity_io_error(%struct.dm_integrity_c* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %104

35:                                               ; preds = %4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @req, align 8
  %37 = bitcast i32* %9 to i8*
  %38 = call i32 @crypto_shash_update(%struct.TYPE_6__* %36, i8* %37, i32 4)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @dm_integrity_io_error(%struct.dm_integrity_c* %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %104

48:                                               ; preds = %35
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @req, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %52 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SECTOR_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = call i32 @crypto_shash_update(%struct.TYPE_6__* %49, i8* %50, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %48
  %63 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @dm_integrity_io_error(%struct.dm_integrity_c* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %104

66:                                               ; preds = %48
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @req, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @crypto_shash_final(%struct.TYPE_6__* %67, i8* %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @dm_integrity_io_error(%struct.dm_integrity_c* %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %104

79:                                               ; preds = %66
  %80 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %81 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @crypto_shash_digestsize(i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %86 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ult i32 %84, %87
  %89 = zext i1 %88 to i32
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %79
  %93 = load i8*, i8** %8, align 8
  %94 = load i32, i32* %11, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %98 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %11, align 4
  %101 = sub i32 %99, %100
  %102 = call i32 @memset(i8* %96, i32 0, i32 %101)
  br label %103

103:                                              ; preds = %92, %79
  br label %110

104:                                              ; preds = %75, %62, %44, %31
  %105 = load i8*, i8** %8, align 8
  %106 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %107 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @get_random_bytes(i8* %105, i32 %108)
  br label %110

110:                                              ; preds = %104, %103
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @crypto_shash_init(%struct.TYPE_6__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dm_integrity_io_error(%struct.dm_integrity_c*, i8*, i32) #1

declare dso_local i32 @crypto_shash_update(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @crypto_shash_final(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @crypto_shash_digestsize(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @get_random_bytes(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
