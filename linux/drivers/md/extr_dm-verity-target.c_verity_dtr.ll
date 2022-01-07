; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_dtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dm_verity* }
%struct.dm_verity = type { %struct.dm_verity*, i64, i64, %struct.dm_verity*, i64, %struct.dm_verity*, %struct.dm_verity*, %struct.dm_verity*, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @verity_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verity_dtr(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.dm_verity*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %4 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %5 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %4, i32 0, i32 0
  %6 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  store %struct.dm_verity* %6, %struct.dm_verity** %3, align 8
  %7 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %8 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %7, i32 0, i32 10
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %13 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %12, i32 0, i32 10
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @destroy_workqueue(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %18 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %17, i32 0, i32 9
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %23 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %22, i32 0, i32 9
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @dm_bufio_client_destroy(i64 %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %28 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @kvfree(i32 %29)
  %31 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %32 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %31, i32 0, i32 7
  %33 = load %struct.dm_verity*, %struct.dm_verity** %32, align 8
  %34 = call i32 @kfree(%struct.dm_verity* %33)
  %35 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %36 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %35, i32 0, i32 6
  %37 = load %struct.dm_verity*, %struct.dm_verity** %36, align 8
  %38 = call i32 @kfree(%struct.dm_verity* %37)
  %39 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %40 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %39, i32 0, i32 5
  %41 = load %struct.dm_verity*, %struct.dm_verity** %40, align 8
  %42 = call i32 @kfree(%struct.dm_verity* %41)
  %43 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %44 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %26
  %48 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %49 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @crypto_free_ahash(i64 %50)
  br label %52

52:                                               ; preds = %47, %26
  %53 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %54 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %53, i32 0, i32 3
  %55 = load %struct.dm_verity*, %struct.dm_verity** %54, align 8
  %56 = call i32 @kfree(%struct.dm_verity* %55)
  %57 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %58 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %52
  %62 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %63 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %64 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @dm_put_device(%struct.dm_target* %62, i64 %65)
  br label %67

67:                                               ; preds = %61, %52
  %68 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %69 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %74 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %75 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @dm_put_device(%struct.dm_target* %73, i64 %76)
  br label %78

78:                                               ; preds = %72, %67
  %79 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %80 = call i32 @verity_fec_dtr(%struct.dm_verity* %79)
  %81 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %82 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %81, i32 0, i32 0
  %83 = load %struct.dm_verity*, %struct.dm_verity** %82, align 8
  %84 = call i32 @kfree(%struct.dm_verity* %83)
  %85 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %86 = call i32 @kfree(%struct.dm_verity* %85)
  ret void
}

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @dm_bufio_client_destroy(i64) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @kfree(%struct.dm_verity*) #1

declare dso_local i32 @crypto_free_ahash(i64) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, i64) #1

declare dso_local i32 @verity_fec_dtr(%struct.dm_verity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
