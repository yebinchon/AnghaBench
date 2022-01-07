; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_set_memory_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_set_memory_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@NEEDED_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bitmap*, i32, i32)* @md_bitmap_set_memory_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @md_bitmap_set_memory_bits(%struct.bitmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bitmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.bitmap* %0, %struct.bitmap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %10 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %14 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %13, i32 0, i32 0
  %15 = load i32, i32* %5, align 4
  %16 = call i32* @md_bitmap_get_counter(%struct.TYPE_4__* %14, i32 %15, i32* %7, i32 1)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %21 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock_irq(i32* %22)
  br label %53

24:                                               ; preds = %3
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = load i32*, i32** %8, align 8
  store i32 2, i32* %29, align 4
  %30 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %31 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %30, i32 0, i32 0
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @md_bitmap_count_page(%struct.TYPE_4__* %31, i32 %32, i32 1)
  %34 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %35 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %34, i32 0, i32 0
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @md_bitmap_set_pending(%struct.TYPE_4__* %35, i32 %36)
  %38 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %39 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %28, %24
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* @NEEDED_MASK, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %43, %40
  %49 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %50 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock_irq(i32* %51)
  br label %53

53:                                               ; preds = %48, %19
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32* @md_bitmap_get_counter(%struct.TYPE_4__*, i32, i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @md_bitmap_count_page(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @md_bitmap_set_pending(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
