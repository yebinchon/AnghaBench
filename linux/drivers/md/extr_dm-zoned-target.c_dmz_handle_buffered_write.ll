; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_handle_buffered_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_handle_buffered_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_target = type { %struct.dmz_metadata* }
%struct.dmz_metadata = type { i32 }
%struct.dm_zone = type { i64 }
%struct.bio = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_target*, %struct.dm_zone*, %struct.bio*, i64, i32)* @dmz_handle_buffered_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_handle_buffered_write(%struct.dmz_target* %0, %struct.dm_zone* %1, %struct.bio* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dmz_target*, align 8
  %8 = alloca %struct.dm_zone*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dmz_metadata*, align 8
  %13 = alloca %struct.dm_zone*, align 8
  %14 = alloca i32, align 4
  store %struct.dmz_target* %0, %struct.dmz_target** %7, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %8, align 8
  store %struct.bio* %2, %struct.bio** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.dmz_target*, %struct.dmz_target** %7, align 8
  %16 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %15, i32 0, i32 0
  %17 = load %struct.dmz_metadata*, %struct.dmz_metadata** %16, align 8
  store %struct.dmz_metadata* %17, %struct.dmz_metadata** %12, align 8
  %18 = load %struct.dmz_metadata*, %struct.dmz_metadata** %12, align 8
  %19 = load %struct.dm_zone*, %struct.dm_zone** %8, align 8
  %20 = call %struct.dm_zone* @dmz_get_chunk_buffer(%struct.dmz_metadata* %18, %struct.dm_zone* %19)
  store %struct.dm_zone* %20, %struct.dm_zone** %13, align 8
  %21 = load %struct.dm_zone*, %struct.dm_zone** %13, align 8
  %22 = call i64 @IS_ERR(%struct.dm_zone* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load %struct.dm_zone*, %struct.dm_zone** %13, align 8
  %26 = call i32 @PTR_ERR(%struct.dm_zone* %25)
  store i32 %26, i32* %6, align 4
  br label %67

27:                                               ; preds = %5
  %28 = load %struct.dm_zone*, %struct.dm_zone** %13, align 8
  %29 = call i64 @dmz_is_readonly(%struct.dm_zone* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EROFS, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %67

34:                                               ; preds = %27
  %35 = load %struct.dmz_target*, %struct.dmz_target** %7, align 8
  %36 = load %struct.dm_zone*, %struct.dm_zone** %13, align 8
  %37 = load %struct.bio*, %struct.bio** %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @dmz_submit_bio(%struct.dmz_target* %35, %struct.dm_zone* %36, %struct.bio* %37, i64 %38, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %6, align 4
  br label %67

45:                                               ; preds = %34
  %46 = load %struct.dmz_metadata*, %struct.dmz_metadata** %12, align 8
  %47 = load %struct.dm_zone*, %struct.dm_zone** %13, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @dmz_validate_blocks(%struct.dmz_metadata* %46, %struct.dm_zone* %47, i64 %48, i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %45
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.dm_zone*, %struct.dm_zone** %8, align 8
  %56 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.dmz_metadata*, %struct.dmz_metadata** %12, align 8
  %61 = load %struct.dm_zone*, %struct.dm_zone** %8, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @dmz_invalidate_blocks(%struct.dmz_metadata* %60, %struct.dm_zone* %61, i64 %62, i32 %63)
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %59, %53, %45
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %43, %31, %24
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.dm_zone* @dmz_get_chunk_buffer(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i64 @IS_ERR(%struct.dm_zone*) #1

declare dso_local i32 @PTR_ERR(%struct.dm_zone*) #1

declare dso_local i64 @dmz_is_readonly(%struct.dm_zone*) #1

declare dso_local i32 @dmz_submit_bio(%struct.dmz_target*, %struct.dm_zone*, %struct.bio*, i64, i32) #1

declare dso_local i32 @dmz_validate_blocks(%struct.dmz_metadata*, %struct.dm_zone*, i64, i32) #1

declare dso_local i32 @dmz_invalidate_blocks(%struct.dmz_metadata*, %struct.dm_zone*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
