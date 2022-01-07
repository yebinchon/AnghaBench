; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_bio_copy_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_bio_copy_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_writecache = type { i32 }
%struct.bio = type { i32, i32 }
%struct.bio_vec = type { i32 }

@READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"hardware memory error when reading data: %d\00", align 1
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_writecache*, %struct.bio*, i8*)* @bio_copy_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bio_copy_block(%struct.dm_writecache* %0, %struct.bio* %1, i8* %2) #0 {
  %4 = alloca %struct.dm_writecache*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bio_vec, align 4
  %13 = alloca i32, align 4
  store %struct.dm_writecache* %0, %struct.dm_writecache** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.bio*, %struct.bio** %5, align 8
  %15 = call i32 @bio_data_dir(%struct.bio* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.dm_writecache*, %struct.dm_writecache** %4, align 8
  %17 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %82, %3
  %20 = load %struct.bio*, %struct.bio** %5, align 8
  %21 = load %struct.bio*, %struct.bio** %5, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bio_iter_iovec(%struct.bio* %20, i32 %23)
  %25 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %12, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = call i8* @bvec_kmap_irq(%struct.bio_vec* %12, i64* %8)
  store i8* %26, i8** %7, align 8
  %27 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %12, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ugt i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %35, %19
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @READ, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @memcpy_mcsafe(i8* %42, i8* %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load %struct.bio*, %struct.bio** %5, align 8
  %47 = call i32 @bio_page(%struct.bio* %46)
  %48 = call i32 @flush_dcache_page(i32 %47)
  %49 = load i32, i32* %13, align 4
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %41
  %53 = load %struct.dm_writecache*, %struct.dm_writecache** %4, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @writecache_error(%struct.dm_writecache* %53, i32 %54, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @BLK_STS_IOERR, align 4
  %58 = load %struct.bio*, %struct.bio** %5, align 8
  %59 = getelementptr inbounds %struct.bio, %struct.bio* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %52, %41
  br label %69

61:                                               ; preds = %37
  %62 = load %struct.bio*, %struct.bio** %5, align 8
  %63 = call i32 @bio_page(%struct.bio* %62)
  %64 = call i32 @flush_dcache_page(i32 %63)
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @memcpy_flushcache(i8* %65, i8* %66, i32 %67)
  br label %69

69:                                               ; preds = %61, %60
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @bvec_kunmap_irq(i8* %70, i64* %8)
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  store i8* %75, i8** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %11, align 4
  %78 = sub i32 %77, %76
  store i32 %78, i32* %11, align 4
  %79 = load %struct.bio*, %struct.bio** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @bio_advance(%struct.bio* %79, i32 %80)
  br label %82

82:                                               ; preds = %69
  %83 = load i32, i32* %11, align 4
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %19, label %86

86:                                               ; preds = %82
  ret void
}

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @bio_iter_iovec(%struct.bio*, i32) #1

declare dso_local i8* @bvec_kmap_irq(%struct.bio_vec*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy_mcsafe(i8*, i8*, i32) #1

declare dso_local i32 @flush_dcache_page(i32) #1

declare dso_local i32 @bio_page(%struct.bio*) #1

declare dso_local i32 @writecache_error(%struct.dm_writecache*, i32, i8*, i32) #1

declare dso_local i32 @memcpy_flushcache(i8*, i8*, i32) #1

declare dso_local i32 @bvec_kunmap_irq(i8*, i64*) #1

declare dso_local i32 @bio_advance(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
