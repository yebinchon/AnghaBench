; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_submit_io_sync_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_submit_io_sync_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nvm_rq = type { i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvm_dev*, %struct.nvm_rq*)* @nvm_submit_io_sync_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvm_submit_io_sync_raw(%struct.nvm_dev* %0, %struct.nvm_rq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvm_dev*, align 8
  %5 = alloca %struct.nvm_rq*, align 8
  store %struct.nvm_dev* %0, %struct.nvm_dev** %4, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %5, align 8
  %6 = load %struct.nvm_dev*, %struct.nvm_dev** %4, align 8
  %7 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %27

15:                                               ; preds = %2
  %16 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %17 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load %struct.nvm_dev*, %struct.nvm_dev** %4, align 8
  %19 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %18, i32 0, i32 0
  %20 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %21 = call i32 @nvm_set_flags(i32* %19, %struct.nvm_rq* %20)
  %22 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %23 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.nvm_dev*, %struct.nvm_dev** %4, align 8
  %25 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %26 = call i32 @nvm_submit_io_wait(%struct.nvm_dev* %24, %struct.nvm_rq* %25, i32* null)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %15, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @nvm_set_flags(i32*, %struct.nvm_rq*) #1

declare dso_local i32 @nvm_submit_io_wait(%struct.nvm_dev*, %struct.nvm_rq*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
