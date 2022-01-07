; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_handle_direct_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_handle_direct_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_target = type { %struct.dmz_metadata* }
%struct.dmz_metadata = type { i32 }
%struct.dm_zone = type { %struct.dm_zone* }
%struct.bio = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_target*, %struct.dm_zone*, %struct.bio*, i32, i32)* @dmz_handle_direct_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_handle_direct_write(%struct.dmz_target* %0, %struct.dm_zone* %1, %struct.bio* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dmz_target*, align 8
  %8 = alloca %struct.dm_zone*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dmz_metadata*, align 8
  %13 = alloca %struct.dm_zone*, align 8
  %14 = alloca i32, align 4
  store %struct.dmz_target* %0, %struct.dmz_target** %7, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %8, align 8
  store %struct.bio* %2, %struct.bio** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.dmz_target*, %struct.dmz_target** %7, align 8
  %16 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %15, i32 0, i32 0
  %17 = load %struct.dmz_metadata*, %struct.dmz_metadata** %16, align 8
  store %struct.dmz_metadata* %17, %struct.dmz_metadata** %12, align 8
  %18 = load %struct.dm_zone*, %struct.dm_zone** %8, align 8
  %19 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %18, i32 0, i32 0
  %20 = load %struct.dm_zone*, %struct.dm_zone** %19, align 8
  store %struct.dm_zone* %20, %struct.dm_zone** %13, align 8
  %21 = load %struct.dm_zone*, %struct.dm_zone** %8, align 8
  %22 = call i64 @dmz_is_readonly(%struct.dm_zone* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EROFS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %57

27:                                               ; preds = %5
  %28 = load %struct.dmz_target*, %struct.dmz_target** %7, align 8
  %29 = load %struct.dm_zone*, %struct.dm_zone** %8, align 8
  %30 = load %struct.bio*, %struct.bio** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @dmz_submit_bio(%struct.dmz_target* %28, %struct.dm_zone* %29, %struct.bio* %30, i32 %31, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %6, align 4
  br label %57

38:                                               ; preds = %27
  %39 = load %struct.dmz_metadata*, %struct.dmz_metadata** %12, align 8
  %40 = load %struct.dm_zone*, %struct.dm_zone** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @dmz_validate_blocks(%struct.dmz_metadata* %39, %struct.dm_zone* %40, i32 %41, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load %struct.dm_zone*, %struct.dm_zone** %13, align 8
  %48 = icmp ne %struct.dm_zone* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.dmz_metadata*, %struct.dmz_metadata** %12, align 8
  %51 = load %struct.dm_zone*, %struct.dm_zone** %13, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @dmz_invalidate_blocks(%struct.dmz_metadata* %50, %struct.dm_zone* %51, i32 %52, i32 %53)
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %49, %46, %38
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %36, %24
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i64 @dmz_is_readonly(%struct.dm_zone*) #1

declare dso_local i32 @dmz_submit_bio(%struct.dmz_target*, %struct.dm_zone*, %struct.bio*, i32, i32) #1

declare dso_local i32 @dmz_validate_blocks(%struct.dmz_metadata*, %struct.dm_zone*, i32, i32) #1

declare dso_local i32 @dmz_invalidate_blocks(%struct.dmz_metadata*, %struct.dm_zone*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
