; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-fec.c_verity_fec_dtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-fec.c_verity_fec_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_verity = type { %struct.dm_verity_fec*, i32 }
%struct.dm_verity_fec = type { i64, i64, i64, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @verity_fec_dtr(%struct.dm_verity* %0) #0 {
  %2 = alloca %struct.dm_verity*, align 8
  %3 = alloca %struct.dm_verity_fec*, align 8
  store %struct.dm_verity* %0, %struct.dm_verity** %2, align 8
  %4 = load %struct.dm_verity*, %struct.dm_verity** %2, align 8
  %5 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %4, i32 0, i32 0
  %6 = load %struct.dm_verity_fec*, %struct.dm_verity_fec** %5, align 8
  store %struct.dm_verity_fec* %6, %struct.dm_verity_fec** %3, align 8
  %7 = load %struct.dm_verity*, %struct.dm_verity** %2, align 8
  %8 = call i32 @verity_fec_is_enabled(%struct.dm_verity* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %58

11:                                               ; preds = %1
  %12 = load %struct.dm_verity_fec*, %struct.dm_verity_fec** %3, align 8
  %13 = getelementptr inbounds %struct.dm_verity_fec, %struct.dm_verity_fec* %12, i32 0, i32 6
  %14 = call i32 @mempool_exit(i32* %13)
  %15 = load %struct.dm_verity_fec*, %struct.dm_verity_fec** %3, align 8
  %16 = getelementptr inbounds %struct.dm_verity_fec, %struct.dm_verity_fec* %15, i32 0, i32 5
  %17 = call i32 @mempool_exit(i32* %16)
  %18 = load %struct.dm_verity_fec*, %struct.dm_verity_fec** %3, align 8
  %19 = getelementptr inbounds %struct.dm_verity_fec, %struct.dm_verity_fec* %18, i32 0, i32 4
  %20 = call i32 @mempool_exit(i32* %19)
  %21 = load %struct.dm_verity_fec*, %struct.dm_verity_fec** %3, align 8
  %22 = getelementptr inbounds %struct.dm_verity_fec, %struct.dm_verity_fec* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @kmem_cache_destroy(i32 %23)
  %25 = load %struct.dm_verity_fec*, %struct.dm_verity_fec** %3, align 8
  %26 = getelementptr inbounds %struct.dm_verity_fec, %struct.dm_verity_fec* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %11
  %30 = load %struct.dm_verity_fec*, %struct.dm_verity_fec** %3, align 8
  %31 = getelementptr inbounds %struct.dm_verity_fec, %struct.dm_verity_fec* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @dm_bufio_client_destroy(i64 %32)
  br label %34

34:                                               ; preds = %29, %11
  %35 = load %struct.dm_verity_fec*, %struct.dm_verity_fec** %3, align 8
  %36 = getelementptr inbounds %struct.dm_verity_fec, %struct.dm_verity_fec* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.dm_verity_fec*, %struct.dm_verity_fec** %3, align 8
  %41 = getelementptr inbounds %struct.dm_verity_fec, %struct.dm_verity_fec* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @dm_bufio_client_destroy(i64 %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.dm_verity_fec*, %struct.dm_verity_fec** %3, align 8
  %46 = getelementptr inbounds %struct.dm_verity_fec, %struct.dm_verity_fec* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.dm_verity*, %struct.dm_verity** %2, align 8
  %51 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.dm_verity_fec*, %struct.dm_verity_fec** %3, align 8
  %54 = getelementptr inbounds %struct.dm_verity_fec, %struct.dm_verity_fec* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @dm_put_device(i32 %52, i64 %55)
  br label %57

57:                                               ; preds = %49, %44
  br label %58

58:                                               ; preds = %57, %10
  %59 = load %struct.dm_verity_fec*, %struct.dm_verity_fec** %3, align 8
  %60 = call i32 @kfree(%struct.dm_verity_fec* %59)
  %61 = load %struct.dm_verity*, %struct.dm_verity** %2, align 8
  %62 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %61, i32 0, i32 0
  store %struct.dm_verity_fec* null, %struct.dm_verity_fec** %62, align 8
  ret void
}

declare dso_local i32 @verity_fec_is_enabled(%struct.dm_verity*) #1

declare dso_local i32 @mempool_exit(i32*) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @dm_bufio_client_destroy(i64) #1

declare dso_local i32 @dm_put_device(i32, i64) #1

declare dso_local i32 @kfree(%struct.dm_verity_fec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
