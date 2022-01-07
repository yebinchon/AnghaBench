; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c___bitmap_start_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c___bitmap_start_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RESYNC_MASK = common dso_local global i32 0, align 4
@NEEDED_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bitmap*, i32, i32*, i32)* @__bitmap_start_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bitmap_start_sync(%struct.bitmap* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bitmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.bitmap* %0, %struct.bitmap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %13 = icmp eq %struct.bitmap* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  store i32 1024, i32* %15, align 4
  store i32 1, i32* %5, align 4
  br label %61

16:                                               ; preds = %4
  %17 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %18 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %22 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %21, i32 0, i32 0
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = call i32* @md_bitmap_get_counter(%struct.TYPE_2__* %22, i32 %23, i32* %24, i32 0)
  store i32* %25, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %55

28:                                               ; preds = %16
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @RESYNC(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, i32* %11, align 4
  br label %54

34:                                               ; preds = %28
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @NEEDED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  store i32 1, i32* %11, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @RESYNC_MASK, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @NEEDED_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %48
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %42, %39
  br label %53

53:                                               ; preds = %52, %34
  br label %54

54:                                               ; preds = %53, %33
  br label %55

55:                                               ; preds = %54, %16
  %56 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %57 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock_irq(i32* %58)
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %55, %14
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32* @md_bitmap_get_counter(%struct.TYPE_2__*, i32, i32*, i32) #1

declare dso_local i64 @RESYNC(i32) #1

declare dso_local i64 @NEEDED(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
