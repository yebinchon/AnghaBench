; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c___map_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c___map_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgpath = type { i32 }
%struct.multipath = type { i32, i32, i32, i32, i32 }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MPATHF_QUEUE_IO = common dso_local global i32 0, align 4
@MPATHF_QUEUE_IF_NO_PATH = common dso_local global i32 0, align 4
@MPATHF_PG_INIT_REQUIRED = common dso_local global i32 0, align 4
@kmultipathd = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pgpath* (%struct.multipath*, %struct.bio*)* @__map_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pgpath* @__map_bio(%struct.multipath* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.pgpath*, align 8
  %4 = alloca %struct.multipath*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.pgpath*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.multipath* %0, %struct.multipath** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %9 = load %struct.multipath*, %struct.multipath** %4, align 8
  %10 = getelementptr inbounds %struct.multipath, %struct.multipath* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.pgpath* @READ_ONCE(i32 %11)
  store %struct.pgpath* %12, %struct.pgpath** %6, align 8
  %13 = load i32, i32* @MPATHF_QUEUE_IO, align 4
  %14 = load %struct.multipath*, %struct.multipath** %4, align 8
  %15 = getelementptr inbounds %struct.multipath, %struct.multipath* %14, i32 0, i32 1
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.pgpath*, %struct.pgpath** %6, align 8
  %18 = icmp ne %struct.pgpath* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %19, %2
  %23 = load %struct.multipath*, %struct.multipath** %4, align 8
  %24 = load %struct.bio*, %struct.bio** %5, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.pgpath* @choose_pgpath(%struct.multipath* %23, i32 %27)
  store %struct.pgpath* %28, %struct.pgpath** %6, align 8
  br label %29

29:                                               ; preds = %22, %19
  %30 = load %struct.pgpath*, %struct.pgpath** %6, align 8
  %31 = icmp ne %struct.pgpath* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.pgpath*, %struct.pgpath** %6, align 8
  %37 = icmp ne %struct.pgpath* %36, null
  br i1 %37, label %81, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @MPATHF_QUEUE_IF_NO_PATH, align 4
  %40 = load %struct.multipath*, %struct.multipath** %4, align 8
  %41 = getelementptr inbounds %struct.multipath, %struct.multipath* %40, i32 0, i32 1
  %42 = call i32 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %81

44:                                               ; preds = %38, %32
  %45 = load %struct.multipath*, %struct.multipath** %4, align 8
  %46 = getelementptr inbounds %struct.multipath, %struct.multipath* %45, i32 0, i32 2
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.multipath*, %struct.multipath** %4, align 8
  %50 = getelementptr inbounds %struct.multipath, %struct.multipath* %49, i32 0, i32 3
  %51 = load %struct.bio*, %struct.bio** %5, align 8
  %52 = call i32 @bio_list_add(i32* %50, %struct.bio* %51)
  %53 = load %struct.multipath*, %struct.multipath** %4, align 8
  %54 = getelementptr inbounds %struct.multipath, %struct.multipath* %53, i32 0, i32 2
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %44
  %60 = load i32, i32* @MPATHF_PG_INIT_REQUIRED, align 4
  %61 = load %struct.multipath*, %struct.multipath** %4, align 8
  %62 = getelementptr inbounds %struct.multipath, %struct.multipath* %61, i32 0, i32 1
  %63 = call i32 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59, %44
  %66 = load %struct.multipath*, %struct.multipath** %4, align 8
  %67 = call i32 @pg_init_all_paths(%struct.multipath* %66)
  br label %77

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* @kmultipathd, align 4
  %73 = load %struct.multipath*, %struct.multipath** %4, align 8
  %74 = getelementptr inbounds %struct.multipath, %struct.multipath* %73, i32 0, i32 0
  %75 = call i32 @queue_work(i32 %72, i32* %74)
  br label %76

76:                                               ; preds = %71, %68
  br label %77

77:                                               ; preds = %76, %65
  %78 = load i32, i32* @EAGAIN, align 4
  %79 = sub nsw i32 0, %78
  %80 = call %struct.pgpath* @ERR_PTR(i32 %79)
  store %struct.pgpath* %80, %struct.pgpath** %3, align 8
  br label %83

81:                                               ; preds = %38, %35
  %82 = load %struct.pgpath*, %struct.pgpath** %6, align 8
  store %struct.pgpath* %82, %struct.pgpath** %3, align 8
  br label %83

83:                                               ; preds = %81, %77
  %84 = load %struct.pgpath*, %struct.pgpath** %3, align 8
  ret %struct.pgpath* %84
}

declare dso_local %struct.pgpath* @READ_ONCE(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.pgpath* @choose_pgpath(%struct.multipath*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pg_init_all_paths(%struct.multipath*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local %struct.pgpath* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
