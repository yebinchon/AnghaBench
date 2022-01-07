; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v2.c___put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v2.c___put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bio_prison_v2 = type { i32, i32 }
%struct.dm_bio_prison_cell_v2 = type { i32, i32*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_bio_prison_v2*, %struct.dm_bio_prison_cell_v2*)* @__put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__put(%struct.dm_bio_prison_v2* %0, %struct.dm_bio_prison_cell_v2* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_bio_prison_v2*, align 8
  %5 = alloca %struct.dm_bio_prison_cell_v2*, align 8
  store %struct.dm_bio_prison_v2* %0, %struct.dm_bio_prison_v2** %4, align 8
  store %struct.dm_bio_prison_cell_v2* %1, %struct.dm_bio_prison_cell_v2** %5, align 8
  %6 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %5, align 8
  %7 = getelementptr inbounds %struct.dm_bio_prison_cell_v2, %struct.dm_bio_prison_cell_v2* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %5, align 8
  %14 = getelementptr inbounds %struct.dm_bio_prison_cell_v2, %struct.dm_bio_prison_cell_v2* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %5, align 8
  %18 = getelementptr inbounds %struct.dm_bio_prison_cell_v2, %struct.dm_bio_prison_cell_v2* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %2
  %22 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %5, align 8
  %23 = getelementptr inbounds %struct.dm_bio_prison_cell_v2, %struct.dm_bio_prison_cell_v2* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %5, align 8
  %28 = getelementptr inbounds %struct.dm_bio_prison_cell_v2, %struct.dm_bio_prison_cell_v2* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.dm_bio_prison_v2*, %struct.dm_bio_prison_v2** %4, align 8
  %33 = getelementptr inbounds %struct.dm_bio_prison_v2, %struct.dm_bio_prison_v2* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %5, align 8
  %36 = getelementptr inbounds %struct.dm_bio_prison_cell_v2, %struct.dm_bio_prison_cell_v2* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @queue_work(i32 %34, i32* %37)
  %39 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %5, align 8
  %40 = getelementptr inbounds %struct.dm_bio_prison_cell_v2, %struct.dm_bio_prison_cell_v2* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %31, %26
  br label %48

42:                                               ; preds = %21
  %43 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %5, align 8
  %44 = getelementptr inbounds %struct.dm_bio_prison_cell_v2, %struct.dm_bio_prison_cell_v2* %43, i32 0, i32 0
  %45 = load %struct.dm_bio_prison_v2*, %struct.dm_bio_prison_v2** %4, align 8
  %46 = getelementptr inbounds %struct.dm_bio_prison_v2, %struct.dm_bio_prison_v2* %45, i32 0, i32 0
  %47 = call i32 @rb_erase(i32* %44, i32* %46)
  store i32 1, i32* %3, align 4
  br label %50

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %2
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %42
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
