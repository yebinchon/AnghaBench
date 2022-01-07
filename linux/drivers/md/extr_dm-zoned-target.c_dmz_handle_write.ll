; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_handle_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_handle_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_target = type { i32, i32 }
%struct.dm_zone = type { i64 }
%struct.bio = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"WRITE chunk %llu -> %s zone %u, block %llu, %u blocks\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"RND\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"SEQ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_target*, %struct.dm_zone*, %struct.bio*)* @dmz_handle_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_handle_write(%struct.dmz_target* %0, %struct.dm_zone* %1, %struct.bio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmz_target*, align 8
  %6 = alloca %struct.dm_zone*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.dmz_target* %0, %struct.dmz_target** %5, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
  %10 = load %struct.dmz_target*, %struct.dmz_target** %5, align 8
  %11 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.bio*, %struct.bio** %7, align 8
  %14 = call i32 @dmz_bio_block(%struct.bio* %13)
  %15 = call i64 @dmz_chunk_block(i32 %12, i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load %struct.bio*, %struct.bio** %7, align 8
  %17 = call i32 @dmz_bio_blocks(%struct.bio* %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %19 = icmp ne %struct.dm_zone* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOSPC, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %68

23:                                               ; preds = %3
  %24 = load %struct.dmz_target*, %struct.dmz_target** %5, align 8
  %25 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dmz_target*, %struct.dmz_target** %5, align 8
  %28 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bio*, %struct.bio** %7, align 8
  %31 = call i64 @dmz_bio_chunk(i32 %29, %struct.bio* %30)
  %32 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %33 = call i64 @dmz_is_rnd(%struct.dm_zone* %32)
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %37 = load %struct.dmz_target*, %struct.dmz_target** %5, align 8
  %38 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %41 = call i32 @dmz_id(i32 %39, %struct.dm_zone* %40)
  %42 = load i64, i64* %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @dmz_dev_debug(i32 %26, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %31, i8* %36, i32 %41, i64 %42, i32 %43)
  %45 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %46 = call i64 @dmz_is_rnd(%struct.dm_zone* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %23
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %51 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48, %23
  %55 = load %struct.dmz_target*, %struct.dmz_target** %5, align 8
  %56 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %57 = load %struct.bio*, %struct.bio** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @dmz_handle_direct_write(%struct.dmz_target* %55, %struct.dm_zone* %56, %struct.bio* %57, i64 %58, i32 %59)
  store i32 %60, i32* %4, align 4
  br label %68

61:                                               ; preds = %48
  %62 = load %struct.dmz_target*, %struct.dmz_target** %5, align 8
  %63 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %64 = load %struct.bio*, %struct.bio** %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @dmz_handle_buffered_write(%struct.dmz_target* %62, %struct.dm_zone* %63, %struct.bio* %64, i64 %65, i32 %66)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %61, %54, %20
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @dmz_chunk_block(i32, i32) #1

declare dso_local i32 @dmz_bio_block(%struct.bio*) #1

declare dso_local i32 @dmz_bio_blocks(%struct.bio*) #1

declare dso_local i32 @dmz_dev_debug(i32, i8*, i64, i8*, i32, i64, i32) #1

declare dso_local i64 @dmz_bio_chunk(i32, %struct.bio*) #1

declare dso_local i64 @dmz_is_rnd(%struct.dm_zone*) #1

declare dso_local i32 @dmz_id(i32, %struct.dm_zone*) #1

declare dso_local i32 @dmz_handle_direct_write(%struct.dmz_target*, %struct.dm_zone*, %struct.bio*, i64, i32) #1

declare dso_local i32 @dmz_handle_buffered_write(%struct.dmz_target*, %struct.dm_zone*, %struct.bio*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
