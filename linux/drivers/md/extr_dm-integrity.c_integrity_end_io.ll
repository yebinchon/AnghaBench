; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_integrity_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_integrity_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i64, i32, i32, i32 }
%struct.dm_integrity_io = type { i64, i32, i64, i32, i32, i32 }

@REQ_INTEGRITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @integrity_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @integrity_end_io(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.dm_integrity_io*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = call %struct.dm_integrity_io* @dm_per_bio_data(%struct.bio* %4, i32 40)
  store %struct.dm_integrity_io* %5, %struct.dm_integrity_io** %3, align 8
  %6 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %7 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.bio*, %struct.bio** %2, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 8
  %11 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %12 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %17 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.bio*, %struct.bio** %2, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %22 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %1
  %26 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %27 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.bio*, %struct.bio** %2, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* @REQ_INTEGRITY, align 4
  %32 = load %struct.bio*, %struct.bio** %2, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %25, %1
  %37 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %38 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.bio*, %struct.bio** %2, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %43 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %48 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @complete(i64 %49)
  br label %51

51:                                               ; preds = %46, %36
  %52 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %53 = call i32 @dec_in_flight(%struct.dm_integrity_io* %52)
  ret void
}

declare dso_local %struct.dm_integrity_io* @dm_per_bio_data(%struct.bio*, i32) #1

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @dec_in_flight(%struct.dm_integrity_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
