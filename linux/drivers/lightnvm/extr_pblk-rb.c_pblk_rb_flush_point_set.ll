; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-rb.c_pblk_rb_flush_point_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-rb.c_pblk_rb_flush_point_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk_rb = type { i32, i32, %struct.pblk_rb_entry*, i32, i32 }
%struct.pblk_rb_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk_rb*, %struct.bio*, i32)* @pblk_rb_flush_point_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_rb_flush_point_set(%struct.pblk_rb* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pblk_rb*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pblk_rb_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pblk_rb* %0, %struct.pblk_rb** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.pblk_rb*, %struct.pblk_rb** %5, align 8
  %12 = call i32 @pblk_rb_sync_init(%struct.pblk_rb* %11, i32* null)
  %13 = load %struct.pblk_rb*, %struct.pblk_rb** %5, align 8
  %14 = getelementptr inbounds %struct.pblk_rb, %struct.pblk_rb* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @READ_ONCE(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.pblk_rb*, %struct.pblk_rb** %5, align 8
  %22 = call i32 @pblk_rb_sync_end(%struct.pblk_rb* %21, i32* null)
  store i32 0, i32* %4, align 4
  br label %61

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.pblk_rb*, %struct.pblk_rb** %5, align 8
  %28 = getelementptr inbounds %struct.pblk_rb, %struct.pblk_rb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub i32 %29, 1
  br label %34

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = sub i32 %32, 1
  br label %34

34:                                               ; preds = %31, %26
  %35 = phi i32 [ %30, %26 ], [ %33, %31 ]
  store i32 %35, i32* %10, align 4
  %36 = load %struct.pblk_rb*, %struct.pblk_rb** %5, align 8
  %37 = getelementptr inbounds %struct.pblk_rb, %struct.pblk_rb* %36, i32 0, i32 2
  %38 = load %struct.pblk_rb_entry*, %struct.pblk_rb_entry** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.pblk_rb_entry, %struct.pblk_rb_entry* %38, i64 %40
  store %struct.pblk_rb_entry* %41, %struct.pblk_rb_entry** %8, align 8
  %42 = load %struct.pblk_rb*, %struct.pblk_rb** %5, align 8
  %43 = getelementptr inbounds %struct.pblk_rb, %struct.pblk_rb* %42, i32 0, i32 1
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @smp_store_release(i32* %43, i32 %44)
  %46 = load %struct.bio*, %struct.bio** %6, align 8
  %47 = icmp ne %struct.bio* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %34
  %49 = load %struct.pblk_rb_entry*, %struct.pblk_rb_entry** %8, align 8
  %50 = getelementptr inbounds %struct.pblk_rb_entry, %struct.pblk_rb_entry* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.bio*, %struct.bio** %6, align 8
  %53 = call i32 @bio_list_add(i32* %51, %struct.bio* %52)
  br label %54

54:                                               ; preds = %48, %34
  %55 = load %struct.pblk_rb*, %struct.pblk_rb** %5, align 8
  %56 = call i32 @pblk_rb_sync_end(%struct.pblk_rb* %55, i32* null)
  %57 = load %struct.bio*, %struct.bio** %6, align 8
  %58 = icmp ne %struct.bio* %57, null
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 0
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %54, %20
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @pblk_rb_sync_init(%struct.pblk_rb*, i32*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @pblk_rb_sync_end(%struct.pblk_rb*, i32*) #1

declare dso_local i32 @smp_store_release(i32*, i32) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
