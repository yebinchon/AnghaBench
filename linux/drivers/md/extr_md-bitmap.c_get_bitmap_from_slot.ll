; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_get_bitmap_from_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_get_bitmap_from_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i32 }
%struct.mddev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bitmap* @get_bitmap_from_slot(%struct.mddev* %0, i32 %1) #0 {
  %3 = alloca %struct.bitmap*, align 8
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bitmap*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.mddev*, %struct.mddev** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.bitmap* @md_bitmap_create(%struct.mddev* %8, i32 %9)
  store %struct.bitmap* %10, %struct.bitmap** %7, align 8
  %11 = load %struct.bitmap*, %struct.bitmap** %7, align 8
  %12 = call i64 @IS_ERR(%struct.bitmap* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.bitmap*, %struct.bitmap** %7, align 8
  %16 = call i32 @PTR_ERR(%struct.bitmap* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.bitmap* @ERR_PTR(i32 %17)
  store %struct.bitmap* %18, %struct.bitmap** %3, align 8
  br label %31

19:                                               ; preds = %2
  %20 = load %struct.bitmap*, %struct.bitmap** %7, align 8
  %21 = call i32 @md_bitmap_init_from_disk(%struct.bitmap* %20, i32 0)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.bitmap*, %struct.bitmap** %7, align 8
  %26 = call i32 @md_bitmap_free(%struct.bitmap* %25)
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.bitmap* @ERR_PTR(i32 %27)
  store %struct.bitmap* %28, %struct.bitmap** %3, align 8
  br label %31

29:                                               ; preds = %19
  %30 = load %struct.bitmap*, %struct.bitmap** %7, align 8
  store %struct.bitmap* %30, %struct.bitmap** %3, align 8
  br label %31

31:                                               ; preds = %29, %24, %14
  %32 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  ret %struct.bitmap* %32
}

declare dso_local %struct.bitmap* @md_bitmap_create(%struct.mddev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.bitmap*) #1

declare dso_local i32 @PTR_ERR(%struct.bitmap*) #1

declare dso_local %struct.bitmap* @ERR_PTR(i32) #1

declare dso_local i32 @md_bitmap_init_from_disk(%struct.bitmap*, i32) #1

declare dso_local i32 @md_bitmap_free(%struct.bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
