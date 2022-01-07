; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_ctxt_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_ctxt_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { %struct.send_context*, %struct.hfi1_devdata* }
%struct.send_context = type { i32, i32 }
%struct.hfi1_devdata = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SCF_HALTED = common dso_local global i32 0, align 4
@SEND_CTXT_HALT_TIMEOUT = common dso_local global i32 0, align 4
@ENOLCK = common dso_local global i32 0, align 4
@SCF_FROZEN = common dso_local global i32 0, align 4
@HFI1_FROZEN = common dso_local global i32 0, align 4
@HFI1_FORCED_FREEZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_CTXT_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_ctxtdata*)* @ctxt_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctxt_reset(%struct.hfi1_ctxtdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_ctxtdata*, align 8
  %4 = alloca %struct.send_context*, align 8
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i32, align 4
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %8 = icmp ne %struct.hfi1_ctxtdata* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %11 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %10, i32 0, i32 1
  %12 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %11, align 8
  %13 = icmp ne %struct.hfi1_devdata* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %16 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %15, i32 0, i32 0
  %17 = load %struct.send_context*, %struct.send_context** %16, align 8
  %18 = icmp ne %struct.send_context* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14, %9, %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %111

22:                                               ; preds = %14
  %23 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %24 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %23, i32 0, i32 1
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %24, align 8
  store %struct.hfi1_devdata* %25, %struct.hfi1_devdata** %5, align 8
  %26 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %27 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %26, i32 0, i32 0
  %28 = load %struct.send_context*, %struct.send_context** %27, align 8
  store %struct.send_context* %28, %struct.send_context** %4, align 8
  %29 = load %struct.send_context*, %struct.send_context** %4, align 8
  %30 = getelementptr inbounds %struct.send_context, %struct.send_context* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.send_context*, %struct.send_context** %4, align 8
  %33 = getelementptr inbounds %struct.send_context, %struct.send_context* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SCF_HALTED, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @SEND_CTXT_HALT_TIMEOUT, align 4
  %38 = call i32 @msecs_to_jiffies(i32 %37)
  %39 = call i32 @wait_event_interruptible_timeout(i32 %31, i32 %36, i32 %38)
  %40 = load %struct.send_context*, %struct.send_context** %4, align 8
  %41 = getelementptr inbounds %struct.send_context, %struct.send_context* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SCF_HALTED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %22
  %47 = load i32, i32* @ENOLCK, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %111

49:                                               ; preds = %22
  %50 = load %struct.send_context*, %struct.send_context** %4, align 8
  %51 = getelementptr inbounds %struct.send_context, %struct.send_context* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SCF_FROZEN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %100

56:                                               ; preds = %49
  %57 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %58 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %61 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @READ_ONCE(i32 %62)
  %64 = load i32, i32* @HFI1_FROZEN, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* @SEND_CTXT_HALT_TIMEOUT, align 4
  %70 = call i32 @msecs_to_jiffies(i32 %69)
  %71 = call i32 @wait_event_interruptible_timeout(i32 %59, i32 %68, i32 %70)
  %72 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %73 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @HFI1_FROZEN, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %56
  %79 = load i32, i32* @ENOLCK, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %111

81:                                               ; preds = %56
  %82 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %83 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @HFI1_FORCED_FREEZE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %111

91:                                               ; preds = %81
  %92 = load %struct.send_context*, %struct.send_context** %4, align 8
  %93 = call i32 @sc_disable(%struct.send_context* %92)
  %94 = load %struct.send_context*, %struct.send_context** %4, align 8
  %95 = call i32 @sc_enable(%struct.send_context* %94)
  store i32 %95, i32* %6, align 4
  %96 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %97 = load i32, i32* @HFI1_RCVCTRL_CTXT_ENB, align 4
  %98 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %99 = call i32 @hfi1_rcvctrl(%struct.hfi1_devdata* %96, i32 %97, %struct.hfi1_ctxtdata* %98)
  br label %103

100:                                              ; preds = %49
  %101 = load %struct.send_context*, %struct.send_context** %4, align 8
  %102 = call i32 @sc_restart(%struct.send_context* %101)
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %100, %91
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load %struct.send_context*, %struct.send_context** %4, align 8
  %108 = call i32 @sc_return_credits(%struct.send_context* %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %109, %88, %78, %46, %19
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @sc_disable(%struct.send_context*) #1

declare dso_local i32 @sc_enable(%struct.send_context*) #1

declare dso_local i32 @hfi1_rcvctrl(%struct.hfi1_devdata*, i32, %struct.hfi1_ctxtdata*) #1

declare dso_local i32 @sc_restart(%struct.send_context*) #1

declare dso_local i32 @sc_return_credits(%struct.send_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
