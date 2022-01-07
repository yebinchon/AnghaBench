; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox.c_of_mbox_index_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox.c_of_mbox_index_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { i32 }
%struct.mbox_controller = type { i32, %struct.mbox_chan* }
%struct.of_phandle_args = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbox_chan* (%struct.mbox_controller*, %struct.of_phandle_args*)* @of_mbox_index_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbox_chan* @of_mbox_index_xlate(%struct.mbox_controller* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca %struct.mbox_controller*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca i32, align 4
  store %struct.mbox_controller* %0, %struct.mbox_controller** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %7 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %8 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %14 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.mbox_chan* @ERR_PTR(i32 %19)
  store %struct.mbox_chan* %20, %struct.mbox_chan** %3, align 8
  br label %28

21:                                               ; preds = %2
  %22 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %23 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %22, i32 0, i32 1
  %24 = load %struct.mbox_chan*, %struct.mbox_chan** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %24, i64 %26
  store %struct.mbox_chan* %27, %struct.mbox_chan** %3, align 8
  br label %28

28:                                               ; preds = %21, %17
  %29 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  ret %struct.mbox_chan* %29
}

declare dso_local %struct.mbox_chan* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
