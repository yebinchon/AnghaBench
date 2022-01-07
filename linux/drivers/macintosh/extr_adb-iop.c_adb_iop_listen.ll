; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_adb-iop.c_adb_iop_listen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_adb-iop.c_adb_iop_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32, i32* }
%struct.iop_msg = type { i32*, i64* }
%struct.adb_iopmsg = type { i32, i32, i64, i64* }

@current_req = common dso_local global %struct.adb_request* null, align 8
@ADB_IOP_TIMEOUT = common dso_local global i32 0, align 4
@ADB_IOP_AUTOPOLL = common dso_local global i32 0, align 4
@adb_iop_state = common dso_local global i64 0, align 8
@idle = common dso_local global i64 0, align 8
@awaiting_reply = common dso_local global i64 0, align 8
@ADB_IOP_EXPLICIT = common dso_local global i32 0, align 4
@IOP_MSG_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iop_msg*)* @adb_iop_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adb_iop_listen(%struct.iop_msg* %0) #0 {
  %2 = alloca %struct.iop_msg*, align 8
  %3 = alloca %struct.adb_iopmsg*, align 8
  %4 = alloca %struct.adb_request*, align 8
  %5 = alloca i64, align 8
  store %struct.iop_msg* %0, %struct.iop_msg** %2, align 8
  %6 = load %struct.iop_msg*, %struct.iop_msg** %2, align 8
  %7 = getelementptr inbounds %struct.iop_msg, %struct.iop_msg* %6, i32 0, i32 1
  %8 = load i64*, i64** %7, align 8
  %9 = bitcast i64* %8 to %struct.adb_iopmsg*
  store %struct.adb_iopmsg* %9, %struct.adb_iopmsg** %3, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  store %struct.adb_request* %12, %struct.adb_request** %4, align 8
  %13 = load %struct.adb_iopmsg*, %struct.adb_iopmsg** %3, align 8
  %14 = getelementptr inbounds %struct.adb_iopmsg, %struct.adb_iopmsg* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ADB_IOP_TIMEOUT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %1
  %20 = load i32, i32* @ADB_IOP_TIMEOUT, align 4
  %21 = load i32, i32* @ADB_IOP_AUTOPOLL, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.iop_msg*, %struct.iop_msg** %2, align 8
  %24 = getelementptr inbounds %struct.iop_msg, %struct.iop_msg* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %22, i32* %26, align 4
  %27 = load %struct.iop_msg*, %struct.iop_msg** %2, align 8
  %28 = getelementptr inbounds %struct.iop_msg, %struct.iop_msg* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.iop_msg*, %struct.iop_msg** %2, align 8
  %32 = getelementptr inbounds %struct.iop_msg, %struct.iop_msg* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 0, i32* %34, align 4
  %35 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %36 = icmp ne %struct.adb_request* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %19
  %38 = load i64, i64* @adb_iop_state, align 8
  %39 = load i64, i64* @idle, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %43 = load i64, i64* @idle, align 8
  %44 = call i32 @adb_iop_end_req(%struct.adb_request* %42, i64 %43)
  br label %45

45:                                               ; preds = %41, %37, %19
  br label %95

46:                                               ; preds = %1
  %47 = load i64, i64* @adb_iop_state, align 8
  %48 = load i64, i64* @awaiting_reply, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = load %struct.adb_iopmsg*, %struct.adb_iopmsg** %3, align 8
  %52 = getelementptr inbounds %struct.adb_iopmsg, %struct.adb_iopmsg* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ADB_IOP_EXPLICIT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %50
  %58 = load %struct.adb_iopmsg*, %struct.adb_iopmsg** %3, align 8
  %59 = getelementptr inbounds %struct.adb_iopmsg, %struct.adb_iopmsg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  %62 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %63 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %65 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.adb_iopmsg*, %struct.adb_iopmsg** %3, align 8
  %68 = getelementptr inbounds %struct.adb_iopmsg, %struct.adb_iopmsg* %67, i32 0, i32 2
  %69 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %70 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @memcpy(i32* %66, i64* %68, i32 %71)
  br label %86

73:                                               ; preds = %50, %46
  %74 = load %struct.adb_iopmsg*, %struct.adb_iopmsg** %3, align 8
  %75 = getelementptr inbounds %struct.adb_iopmsg, %struct.adb_iopmsg* %74, i32 0, i32 2
  %76 = load %struct.adb_iopmsg*, %struct.adb_iopmsg** %3, align 8
  %77 = getelementptr inbounds %struct.adb_iopmsg, %struct.adb_iopmsg* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  %80 = load %struct.adb_iopmsg*, %struct.adb_iopmsg** %3, align 8
  %81 = getelementptr inbounds %struct.adb_iopmsg, %struct.adb_iopmsg* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ADB_IOP_AUTOPOLL, align 4
  %84 = and i32 %82, %83
  %85 = call i32 @adb_input(i64* %75, i32 %79, i32 %84)
  br label %86

86:                                               ; preds = %73, %57
  %87 = load %struct.iop_msg*, %struct.iop_msg** %2, align 8
  %88 = getelementptr inbounds %struct.iop_msg, %struct.iop_msg* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.iop_msg*, %struct.iop_msg** %2, align 8
  %91 = getelementptr inbounds %struct.iop_msg, %struct.iop_msg* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* @IOP_MSG_LEN, align 4
  %94 = call i32 @memcpy(i32* %89, i64* %92, i32 %93)
  br label %95

95:                                               ; preds = %86, %45
  %96 = load %struct.iop_msg*, %struct.iop_msg** %2, align 8
  %97 = call i32 @iop_complete_message(%struct.iop_msg* %96)
  %98 = load i64, i64* %5, align 8
  %99 = call i32 @local_irq_restore(i64 %98)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @adb_iop_end_req(%struct.adb_request*, i64) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @adb_input(i64*, i32, i32) #1

declare dso_local i32 @iop_complete_message(%struct.iop_msg*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
