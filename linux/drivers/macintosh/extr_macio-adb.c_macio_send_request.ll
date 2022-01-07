; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_macio-adb.c_macio_send_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_macio-adb.c_macio_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32, i64, %struct.adb_request*, i64, i64, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ADB_PACKET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@macio_lock = common dso_local global i32 0, align 4
@current_req = common dso_local global %struct.adb_request* null, align 8
@last_req = common dso_local global %struct.adb_request* null, align 8
@adb = common dso_local global %struct.TYPE_4__* null, align 8
@TAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adb_request*, i32)* @macio_send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macio_send_request(%struct.adb_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adb_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.adb_request* %0, %struct.adb_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %9 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ADB_PACKET, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %94

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %41, %18
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %22 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %19
  %27 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %28 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %27, i32 0, i32 5
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %36 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  br label %41

41:                                               ; preds = %26
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %19

44:                                               ; preds = %19
  %45 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %46 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %50 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %49, i32 0, i32 2
  store %struct.adb_request* null, %struct.adb_request** %50, align 8
  %51 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %52 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %54 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %56 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @spin_lock_irqsave(i32* @macio_lock, i64 %57)
  %59 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  %60 = icmp ne %struct.adb_request* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %44
  %62 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %63 = load %struct.adb_request*, %struct.adb_request** @last_req, align 8
  %64 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %63, i32 0, i32 2
  store %struct.adb_request* %62, %struct.adb_request** %64, align 8
  %65 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  store %struct.adb_request* %65, %struct.adb_request** @last_req, align 8
  br label %78

66:                                               ; preds = %44
  %67 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  store %struct.adb_request* %67, %struct.adb_request** @last_req, align 8
  store %struct.adb_request* %67, %struct.adb_request** @current_req, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @adb, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @adb, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = call i32 @in_8(i32* %73)
  %75 = load i32, i32* @TAR, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @out_8(i32* %70, i32 %76)
  br label %78

78:                                               ; preds = %66, %61
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* @macio_lock, i64 %79)
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %90, %83
  %85 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %86 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  %89 = xor i1 %88, true
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = call i32 (...) @macio_adb_poll()
  br label %84

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %78
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %15
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @out_8(i32*, i32) #1

declare dso_local i32 @in_8(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @macio_adb_poll(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
