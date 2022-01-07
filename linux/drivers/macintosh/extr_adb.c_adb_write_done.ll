; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_adb.c_adb_write_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_adb.c_adb_write_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32, i32, i32, %struct.adb_request*, %struct.adb_request*, i32, i32, i64, i64 }
%struct.adbdev_state = type { i32, i32, i32, %struct.adbdev_state*, %struct.adbdev_state*, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adb_request*)* @adb_write_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adb_write_done(%struct.adb_request* %0) #0 {
  %2 = alloca %struct.adb_request*, align 8
  %3 = alloca %struct.adbdev_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.adb_request**, align 8
  store %struct.adb_request* %0, %struct.adb_request** %2, align 8
  %6 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %7 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %6, i32 0, i32 8
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.adbdev_state*
  store %struct.adbdev_state* %9, %struct.adbdev_state** %3, align 8
  %10 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %11 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %16 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %15, i32 0, i32 7
  store i64 0, i64* %16, align 8
  %17 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %18 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.adbdev_state*, %struct.adbdev_state** %3, align 8
  %21 = getelementptr inbounds %struct.adbdev_state, %struct.adbdev_state* %20, i32 0, i32 1
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.adbdev_state*, %struct.adbdev_state** %3, align 8
  %25 = getelementptr inbounds %struct.adbdev_state, %struct.adbdev_state* %24, i32 0, i32 5
  %26 = call i32 @atomic_dec(i32* %25)
  %27 = load %struct.adbdev_state*, %struct.adbdev_state** %3, align 8
  %28 = getelementptr inbounds %struct.adbdev_state, %struct.adbdev_state* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %19
  %32 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %33 = bitcast %struct.adb_request* %32 to %struct.adbdev_state*
  %34 = call i32 @kfree(%struct.adbdev_state* %33)
  %35 = load %struct.adbdev_state*, %struct.adbdev_state** %3, align 8
  %36 = getelementptr inbounds %struct.adbdev_state, %struct.adbdev_state* %35, i32 0, i32 5
  %37 = call i64 @atomic_read(i32* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load %struct.adbdev_state*, %struct.adbdev_state** %3, align 8
  %41 = getelementptr inbounds %struct.adbdev_state, %struct.adbdev_state* %40, i32 0, i32 1
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.adbdev_state*, %struct.adbdev_state** %3, align 8
  %45 = call i32 @kfree(%struct.adbdev_state* %44)
  br label %72

46:                                               ; preds = %31
  br label %67

47:                                               ; preds = %19
  %48 = load %struct.adbdev_state*, %struct.adbdev_state** %3, align 8
  %49 = getelementptr inbounds %struct.adbdev_state, %struct.adbdev_state* %48, i32 0, i32 4
  %50 = bitcast %struct.adbdev_state** %49 to %struct.adb_request**
  store %struct.adb_request** %50, %struct.adb_request*** %5, align 8
  br label %51

51:                                               ; preds = %55, %47
  %52 = load %struct.adb_request**, %struct.adb_request*** %5, align 8
  %53 = load %struct.adb_request*, %struct.adb_request** %52, align 8
  %54 = icmp ne %struct.adb_request* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load %struct.adb_request**, %struct.adb_request*** %5, align 8
  %57 = load %struct.adb_request*, %struct.adb_request** %56, align 8
  %58 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %57, i32 0, i32 3
  store %struct.adb_request** %58, %struct.adb_request*** %5, align 8
  br label %51

59:                                               ; preds = %51
  %60 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %61 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %60, i32 0, i32 3
  store %struct.adb_request* null, %struct.adb_request** %61, align 8
  %62 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %63 = load %struct.adb_request**, %struct.adb_request*** %5, align 8
  store %struct.adb_request* %62, %struct.adb_request** %63, align 8
  %64 = load %struct.adbdev_state*, %struct.adbdev_state** %3, align 8
  %65 = getelementptr inbounds %struct.adbdev_state, %struct.adbdev_state* %64, i32 0, i32 2
  %66 = call i32 @wake_up_interruptible(i32* %65)
  br label %67

67:                                               ; preds = %59, %46
  %68 = load %struct.adbdev_state*, %struct.adbdev_state** %3, align 8
  %69 = getelementptr inbounds %struct.adbdev_state, %struct.adbdev_state* %68, i32 0, i32 1
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  br label %72

72:                                               ; preds = %67, %39
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kfree(%struct.adbdev_state*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
