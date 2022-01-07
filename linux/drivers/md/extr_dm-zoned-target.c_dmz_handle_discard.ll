; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_handle_discard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_handle_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_target = type { i32, %struct.dmz_metadata* }
%struct.dmz_metadata = type { i32 }
%struct.dm_zone = type { i64, %struct.dm_zone* }
%struct.bio = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"DISCARD chunk %llu -> zone %u, block %llu, %u blocks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_target*, %struct.dm_zone*, %struct.bio*)* @dmz_handle_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_handle_discard(%struct.dmz_target* %0, %struct.dm_zone* %1, %struct.bio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmz_target*, align 8
  %6 = alloca %struct.dm_zone*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.dmz_metadata*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.dmz_target* %0, %struct.dmz_target** %5, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
  %13 = load %struct.dmz_target*, %struct.dmz_target** %5, align 8
  %14 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %13, i32 0, i32 1
  %15 = load %struct.dmz_metadata*, %struct.dmz_metadata** %14, align 8
  store %struct.dmz_metadata* %15, %struct.dmz_metadata** %8, align 8
  %16 = load %struct.bio*, %struct.bio** %7, align 8
  %17 = call i64 @dmz_bio_block(%struct.bio* %16)
  store i64 %17, i64* %9, align 8
  %18 = load %struct.bio*, %struct.bio** %7, align 8
  %19 = call i32 @dmz_bio_blocks(%struct.bio* %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.dmz_target*, %struct.dmz_target** %5, align 8
  %21 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i64 @dmz_chunk_block(i32 %22, i64 %23)
  store i64 %24, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %25 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %26 = icmp ne %struct.dm_zone* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

28:                                               ; preds = %3
  %29 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %30 = call i64 @dmz_is_readonly(%struct.dm_zone* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EROFS, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %83

35:                                               ; preds = %28
  %36 = load %struct.dmz_target*, %struct.dmz_target** %5, align 8
  %37 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.dmz_target*, %struct.dmz_target** %5, align 8
  %40 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.bio*, %struct.bio** %7, align 8
  %43 = call i64 @dmz_bio_chunk(i32 %41, %struct.bio* %42)
  %44 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %45 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %46 = call i32 @dmz_id(%struct.dmz_metadata* %44, %struct.dm_zone* %45)
  %47 = load i64, i64* %11, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @dmz_dev_debug(i32 %38, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %43, i32 %46, i64 %47, i32 %48)
  %50 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %51 = call i64 @dmz_is_rnd(%struct.dm_zone* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %35
  %54 = load i64, i64* %11, align 8
  %55 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %56 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53, %35
  %60 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %61 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @dmz_invalidate_blocks(%struct.dmz_metadata* %60, %struct.dm_zone* %61, i64 %62, i32 %63)
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %59, %53
  %66 = load i32, i32* %12, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %70 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %69, i32 0, i32 1
  %71 = load %struct.dm_zone*, %struct.dm_zone** %70, align 8
  %72 = icmp ne %struct.dm_zone* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %75 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %76 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %75, i32 0, i32 1
  %77 = load %struct.dm_zone*, %struct.dm_zone** %76, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @dmz_invalidate_blocks(%struct.dmz_metadata* %74, %struct.dm_zone* %77, i64 %78, i32 %79)
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %73, %68, %65
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %32, %27
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @dmz_bio_block(%struct.bio*) #1

declare dso_local i32 @dmz_bio_blocks(%struct.bio*) #1

declare dso_local i64 @dmz_chunk_block(i32, i64) #1

declare dso_local i64 @dmz_is_readonly(%struct.dm_zone*) #1

declare dso_local i32 @dmz_dev_debug(i32, i8*, i64, i32, i64, i32) #1

declare dso_local i64 @dmz_bio_chunk(i32, %struct.bio*) #1

declare dso_local i32 @dmz_id(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i64 @dmz_is_rnd(%struct.dm_zone*) #1

declare dso_local i32 @dmz_invalidate_blocks(%struct.dmz_metadata*, %struct.dm_zone*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
