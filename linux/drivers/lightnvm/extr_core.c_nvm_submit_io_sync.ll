; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_submit_io_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_submit_io_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_tgt_dev = type { i32, %struct.nvm_dev* }
%struct.nvm_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nvm_rq = type { i32, %struct.nvm_tgt_dev* }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvm_submit_io_sync(%struct.nvm_tgt_dev* %0, %struct.nvm_rq* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvm_tgt_dev*, align 8
  %6 = alloca %struct.nvm_rq*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nvm_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.nvm_tgt_dev* %0, %struct.nvm_tgt_dev** %5, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %5, align 8
  %11 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %10, i32 0, i32 1
  %12 = load %struct.nvm_dev*, %struct.nvm_dev** %11, align 8
  store %struct.nvm_dev* %12, %struct.nvm_dev** %8, align 8
  %13 = load %struct.nvm_dev*, %struct.nvm_dev** %8, align 8
  %14 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %40

22:                                               ; preds = %3
  %23 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %5, align 8
  %24 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %25 = call i32 @nvm_rq_tgt_to_dev(%struct.nvm_tgt_dev* %23, %struct.nvm_rq* %24)
  %26 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %5, align 8
  %27 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %28 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %27, i32 0, i32 1
  store %struct.nvm_tgt_dev* %26, %struct.nvm_tgt_dev** %28, align 8
  %29 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %5, align 8
  %30 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %29, i32 0, i32 0
  %31 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %32 = call i32 @nvm_set_flags(i32* %30, %struct.nvm_rq* %31)
  %33 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %34 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.nvm_dev*, %struct.nvm_dev** %8, align 8
  %36 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @nvm_submit_io_wait(%struct.nvm_dev* %35, %struct.nvm_rq* %36, i8* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %22, %19
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @nvm_rq_tgt_to_dev(%struct.nvm_tgt_dev*, %struct.nvm_rq*) #1

declare dso_local i32 @nvm_set_flags(i32*, %struct.nvm_rq*) #1

declare dso_local i32 @nvm_submit_io_wait(%struct.nvm_dev*, %struct.nvm_rq*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
