; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_mirror_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_mirror_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.mirror_set* }
%struct.mirror_set = type { i32, %struct.mirror*, i32 }
%struct.mirror = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.dm_io_request = type { i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.dm_io_region = type { i64, i64, i32 }

@MAX_NR_MIRRORS = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@DM_IO_KMEM = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@DM_RAID1_FLUSH_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*)* @mirror_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mirror_flush(%struct.dm_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.mirror_set*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mirror*, align 8
  %10 = alloca %struct.dm_io_request, align 8
  %11 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  %12 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %13 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %12, i32 0, i32 0
  %14 = load %struct.mirror_set*, %struct.mirror_set** %13, align 8
  store %struct.mirror_set* %14, %struct.mirror_set** %4, align 8
  %15 = load i32, i32* @MAX_NR_MIRRORS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca %struct.dm_io_region, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %10, i32 0, i32 0
  %20 = load i32, i32* @REQ_PREFLUSH, align 4
  %21 = load i32, i32* @REQ_SYNC, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %19, align 8
  %23 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %10, i32 0, i32 1
  %24 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %25 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %23, align 4
  %27 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %10, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %31 = load i32, i32* @DM_IO_KMEM, align 4
  store i32 %31, i32* %30, align 8
  %32 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %10, i32 0, i32 3
  %33 = load i32, i32* @REQ_OP_WRITE, align 4
  store i32 %33, i32* %32, align 8
  store i32 0, i32* %6, align 4
  %34 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %35 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %34, i32 0, i32 1
  %36 = load %struct.mirror*, %struct.mirror** %35, align 8
  store %struct.mirror* %36, %struct.mirror** %9, align 8
  br label %37

37:                                               ; preds = %61, %1
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %40 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %37
  %44 = load %struct.mirror*, %struct.mirror** %9, align 8
  %45 = getelementptr inbounds %struct.mirror, %struct.mirror* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %18, i64 %50
  %52 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %51, i32 0, i32 2
  store i32 %48, i32* %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %18, i64 %54
  %56 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %18, i64 %58
  %60 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %43
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %6, align 4
  %64 = load %struct.mirror*, %struct.mirror** %9, align 8
  %65 = getelementptr inbounds %struct.mirror, %struct.mirror* %64, i32 1
  store %struct.mirror* %65, %struct.mirror** %9, align 8
  br label %37

66:                                               ; preds = %37
  store i64 -1, i64* %5, align 8
  %67 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %68 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dm_io(%struct.dm_io_request* %10, i32 %69, %struct.dm_io_region* %18, i64* %5)
  %71 = load i64, i64* %5, align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %97, %76
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %80 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ult i32 %78, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %77
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @test_bit(i32 %84, i64* %5)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %89 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %88, i32 0, i32 1
  %90 = load %struct.mirror*, %struct.mirror** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.mirror, %struct.mirror* %90, i64 %92
  %94 = load i32, i32* @DM_RAID1_FLUSH_ERROR, align 4
  %95 = call i32 @fail_mirror(%struct.mirror* %93, i32 %94)
  br label %96

96:                                               ; preds = %87, %83
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %6, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %77

100:                                              ; preds = %77
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %104

103:                                              ; preds = %66
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %104

104:                                              ; preds = %103, %100
  %105 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dm_io(%struct.dm_io_request*, i32, %struct.dm_io_region*, i64*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i64 @test_bit(i32, i64*) #2

declare dso_local i32 @fail_mirror(%struct.mirror*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
