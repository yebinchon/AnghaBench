; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_free_zone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_free_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.dm_zone = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmz_free_zone(%struct.dmz_metadata* %0, %struct.dm_zone* %1) #0 {
  %3 = alloca %struct.dmz_metadata*, align 8
  %4 = alloca %struct.dm_zone*, align 8
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %3, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %4, align 8
  %5 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %6 = call i64 @dmz_is_seq(%struct.dm_zone* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %10 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %11 = call i32 @dmz_reset_zone(%struct.dmz_metadata* %9, %struct.dm_zone* %10)
  br label %12

12:                                               ; preds = %8, %2
  %13 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %14 = call i64 @dmz_is_rnd(%struct.dm_zone* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %18 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %17, i32 0, i32 0
  %19 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %20 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %19, i32 0, i32 7
  %21 = call i32 @list_add_tail(i32* %18, i32* %20)
  %22 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %23 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %22, i32 0, i32 6
  %24 = call i32 @atomic_inc(i32* %23)
  br label %52

25:                                               ; preds = %12
  %26 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %27 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %26, i32 0, i32 4
  %28 = call i64 @atomic_read(i32* %27)
  %29 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %30 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %35 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %34, i32 0, i32 0
  %36 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %37 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %36, i32 0, i32 5
  %38 = call i32 @list_add_tail(i32* %35, i32* %37)
  %39 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %40 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %39, i32 0, i32 4
  %41 = call i32 @atomic_inc(i32* %40)
  br label %51

42:                                               ; preds = %25
  %43 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %44 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %43, i32 0, i32 0
  %45 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %46 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %45, i32 0, i32 3
  %47 = call i32 @list_add_tail(i32* %44, i32* %46)
  %48 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %49 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %48, i32 0, i32 2
  %50 = call i32 @atomic_inc(i32* %49)
  br label %51

51:                                               ; preds = %42, %33
  br label %52

52:                                               ; preds = %51, %16
  %53 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %54 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %53, i32 0, i32 1
  %55 = call i32 @wake_up_all(i32* %54)
  ret void
}

declare dso_local i64 @dmz_is_seq(%struct.dm_zone*) #1

declare dso_local i32 @dmz_reset_zone(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i64 @dmz_is_rnd(%struct.dm_zone*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
