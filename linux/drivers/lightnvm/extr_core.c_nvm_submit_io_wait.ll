; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_submit_io_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_submit_io_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.nvm_rq = type { i32*, i32 }

@wait = common dso_local global i32 0, align 4
@nvm_sync_end_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvm_dev*, %struct.nvm_rq*, i8*)* @nvm_submit_io_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvm_submit_io_wait(%struct.nvm_dev* %0, %struct.nvm_rq* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvm_dev*, align 8
  %6 = alloca %struct.nvm_rq*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.nvm_dev* %0, %struct.nvm_dev** %5, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @wait, align 4
  %10 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %9)
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @nvm_sync_end_io, align 4
  %12 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %13 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %15 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %14, i32 0, i32 0
  store i32* @wait, i32** %15, align 8
  %16 = load %struct.nvm_dev*, %struct.nvm_dev** %5, align 8
  %17 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.nvm_dev*, %struct.nvm_rq*, i8*)**
  %21 = load i32 (%struct.nvm_dev*, %struct.nvm_rq*, i8*)*, i32 (%struct.nvm_dev*, %struct.nvm_rq*, i8*)** %20, align 8
  %22 = load %struct.nvm_dev*, %struct.nvm_dev** %5, align 8
  %23 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 %21(%struct.nvm_dev* %22, %struct.nvm_rq* %23, i8* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %32

30:                                               ; preds = %3
  %31 = call i32 @wait_for_completion_io(i32* @wait)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @wait_for_completion_io(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
