; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_end_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_end_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }

@RESYNC_MASK = common dso_local global i32 0, align 4
@NEEDED_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_bitmap_end_sync(%struct.bitmap* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.bitmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.bitmap* %0, %struct.bitmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %12 = icmp eq %struct.bitmap* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32*, i32** %7, align 8
  store i32 1024, i32* %14, align 4
  br label %72

15:                                               ; preds = %4
  %16 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %17 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %22 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %21, i32 0, i32 0
  %23 = load i32, i32* %6, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call i32* @md_bitmap_get_counter(%struct.TYPE_3__* %22, i32 %23, i32* %24, i32 0)
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %66

29:                                               ; preds = %15
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @RESYNC(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %29
  %35 = load i32, i32* @RESYNC_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @NEEDED(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* @NEEDED_MASK, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 4
  br label %64

52:                                               ; preds = %44, %34
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp sle i32 %54, 2
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %58 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %57, i32 0, i32 0
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @md_bitmap_set_pending(%struct.TYPE_3__* %58, i32 %59)
  %61 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %62 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %56, %52
  br label %64

64:                                               ; preds = %63, %47
  br label %65

65:                                               ; preds = %64, %29
  br label %66

66:                                               ; preds = %65, %28
  %67 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %68 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  br label %72

72:                                               ; preds = %66, %13
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32* @md_bitmap_get_counter(%struct.TYPE_3__*, i32, i32*, i32) #1

declare dso_local i64 @RESYNC(i32) #1

declare dso_local i32 @NEEDED(i32) #1

declare dso_local i32 @md_bitmap_set_pending(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
