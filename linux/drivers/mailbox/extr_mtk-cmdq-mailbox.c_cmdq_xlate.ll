; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mtk-cmdq-mailbox.c_cmdq_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mtk-cmdq-mailbox.c_cmdq_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { i64 }
%struct.mbox_controller = type { i32, %struct.mbox_chan* }
%struct.of_phandle_args = type { i32* }
%struct.cmdq_thread = type { i32, i32, %struct.mbox_chan* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbox_chan* (%struct.mbox_controller*, %struct.of_phandle_args*)* @cmdq_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbox_chan* @cmdq_xlate(%struct.mbox_controller* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca %struct.mbox_controller*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmdq_thread*, align 8
  store %struct.mbox_controller* %0, %struct.mbox_controller** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %8 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %9 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %15 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.mbox_chan* @ERR_PTR(i32 %20)
  store %struct.mbox_chan* %21, %struct.mbox_chan** %3, align 8
  br label %62

22:                                               ; preds = %2
  %23 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %24 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %23, i32 0, i32 1
  %25 = load %struct.mbox_chan*, %struct.mbox_chan** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %25, i64 %27
  %29 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.cmdq_thread*
  store %struct.cmdq_thread* %31, %struct.cmdq_thread** %7, align 8
  %32 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %33 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %38 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %40 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %47 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %49 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %48, i32 0, i32 1
  %50 = load %struct.mbox_chan*, %struct.mbox_chan** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %50, i64 %52
  %54 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %55 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %54, i32 0, i32 2
  store %struct.mbox_chan* %53, %struct.mbox_chan** %55, align 8
  %56 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %57 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %56, i32 0, i32 1
  %58 = load %struct.mbox_chan*, %struct.mbox_chan** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %58, i64 %60
  store %struct.mbox_chan* %61, %struct.mbox_chan** %3, align 8
  br label %62

62:                                               ; preds = %22, %18
  %63 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  ret %struct.mbox_chan* %63
}

declare dso_local %struct.mbox_chan* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
