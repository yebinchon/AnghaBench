; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_hbm.c_ishtp_hbm_cl_flow_control_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_hbm.c_ishtp_hbm_cl_flow_control_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i32 }
%struct.ishtp_cl = type { i32, i32, i32, i64, i32, i32, i64, i64 }
%struct.ishtp_msg_hdr = type { i32 }
%struct.hbm_flow_control = type { i32 }

@ISHTP_FLOW_CONTROL_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ishtp_hbm_cl_flow_control_req(%struct.ishtp_device* %0, %struct.ishtp_cl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ishtp_device*, align 8
  %5 = alloca %struct.ishtp_cl*, align 8
  %6 = alloca %struct.ishtp_msg_hdr, align 4
  %7 = alloca %struct.hbm_flow_control, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ishtp_device* %0, %struct.ishtp_device** %4, align 8
  store %struct.ishtp_cl* %1, %struct.ishtp_cl** %5, align 8
  store i64 4, i64* %8, align 8
  %12 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %13 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %12, i32 0, i32 0
  %14 = load i64, i64* %10, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = call i32 @ishtp_hbm_hdr(%struct.ishtp_msg_hdr* %6, i64 4)
  %17 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %18 = load i32, i32* @ISHTP_FLOW_CONTROL_CMD, align 4
  %19 = call i32 @ishtp_hbm_cl_hdr(%struct.ishtp_cl* %17, i32 %18, %struct.hbm_flow_control* %7, i64 4)
  %20 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %21 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %26 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %25, i32 0, i32 0
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  store i32 0, i32* %3, align 4
  br label %83

29:                                               ; preds = %2
  %30 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %31 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %30, i32 0, i32 7
  store i64 0, i64* %31, align 8
  %32 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %33 = call i32 @ishtp_write_message(%struct.ishtp_device* %32, %struct.ishtp_msg_hdr* %6, %struct.hbm_flow_control* %7)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %72, label %36

36:                                               ; preds = %29
  %37 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %38 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %42 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = call i32 (...) @ktime_get()
  %46 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %47 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %49 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %36
  %53 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %54 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %57 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @ktime_sub(i32 %55, i64 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %62 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @ktime_after(i32 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %52
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %69 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %66, %52
  br label %71

71:                                               ; preds = %70, %36
  br label %77

72:                                               ; preds = %29
  %73 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %74 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %72, %71
  %78 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %79 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %78, i32 0, i32 0
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %77, %24
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ishtp_hbm_hdr(%struct.ishtp_msg_hdr*, i64) #1

declare dso_local i32 @ishtp_hbm_cl_hdr(%struct.ishtp_cl*, i32, %struct.hbm_flow_control*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ishtp_write_message(%struct.ishtp_device*, %struct.ishtp_msg_hdr*, %struct.hbm_flow_control*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_sub(i32, i64) #1

declare dso_local i64 @ktime_after(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
